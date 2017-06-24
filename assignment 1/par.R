gogh$Title[which(gogh$Season == 'spring' & gogh$Label_Place == '5_Auvers-sur-Oise'),]
gogh[ which(gogh$Season== 'spring' & gogh$Label_Place == '5_Auvers-sur-Oise'), ]
gogh[ which(gogh$Season== 'spring' & gogh$Label_Place == '5_Auvers-sur-Oise'), ]$Title
gogh[ which(gogh$Season== 'summer' & gogh$Label_Place == '5_Auvers-sur-Oise'), ]$Title
slp
library()
packages.install()
install.packages("tm")
ls
ls
ls()
slp
tolower
gogh[ which(gogh$Season== 'summer' & gogh$Label_Place == '5_Auvers-sur-Oise'), ]$Title[1]
gogh[ which(gogh$Season== 'summer' & gogh$Label_Place == '5_Auvers-sur-Oise'), ]$Title
mode
mode(gogh[ which(gogh$Season== 'summer' & gogh$Label_Place == '5_Auvers-sur-Oise'), ]$Title[2])
temp.title <- gogh[ which(gogh$Season== 'summer' & gogh$Label_Place == '5_Auvers-sur-Oise'), ]$Title[2]
temp.title
mode(temp.title)
print temp.title
as.string
as.character(gogh[ which(gogh$Season== 'summer' & gogh$Label_Place == '5_Auvers-sur-Oise'), ]$Title[2])
mode(as.character(gogh[ which(gogh$Season== 'summer' & gogh$Label_Place == '5_Auvers-sur-Oise'), ]$Title[2]))
mode(as.character(gogh[ which(gogh$Season== 'summer' & gogh$Label_Place == '5_Auvers-sur-Oise'), ]$Title))
as.character(gogh[ which(gogh$Season== 'summer' & gogh$Label_Place == '5_Auvers-sur-Oise'), ]$Title)
as.character(gogh[ which(gogh$Season== 'summer' & gogh$Label_Place == '5_Auvers-sur-Oise'), ]$Title)
c(as.character(gogh[ which(gogh$Season== 'summer' & gogh$Label_Place == '5_Auvers-sur-Oise'), ]$Title))
toString
toString(gogh[ which(gogh$Season== 'summer' & gogh$Label_Place == '5_Auvers-sur-Oise'), ]$Title)
slp
slp$Titles[1] <- toString(gogh[ which(gogh$Season == slp$Season & gogh$Label_Place == slp$Label_Place), ]$Title)
gogh[ which(gogh$Season == slp$Season & gogh$Label_Place == slp$Label_Place), ]
toString(gogh[ which(gogh$Season== 'summer' & gogh$Label_Place == '5_Auvers-sur-Oise'), ]$Title)
slp
slp$Titles[1]
length(slp)
slp
rows
row
row(slp)
rownames
rownames(slp)
len(slp,)
slp
1%4
1 % 4
1 %% 4
2 %% 4
for (i in 1:20) {
i %% 4
}
print(i %% 4
)
for (i in 1:20) print(i %% 4)
for (i in 1:20) print((i %% 4) + 1)
print(slp$Label_Place)
as.character(slp$Label_Place)
slp$Titles[i] <- toString(gogh[ which(gogh$Season == switch((i%%4)+1, "spring", "summer", "winter", "fall") & gogh$Label_Place == switch(((j%%5)+1), "1_Early", "2_Paris", "3_Arles", "4_Saint-Remy-de-Provence_asylum", "5_Auvers-sur-Oise")),]$Title)
if (i % 4 == 0) {
j <- j + 1
}for (i in 1:20) {
for (i in 1:20) {
slp$Titles[i] <- toString(gogh[ which(gogh$Season == switch((i%%4)+1, "spring", "summer", "winter", "fall") & gogh$Label_Place == switch(((j%%5)+1), "1_Early", "2_Paris", "3_Arles", "4_Saint-Remy-de-Provence_asylum", "5_Auvers-sur-Oise")),]$Title)
if (i % 4 == 0) {
for (i in 1:20) {
slp$Titles[i] <- toString(gogh[ which(gogh$Season == switch((i%%4)+1, "spring", "summer", "winter", "fall") & gogh$Label_Place == switch(((j%%5)+1), "1_Early", "2_Paris", "3_Arles", "4_Saint-Remy-de-Provence_asylum", "5_Auvers-sur-Oise")),]$Title)
if (i % 4 == 0) j <- j + 1
i
j
j = 1
if (i %% 4 == 0) j <- j + 1
i
j
j - 1
j = 1
for (i in 1:20) {
slp$Titles[i] <- toString(gogh[ which(gogh$Season == switch((i%%4)+1, "spring", "summer", "winter", "fall") & gogh$Label_Place == switch(((j%%5)+1), "1_Early", "2_Paris", "3_Arles", "4_Saint-Remy-de-Provence_asylum", "5_Auvers-sur-Oise")),]$Title)
if (i %% 4 == 0) j <- j + 1
}
slp$Titles
slp
slp[14]
i = 1
j = 1
toString(gogh[ which(gogh$Season == switch((i%%4)+1, "spring", "summer", "winter", "fall") & gogh$Label_Place == switch(((j%%5)+1), "2_Paris", "3_Arles", "4_Saint-Remy-de-Provence_asylum", "5_Auvers-sur-Oise", "1_Early")),]$Title)
i = 2
toString(gogh[ which(gogh$Season == switch((i%%4)+1, "spring", "summer", "winter", "fall") & gogh$Label_Place == switch(((j%%5)+1), "2_Paris", "3_Arles", "4_Saint-Remy-de-Provence_asylum", "5_Auvers-sur-Oise", "1_Early")),]$Title)
slp$Titles
slp$Season
i <- 1
j <- 1
for (i in 1:20) {
slp$Titles[i] <- toString(gogh[ which(gogh$Season == switch((i%%4)+1, "spring", "summer", "winter", "fall") & gogh$Label_Place == switch(((j%%5)+1), "2_Paris", "3_Arles", "4_Saint-Remy-de-Provence_asylum", "5_Auvers-sur-Oise", "1_Early")),]$Title)
if (i %% 4 == 0) j <- j + 1
}
slp
slp$Titles[20]
slp <- subset(slp, select=-c(Titles))
slp
i <- 1
j <- 1
switch((i%%4)+1, "spring", "summer", "winter", "fall")
switch((i%%4)+1, "winter", "fall", "spring", "summer")
i += 1
i <- i + 1
i
switch((i%%4)+1, "winter", "fall", "spring", "summer")
i <- 3
switch((i%%4)+1, "winter", "fall", "spring", "summer")
i <- 4
switch((i%%4)+1, "winter", "fall", "spring", "summer")
i <- 5
switch((i%%4)+1, "winter", "fall", "spring", "summer")
j
switch((j%%5)+1), "5_Auvers-sur-Oise", "1_Early", "2_Paris", "3_Arles", "4_Saint-Remy-de-Provence_asylum")
switch((j%%5)+1, "5_Auvers-sur-Oise", "1_Early", "2_Paris", "3_Arles", "4_Saint-Remy-de-Provence_asylum")
j <- 2
switch((j%%5)+1, "5_Auvers-sur-Oise", "1_Early", "2_Paris", "3_Arles", "4_Saint-Remy-de-Provence_asylum")
j <- 3
switch((j%%5)+1, "5_Auvers-sur-Oise", "1_Early", "2_Paris", "3_Arles", "4_Saint-Remy-de-Provence_asylum")
j<-4
switch((j%%5)+1, "5_Auvers-sur-Oise", "1_Early", "2_Paris", "3_Arles", "4_Saint-Remy-de-Provence_asylum")
j<-5
switch((j%%5)+1, "5_Auvers-sur-Oise", "1_Early", "2_Paris", "3_Arles", "4_Saint-Remy-de-Provence_asylum")
j<-6
switch((j%%5)+1, "5_Auvers-sur-Oise", "1_Early", "2_Paris", "3_Arles", "4_Saint-Remy-de-Provence_asylum")
j<-20
switch((j%%5)+1, "5_Auvers-sur-Oise", "1_Early", "2_Paris", "3_Arles", "4_Saint-Remy-de-Provence_asylum")
i<-20
switch((i%%4)+1, "winter", "fall", "spring", "summer")
slp$Titles
slp$Titles[1] <- ""
slp
slp <- subset(slp, select=-c(Titles))
slp
j<-1
i<-1
for (i in 1:20) {
slp$Titles[i] <- toString(gogh[ which(gogh$Season == switch((i%%4)+1, "winter", "fall", "spring", "summer") & gogh$Label_Place == switch((j%%5)+1, "5_Auvers-sur-Oise", "1_Early", "2_Paris", "3_Arles", "4_Saint-Remy-de-Provence_asylum"),]$Title)
for (i in 1:20) {
slp$Titles[i] <- toString(gogh[ which(gogh$Season == switch((i%%4)+1, "winter", "fall", "spring", "summer") & gogh$Label_Place == switch((j%%5)+1, "5_Auvers-sur-Oise", "1_Early", "2_Paris", "3_Arles", "4_Saint-Remy-de-Provence_asylum")), ]$Title)
i
j
for (i in 1:20) {
slp$Titles[i] <- toString(gogh[ which(gogh$Season == switch((i%%4)+1, "winter", "fall", "spring", "summer") & gogh$Label_Place == switch((j%%5)+1, "5_Auvers-sur-Oise", "1_Early", "2_Paris", "3_Arles", "4_Saint-Remy-de-Provence_asylum")), ]$Title)
if (i %% 4 == 0) j <- j + 1
}
slp
slp$Titles
as.string
as.character(slp$Titles)
toString(slp$Titles)
tails(slp)
tail(slp)
islower
is.lower
isLower
slp[1]
slp[1,]
slp$Titles[1]

library(tm)
temp <- tm_map(slp$Titles[1], removePunctuation)
docs <- Corpus(slp$Titles)
docs <- Corpus(Dirsource(slp$Titles))
docs <- Corpus(DirSource(slp$Titles))
Corpus
docs <- Corpus(Source(slp$Titles))
slp$Titles[1]
temp <- slp$Titles[1]
temp
temp.char <- temp
temp.list <- strsplit(temp, "\\W+", perl=TRUE)
temp.list
temp.vect <- unlist(temp.list)
temp.vect
table(temp.vect)
temp.list
length(temp.vect)
for (i in length(temp.vect)) print(i)
for (i in 1:length(temp.vect)) print(i)
length(temp.vect)
vect[which()]
temp.vect[which()]
for (i in 1:length(temp.vect)) {
slp
slp$Titles
docs <- DataframeSource(slp)
docs
summary(docs)
docs <- Corpus(DataframeSource(slp))
docs
docs <- Corpus(DataframeSource(slp$Titles))
docs <- Corpus(DataframeSource(slp))
docs
summary(docs)
docs[1]
inspect(docs[1])
ls
docs
slp$Titles
mode(slp$Titles)
titles <- data.frame(slp$Titles)
titles
docs <- Corpus(DataframeSource(titles))
docs
inspect(docs[1])
inspect(docs)
docs <- tm_map(docs, removeWords, stopwords("english"))   
docs
summary(docs)
inspect(docs)
inspect(docs[3])
dtm <- DocumentTermMatrix(docs)
dtm
inspect(dtm)
docs <- tm_map(docs, removePunctuation)
dtm <- DocumentTermMatrix(docs)
inspect(dtm)
slp
temp.list
ls
temp.vect
which
temp.vect
temp.vect[1]
temp.vect[2]
letters
upper.tri
upper.tri()
upper.tri('a')
up
up <- toupper(letters)
up
temp.vect[331][1]
temp.vect[331]
temp.vect[331][1:1]
substr(temp.vect[331], 1, 1)
substr(temp.vect[331], 1, 1) in up
substr(temp.vect[331], 1, 1) %in% up
substr(temp.vect[332], 1, 1) %in% up
substr(temp.vect[332], 1, 1) %in% letters
substr(temp.vect[331], 1, 1) %in% letters
letters
which(is.element(letters))
which(is.element(substr(temp.vect, 1, 1), letters))
temp.vect[2]
temp.vect[5]
temp.vect[11]
temp.vect[10]
temp.vect[326]
temp.vect(!which(is.element(substr(temp.vect, 1, 1), letters)))
temp.vect
temp.vect[which(is.element(substr(temp.vect, 1, 1), letters))]
temp.vect[!which(is.element(substr(temp.vect, 1, 1), letters))]
temp.vect[-which(is.element(substr(temp.vect, 1, 1), letters))]
temp.vect[-which(is.element(temp.vect), c("L", "La", "The", "A")))]
temp.vect[-which(is.element(temp.vect), c("L", "La", "The", "A"))]
temp.vect[-which(is.element(temp.vect), c("L", "La", "The", "A"))]
temp.vect[-which(is.element(temp.vect, c("L", "La", "The", "A")))]
temp.vect[which(is.element(temp.vect, c("L", "La", "The", "A")))]
temp.vect[which(is.element(temp.vect, c("L", "La", "The", "A", letters)))]
temp.vect[which(is.element(temp.vect, c("L", "La", "The", "A") + letters))]
temp.vect[which(is.element(temp.vect, c("L", "La", "The", "A")))]
temp.vect <- temp.vect[-which(is.element(substr(temp.vect, 1, 1), letters))]
temp.vect <- temp.vect[-which(is.element(temp.vect, c("L", "La", "The", "A")))]
temp.vect
table(temp.vect)
sort(table(temp.vect), decreasing=TRUE)
names(sort(table(temp.vect), decreasing=TRUE)
)
sort(table(temp.vect), decreasing=TRUE)[1:49]
sort(table(temp.vect), decreasing=TRUE)[which(temp.vect > 1)
]
sort(table(temp.vect), decreasing=TRUE)[which(table(temp.vect) > 1)]
sort(table(temp.vect), decreasing=TRUE)
temp.vect
table(temp.vect)
tab
table(temp.vect)[which(table(temp.vect) > 1)]
sort(table(temp.vect)[which(table(temp.vect) > 1)])
sort(table(temp.vect)[which(table(temp.vect) > 1)], decreasing=TRUE)
install.packages(wordcloud)
install.packages('wordcloud')
sort(table(temp.vect)[which(table(temp.vect) > 1)], decreasing=TRUE)
temp.vect
wordcloud(temp.vect, min.freq=2)
library(wordcloud)
wordcloud(temp.vect, min.freq=2)
wordcloud(temp.vect, min.freq=2, rotate90=FALSE)
warnings90
warnings()
wordcloud(temp.vect, min.freq=2, rot.per=0)
wordcloud(temp.vect, min.freq=2, rot.per=0)
wordcloud(temp.vect, min.freq=2, rot.per=100)
wordcloud(temp.vect, min.freq=2, rot.per=10)
wordcloud(temp.vect, min.freq=2, rot.per=0.5)
wordcloud(temp.vect, min.freq=2, rot.per=0.1)
wordcloud(temp.vect, min.freq=2, rot.per=0)
wordcloud(temp.vect, min.freq=2, rot.per=0, colors=TURE)
wordcloud(temp.vect, min.freq=2, rot.per=0, colors=TRUE)
wordcloud(temp.vect, min.freq=2, rot.per=0, colors="black")
wordcloud(temp.vect, min.freq=2, rot.per=0, colors="red")
wordcloud(temp.vect, min.freq=2, rot.per=0)
wordcloud(temp.vect, min.freq=2, rot.per=0, strheight=10, strwidth=20)
warnings()
wordcloud(temp.vect, min.freq=2, rot.per=0, x=10, y= 200)
wordcloud(temp.vect, min.freq=2, rot.per=0, cex=20)
wordcloud(temp.vect, min.freq=2, rot.per=0, size=20)
wordcloud(temp.vect, min.freq=2, rot.per=0)
wordcloud(temp.vect, min.freq=2, rot.per=0, vfont=c("gothic english","plain"))
vfont
fonts
font
pdfFonts()
names(pdfFonts()
)
wordcloud(temp.vect, min.freq=2, rot.per=0, vfont=c("sans","plain"))
wordcloud(temp.vect, min.freq=2, rot.per=0, vfont=c("sans-serif","plain"))
wordcloud(temp.vect, min.freq=2, rot.per=0, vfont=c("sansserif","plain"))
wordcloud(temp.vect, min.freq=2, rot.per=0, vfont=c("script","plain"))
wordcloud(temp.vect, min.freq=2, rot.per=0, vfont=c("serif","plain"))
vfont
wordcloud(temp.vect, min.freq=2, rot.per=0, vfont=c("sans serif","plain"))
wordcloud(temp.vect, min.freq=2, rot.per=0, vfont=c("sans serif symbol","plain"))
wordcloud(temp.vect, min.freq=2, rot.per=0, vfont=c("gothic german","plain"))
wordcloud(temp.vect, min.freq=2, rot.per=0, vfont=c("gothic italian","plain"))
wordcloud(temp.vect, min.freq=2, rot.per=0, vfont=c("script","bold"))
wordcloud(temp.vect, min.freq=2, rot.per=0, vfont=c("sans serif","bold"))
wordcloud(temp.vect, min.freq=2, rot.per=0, vfont=c("serif","EUC"))
wordcloud(temp.vect, min.freq=2, rot.per=0, vfont=c("serif","cyrillic"))
wordcloud(temp.vect, min.freq=2, rot.per=0, vfont=c("",""))
Hershey
wordcloud(temp.vect, min.freq=2, rot.per=0, vfont=c("script","bold"))
wordcloud(temp.vect, min.freq=2, rot.per=0, max.words=49, vfont=c("script","bold"))
wordcloud(temp.vect, min.freq=2, rot.per=0, max.words=49, vfont=c("serif","bold"))
wordcloud(temp.vect, min.freq=2, rot.per=0, max.words=49, vfont=c("serif"))
wordcloud(temp.vect, min.freq=2, rot.per=0, max.words=49, vfont=c("serif", "plain"))
wordcloud(temp.vect, min.freq=2, rot.per=0, max.words=49, vfont=c("serif"))
wordcloud(temp.vect, min.freq=2, rot.per=0, max.words=49, vfont=c("serif","bold"))
wordcloud(temp.vect, min.freq=2, rot.per=0, max.words=49, vfont=c("serif","bold"), use.r.layout=FALSE)
wordcloud(temp.vect, min.freq=2, rot.per=0, max.words=49, vfont=c("serif","bold"), use.r.layout=FALSE)
wordcloud(temp.vect, min.freq=2, rot.per=0, max.words=49, vfont=c("serif","bold"), use.r.layout=FALSE)
wordcloud(temp.vect, min.freq=2, rot.per=0, max.words=49, vfont=c("serif","bold"))
wordcloud(temp.vect, min.freq=2, rot.per=0, max.words=49, vfont=c("serif","bold"))
slp
slp[2,3,4,1]
slp[c(2,3,4,1)]
slp[c(2,3,4,1),]
slp_temp <- slp[c(2,3,4,1)]
slp_temp
slp_temp <- slp[c(2,3,4,1),]
slp_temp
ggplot(slp_temp, aes(x=Season, y=Freq)) + geom_dotplot()
ggplot(slp_temp, aes(x=Season, y=Freq)) + geom_points()
ggplot(slp_temp, aes(x=Season, y=Freq)) + geom_point()
slp_temp <- data.frame()
slp_temp
slp_temp[,1] <- slp[,2]
slp_temp[1,] <- slp[2,]
slp_temp
slp[2,]
slp_temp <- slp[2,]
slp_temp
attr(slp_temp)
attributes(slp_temp)
slp_temp <- slp[c(2,3,4,1,6,7,8,5,10,11,12,9,14,15,16,13,18,19,20,17),]
attributes(slp_temp)
slp_temp$row.names
rownames(slp_temp)
rownames(slp)
rownames(slp_temp) <- c(1:20)
rownames(slp_temp)
slp_temp
slp_temp <- slp[c(2,3,1,4,6,7,5,8,10,11,9,12,14,15,13,16,18,19,17,20),]
rownames(slp_temp) <- c(1:20)
slp_temp
ggplot(slp_temp, aes(x=Season, y=Freq)) + geom_point()
ggplot(slp_temp, aes(x=Label_Place, y=Season, fill=Freq)) + geom_point()
ggplot(slp_temp, aes(x=Label_Place, y=Season)) + geom_point()
i = 1
toString(i)
toString("cloud" + i)
paste("cloud", toString(i))
paste("cloud", toString(i), sep="")
paste("cloud", toString(i), sep="") <- 2
object
object("asdf")
object()
objects
objects()
objects("asdf")
p <- ggplot(slp_temp, aes(Label_Place, Season))
p
p <- ggplot(slp_temp, aes(Label_Place, Season)) + facet_grid(Label_Place ~ Season, switch = "both")
p
p <- ggplot(slp_temp) + facet_grid(Season ~ Label_Place, switch = "both")
p
p +
  theme(strip.background = element_blank())
str(slp_temp)
attributes(slp_temp)
slp_temp$Season
slp_temp$Season <- factor(slp_temp_Season, levels=c("spring", "summer", "fall", "winter"))
slp_temp$Season <- factor(slp_temp$Season, levels=c("spring", "summer", "fall", "winter"))
slp_temp$Season
slp_temp
slp$Season <- factor(slp$Season, levels=c("spring", "summer", "fall", "winter"))
slp
ggplot(slp)+facet_grid(Season ~ Label_Place, switch='both')
slpggplot(slp)+facet_grid(Season ~ Label_Place, switch='both') + theme(strip.background = element_blank())
ggplot(slp)+facet_grid(Season ~ Label_Place, switch='both') + theme(strip.background = element_blank())
ggplot(slp)+facet_grid(Season ~ Label_Place, switch='both') + theme(strip.background = element_blank(), axis.text.y=element.text(rotate=90))
ggplot(slp)+facet_grid(Season ~ Label_Place, switch='both') + theme(strip.background = element_blank(), axis.text.y=element_text(rotate=90))
ggplot(slp)+facet_grid(Season ~ Label_Place, switch='both') + theme(strip.background = element_blank(), axis.text.y=element_text(angle=90))
ggplot(slp)+facet_grid(Season ~ Label_Place, switch='both') + theme(strip.background = element_blank(), axis.text.y=element_text(angle=180))
ggplot(slp)+facet_grid(Season ~ Label_Place, switch='both') + theme(strip.background = element_blank(), axis.text.y=element_text(angle=90, vjust=0.5))
ggplot(slp)+facet_grid(Season ~ Label_Place, switch='both') + theme(strip.background = element_blank(), axis.text.y=element_text(angle=90, vjust=0.5, hjust=1))
ggplot(slp)+facet_grid(Season ~ Label_Place, switch='both') + theme(strip.background = element_blank(), axis.text.y=element_text(angle=90, vjust=0.5, hjust=0.5))
ggplot(slp)+facet_grid(Season ~ Label_Place, switch='both') + theme(strip.background = element_blank(), axis.text.y=element_text(angle=90, vjust=1, hjust=0.5))
ggplot(slp)+facet_grid(Season ~ Label_Place, switch='both') + theme(strip.background = element_blank(), axis.text.y=element_text(angle=0, vjust=1, hjust=0.5))
ggplot(slp)+facet_grid(Season ~ Label_Place, switch='both') + theme(strip.background = element_blank(), strip.text.y=element_text(angle=90))
ggplot(slp)+facet_grid(Season ~ Label_Place, switch='both') + theme(strip.background = element_blank(), strip.text.y=element_text(angle=0))
ggplot(slp)+facet_grid(Season ~ Label_Place, switch='both') + theme(strip.background = element_blank(), strip.text.y=element_text(angle=180))
install.packages("gridBase")
library("gridBase")
vps <- baseViewports()
pushViewport(vps$figure)
library(grid)
pushViewport
pushViewport(vps$figure)
vp1 <-plotViewport(c(1.8,1,0,1))
bg <- ggplot(slp)+facet_grid(Season ~ Label_Place, switch='both') + theme(strip.background = element_blank(), strip.text.y=element_text(angle=180))
wc <- wordcloud(temp.vect, min.freq=2, rot.per=0, max.words=50, vfont=c("serif","bold"))
w
wc
print(bg=vp1)
print(bg,vp=vp1)
print(bg,vp=vp1, wordcloud(temp.vect, min.freq=2, rot.per=0, max.words=50, vfont=c("serif","bold")))
print(bg, wordcloud(temp.vect, min.freq=2, rot.per=0, max.words=50, vfont=c("serif","bold")))
print(wordcloud(temp.vect, min.freq=2, rot.per=0, max.words=50, vfont=c("serif","bold")), bg)
par(mfrow=c(1,2))
wordcloud(temp.vect, min.freq=2, rot.per=0, max.words=50, vfont=c("serif","bold"))
plot.new()
vps <- baseViewports()
bg <- ggplot(slp)+facet_grid(Season ~ Label_Place, switch='both') + theme(strip.background = element_blank(), strip.text.y=element_text(angle=180))
print(bg, vp=vps)
print(bg, vp=vp1)
par(mfrow=c(1,2))
wordcloud(temp.vect, min.freq=2, rot.per=0, max.words=50, vfont=c("serif","bold"))
plot.new()
vps <- baseViewports()
pushViewport(vps$figure)
print(bg, vp=vps)
vp1 <-plotViewport(c(1.8,1,0,1))
print(bg, vp=vp1)
par(mfrow=c(1,2))
wordcloud(temp.vect, min.freq=2, rot.per=0, max.words=50, vfont=c("serif","bold"))
print(bg, vp=vps)
print(bg, vp=vp1)
print(bg, vp=vp1)
print(bg, vp=vp1)
wordcloud(temp.vect, min.freq=2, rot.per=0, max.words=50, vfont=c("serif","bold"))
wordcloud(temp.vect, min.freq=2, rot.per=0, max.words=50, vfont=c("serif","bold"))
wordcloud(temp.vect, min.freq=2, rot.per=0, max.words=50, vfont=c("serif","bold"))
print(bg, vp=vp1)
wordcloud(temp.vect, min.freq=2, rot.per=0, max.words=50, vfont=c("serif","bold"))
print(bg, vp=vp1)
wordcloud(temp.vect, min.freq=2, rot.per=0, max.words=50, vfont=c("serif","bold"))
print(bg, vp=vp1)
print(bg, vp=vp1)
plot.new()
print(bg, vp=vp1)plot.
print(bg, vp=vp1)
par(mfrow=c(1,1))
vps <- baseViewports()
pushViewport(vps$inner)
wordcloud(temp.vect, min.freq=2, rot.per=0, max.words=50, vfont=c("serif","bold"))
pushViewport(vps$figure)
bg
wordcloud(temp.vect, min.freq=2, rot.per=0, max.words=50, vfont=c("serif","bold"))
pushViewport(vps$plot)
print(bg, vp=vp1)
wordcloud(temp.vect, min.freq=2, rot.per=0, max.words=50, vfont=c("serif","bold"))
pushViewport(vps$figure)
wordcloud(temp.vect, min.freq=2, rot.per=0, max.words=50, vfont=c("serif","bold"))
pushViewport(vps$plot)
print(bg, vp=vp1)
pushViewport(vps$figure)
pushViewport(vps$plot)
pushViewport(vps$figure)
wordcloud(temp.vect, min.freq=2, rot.per=0, max.words=50, vfont=c("serif","bold"))
plot.new()
par
par()
vps <- baseViewports()
vps
wordcloud(temp.vect, min.freq=2, rot.per=0, max.words=50, vfont=c("serif","bold"))
print(bg, vp=vp1)
wordcloud(temp.vect, min.freq=2, rot.per=0, max.words=50, vfont=c("serif","bold"))
print(bg, vp=vp1)
print(bg, vp=vp1)
print(bg, vp=vp1)
print(bg, vp=vp1)
wordcloud(temp.vect, min.freq=2, rot.per=0, max.words=50, vfont=c("serif","bold"))
vps
print(bg, vp=vp1)
pushViewport(vps$plot)
wordcloud(temp.vect, min.freq=2, rot.per=0, max.words=50, vfont=c("serif","bold"))
par(mfrow=c(1,2))
savehistory("par.rHistory")
