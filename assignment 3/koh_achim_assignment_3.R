setwd("assignment 3/")
sp <- read.table("sp_final.csv", header=TRUE, sep=";")

# subset the data by choosing users that have above 100 photos
minimumcount <- 60
sp.countperuser <- as.data.frame(table(sp$username))
sp.users <- sp.countperuser[which(sp.countperuser$Freq > minimumcount) , 1]
sp.selected <- sp[which(sp$user %in% sp.users),]
sp.selected <- sp.selected[which(sp.selected$type == 'image'),]

# drop the non-used factors so we can compute faster
sp.selected$id <- factor(sp.selected$id)
sp.selected$UTS_time <- factor(sp.selected$UTS_time)
sp.selected$username <- factor(sp.selected$username)
sp.selected$URL <- factor(sp.selected$URL)
sp.selected$tags <- factor(sp.selected$tags)
sp.selected$local_time <- factor(sp.selected$local_time)
sp.users <- factor(sp.users)

# if lat-lon variance (measured by standard distance) is low, drop user
# more on standard distance: http://www.r-bloggers.com/introductory-point-pattern-analysis-of-open-crime-data-in-london/
# https://books.google.com/books?id=2BkPNJ5ZNEAC

sp.geo <- data.frame(aggregate(lat ~ username, sp.selected, FUN=mean), aggregate(lon ~ username, sp.selected, FUN=mean)[2], aggregate(lat ~ username, sp.selected, FUN=sd)[2], aggregate(lon ~ username, sp.selected, FUN=sd)[2])
for (i in 1:length(sp.users)) {
	u <- sp.selected[which(sp.selected$username == sp.users[i]), ]
	sp.geo[i, 6] <- sqrt( (sum( (u$lat - sp.geo[i,2])^2 ) + sum( (u$lon - sp.geo[i,3])^2 )) / (nrow(u)-1) )
	}	
colnames(sp.geo) <- c("username", "mean_lat", "mean_lon", "sd_lat", "sd_lon", "standard_distance")

# select 80 users who move around the most. the assumption is that accounts that stay in one place will be more likely to be business accounts
usercount <- 80
sp.geo <- sp.geo[order(sp.geo$standard_distance, decreasing=TRUE),][1:usercount,]

# add variable: if photos are posted on same date, group & connect them. line shows movement within a single day
library(lubridate)
sp.selected$local_date <- date(sp.selected$local_time)

# plot & grid
library(ggplot2)
library(gridExtra)
	
p <- list()
for (i in 1:nrow(sp.geo)) { 
	u <- sp.selected[which(sp.selected$username == sp.geo[i,1]), ]
	v <- u[order(u$local_time), ]
	p[[i]] <- ggplot(v, aes(x=lon, y=lat, colour=local_hour, group=local_date)) + theme_void() + geom_path(size=0.5, alpha=0.5) + geom_point(size=1, alpha=0.8) + scale_colour_gradientn(colours=c("red", "green", "yellow", "red")) + coord_fixed(ratio=1) + lims(x=c(30.13, 30.42), y=c(59.77, 60.06)) + theme(legend.position = "none")
	}
# visualize on screen
do.call(grid.arrange, c(p, ncol=10))
# coord_fixed and lims are used so that all points are plotted on the same coordinate system

# axis.title.x=element_text(size=6) ... + xlab(round(sp.geo[i,6]*1000, 2)) <- for seeing what standard distance values are

# save to pdf, background is set to white
g <- do.call(arrangeGrob, c(p, ncol=10))
ggsave("grid.pdf", g, width=10, height=10)

# save to png, with customizable background
png("grid.png", width=4000, height=4000, bg="#202020")
	do.call(grid.arrange, c(p, ncol=10))
dev.off()

# draw each day of the week as separate colors (instead of hour)
p <- list()
for (i in 1:nrow(sp.geo)) { 
	u <- sp.selected[which(sp.selected$username == sp.geo[i,1]), ]
	v <- u[order(u$local_time), ]
	p[[i]] <- ggplot(v, aes(x=lon, y=lat, colour=local_wday, group=local_date)) + theme_void() + geom_path(size=0.5) + geom_point(size=1, alpha=0.8) + scale_colour_gradientn(colours=rainbow(7)) + coord_fixed(ratio=1) + lims(x=c(30.13, 30.42), y=c(59.77, 60.06)) + theme(legend.position = "none")
	}
png(paste("weekday_as_color.png", sep=""), width=4000, height=4000, bg="#202020")
	do.call(grid.arrange, c(p, ncol=10))
dev.off()

# make separate file for each day of the week
for (j in 1:7) {
	q <- list()	
	for (i in 1:nrow(sp.geo)) { 
		u <- sp.selected[which(sp.selected$username == sp.geo[i,1] & sp.selected$local_wday == j), ]
		v <- u[order(u$local_time), ]
		q[[i]] <- ggplot(v, aes(x=lon, y=lat, colour=local_hour, group=local_date)) + theme_void() + geom_path(size=0.5, alpha=0.5) + geom_point(size=1, alpha=0.8) + scale_colour_gradientn(colours=c("red", "green", "yellow", "red")) + coord_fixed(ratio=1) + lims(x=c(30.13, 30.42), y=c(59.77, 60.06)) + theme(legend.position = "none")
		}
	png(paste(j, "day.png", sep=""), width=4000, height=4000, bg="#202020")
		do.call(grid.arrange, c(q, ncol=10))
	dev.off()
	}

# ------------------------------------------------------------------
# The code below is my attempt at text mining, maybe i can use tags to group users with text clustering methods? 
# Still in process. I have to figure out how I would use such information. 
# ------------------------------------------------------------------
# make use of tags?
library(tm)
sp.tags <- sp[c(5,8)]
sp.tags_selected <- sp.selected[c(5,8)]
# sp.tu <- aggregate(tags ~ username, sp.tags, FUN=function(x) paste(x, collapse=''))
sp.tus <- aggregate(tags ~ username, sp.tags_selected, FUN=function(x) paste0(unlist(strsplit(paste(x, collapse=','), ',+')), collapse=' '))
sp.tus <- sp.tus[which(nchar(sp.tus$tags) > 0),]
sp.scorpus <- Corpus(VectorSource(sp.tus$tags))
sp.dtm <- DocumentTermMatrix(sp.scorpus)

# find what are the most frequently used tags
term.freq <- rowSums(as.matrix(sp.dtm))
term.freq <- subset(term.freq, term.freq >= 200)
df <- data.frame(term = names(term.freq), freq=term.freq)
ggplot(df, aes(term, freq)) + geom_bar(stat="identity") + coord_flip()

stp <- findFreqTerms(sp.dtm, lowfreq=1000) # most common tags are "spb", "питер" and "спб". makes sense since this is st.petersburg
stp_users <- grepl(paste(stp, collapse="|"), sp.tus$tags)
sp.tus$username[stp_users] # will show all users that tagged "spb", "питер" or "спб" at least once. but does this mean something?
sp.tus$username[!stp_users] # users that don't use those tags

# prepare data for clustering
sp.tfidf <- weightTfIdf(sp.dtm)
m <- as.matrix(sp.tfidf)
# m <- as.matrix(sp.dtm)
d <- dist(d)
norm_eucl <- function(m)
	m/apply(m, 1, function(x) sum(x^2)^.5)
m_norm <- norm_eucl(m)

# text clustering tutorial: https://eight2late.wordpress.com/2015/07/22/a-gentle-introduction-to-cluster-analysis-using-r/
# hierarchical clustering
groups <- hclust(d,method='ward.D')
plot(groups, hang=-1)
rect.hclust(groups,3)

# k-means clustering
kfit <- kmeans(d, 4, nstart=100)
table(kfit$cluster)

for (i in 1:nrow(sp.tus)) { 
	if (kfit$cluster[i] == as.data.frame(sort(table(kfit$cluster)))[1,1]) {
		print(as.character(sp.tus$username[i]))
		}
	if (kfit$cluster[i] == as.data.frame(sort(table(kfit$cluster)))[1,2]) {
		print(as.character(sp.tus$username[i]))
		}
	}

library(cluster)
clusplot(d, kfit$cluster, diss=T, color=T, shade=T, labels=2, lines=0)

# elbow method
wss <- 2:29
for (i in 2:29) wss[i] <- sum(kmeans(d,centers=i,nstart=25)$withinss)
plot(2:29, wss[2:29], type='b', xlab='Number of Clusters',ylab='Within groups sum of squares')