gogh <- read.delim("van_Gogh_genres.txt")
library(ggplot2)
gogh$hsv <- hsv((gogh$hue_median/255), (gogh$saturation_median/255), (gogh$brightness_median/255))

pg_color <- ggplot(gogh, aes(x=image_proportion,y=reorder(Genre_gen, image_proportion))) + geom_point(colour=gogh$hsv, size=5, alpha=1/4, stroke=0) + theme_light(base_family="sans") + theme(aspect.ratio=1) + coord_cartesian(xlim = c(0.1, 2.1))

pg_grayscale <- ggplot(gogh, aes(x=image_proportion,y=reorder(Genre_gen, image_proportion))) + geom_point(size=5, alpha=1/10, stroke=0) + theme_light() + theme(aspect.ratio=1) + coord_cartesian(xlim = c(0.1, 2.1)) + labs(title="Image proportions, plotted by genre", y="Genre, ordered by median image proportion", x="")

# some weird things about the data. first of all, Genre_gen seems off- for example, basically none of the titles indicate a self portrait in rows where Genre_gen == "self-portrait". Genre.UPDATED seems to do a slightly better job, but it's still confused.
# the weirder thing is that image proportion does not seem to reflect the image proportion in reality. basically whenever I check for titles, the proportions will not match. Since portraits have image proportions greater than 1, it should mean that <1 is landscape, right? but pics with >2 proportions are also landscape. maybe the titles are just random.

ggplot(gogh, aes(x=image_proportion,y=reorder(Genre.UPDATED, image_proportion))) + geom_point(size=5, alpha=1/10, stroke=0) + theme_light() + theme(aspect.ratio=1) + coord_cartesian(xlim = c(0.1, 2.1)) + labs(title="Image proportions, plotted by genre", y="Genre, ordered by image proportion", x="")



# ymhsv <- ggplot(gogh, aes(x=Year_Month, y=hsv)) + geom_point(color=gogh$hsv, size=5, alpha=1/2, stroke=0) + theme_bw() + theme(axis.ticks.y=element_blank(), axis.text.y=element_blank(), panel.grid.major.x=element_line("gray"), panel.grid.minor.y=element_blank(), panel.grid.major.y=element_blank(), axis.title.x=element_blank(), axis.title.y=element_blank(), aspect.ratio=1) + scale_x_continuous(minor_breaks= seq(1881,1891, 1/12), breaks=seq(1881,1891,1)) + labs(title="Median HSB, chronologically")
ggsave("hsb-yearmonth.pdf", width=20, height=20, units="cm")



gogh$r_hex <- paste("0x", substr(gogh$hsv, 2, 3), sep="")
gogh$g_hex <- paste("0x", substr(gogh$hsv, 4, 5), sep="")
gogh$b_hex <- paste("0x", substr(gogh$hsv, 6, 7), sep="")
gogh$rgb_brightness <- 0.2126*as.integer(gogh$r_hex) + 0.7152*as.integer(gogh$g_hex) + 0.0722*as.integer(gogh$b_hex)

# color order is weird even after sorting maybe because of factor order
# or do i need to sort twice, based on both brightness AND month?

#ymhsv <- gogh[,c("Year_Month", 'hsv', 'brightness_median')]
#ymhsv_ordered <- ymhsv[order(ymhsv$brightness_median),]

ymhsv <- gogh[,c("Year_Month", 'hsv', 'rgb_brightness')]
ymhsv_ordered <- ymhsv[order(ymhsv$rgb_brightness),]

ggplot(ymhsv, aes(x=Year_Month)) + theme_classic() + labs(title="Van Gogh Paintings sorted by month and displayed as median HSB value") + theme(line=element_blank(), text=element_text(family="Trattatello"), axis.text.y=element_blank(), axis.title=element_blank(), aspect.ratio=.35) + scale_x_continuous(minor_breaks= seq(1881,1891, 1/12), breaks=seq(1881,1891,1)) + geom_dotplot(stackgroups=TRUE, method="histodot", binwidth=1/12, color=ymhsv$hsv, fill=ymhsv$hsv, alpha=0.85, dotsize=0.9, stackratio=1.1)

# ggplot(ymhsv_ordered, aes(x=Year_Month, y=reorder(hsv,rgb_brightness))) + geom_dotplot(stackgroups=TRUE, method="histodot", binwidth=1/12, color=gogh$hsv, fill=gogh$hsv, alpha=0.8, dotsize=0.9, stackratio=1.1) + theme_bw() + theme(axis.ticks.y=element_blank(), axis.text.y=element_blank(), panel.grid.major.x=element_line("gray"), panel.grid.minor.y=element_blank(), panel.grid.major.y=element_blank(), axis.title.x=element_blank(), axis.title.y=element_blank(), aspect.ratio=2/5) + scale_x_continuous(minor_breaks= seq(1881,1891, 1/12), breaks=seq(1881,1891,1)) + labs(title="Median HSB, chronologically")

ggplot(ymhsv_ordered, aes(x=Year_Month, y=reorder(hsv,rgb_brightness))) + theme_classic() + labs(title="Van Gogh Paintings sorted by month and displayed as median HSB value") + theme(line=element_blank(), text=element_text(family="Trattatello"), axis.text.y=element_blank(), axis.title=element_blank(), aspect.ratio=.35) + scale_x_continuous(minor_breaks= seq(1881,1891, 1/12), breaks=seq(1881,1891,1)) + geom_dotplot(stackgroups=TRUE, method="histodot", binwidth=1/12, color=gogh$hsv, fill=gogh$hsv, alpha=0.85, dotsize=0.9, stackratio=1.1)

ggsave("hsb-yearmonth-dotplot.pdf", width=20, height=10, units="cm")


## gogh[ which(gogh$Season== 'spring' & gogh$Label_Place == '5_Auvers-sur-Oise'), ]$Title
## toString(gogh[ which(gogh$Season== 'summer' & gogh$Label_Place == '5_Auvers-sur-Oise'), ]$Title)
## as.character(gogh[ which(gogh$Season== 'summer' & gogh$Label_Place == '5_Auvers-sur-Oise'), ]$Title[2])

slp <- data.frame(table(gogh$Season, gogh$Label_Place))
colnames(slp) <- c("Season", "Label_Place", "Freq")
j <- 1
for (i in 1:20) {
	slp$Titles[i] <- toString(gogh[ which(gogh$Season == switch((i%%4)+1, "winter", "fall", "spring", "summer") & gogh$Label_Place == switch((j%%5)+1, "5_Auvers-sur-Oise", "1_Early", "2_Paris", "3_Arles", "4_Saint-Remy-de-Provence_asylum")), ]$Title)
	if (i %% 4 == 0) j <- j + 1
}
slp$Season <- factor(slp$Season, levels=c("spring", "summer", "fall", "winter"))
ggplot(slp)+facet_grid(Season ~ Label_Place, switch='both') + theme(strip.background = element_blank(), strip.text.y=element_text(angle=180))

## http:#johnvictoranderson.org/?p=115

img1 <- readPNG("cloud1.png")
img2 <- readPNG("cloud2.png")
img3 <- readPNG("cloud3.png")
img4 <- readPNG("cloud4.png")
img5 <- readPNG("cloud5.png")
img6 <- readPNG("cloud6.png")
img7 <- readPNG("cloud7.png")
img8 <- readPNG("cloud8.png")
img9 <- readPNG("cloud9.png")
img10 <- readPNG("cloud10.png")
img11 <- readPNG("cloud11.png")
img12 <- readPNG("cloud12.png")
img13 <- readPNG("cloud13.png")
img14 <- readPNG("cloud14.png")
img15 <- readPNG("cloud15.png")
img16 <- readPNG("cloud16.png")
img18 <- readPNG("cloud18.png")
img19 <- readPNG("cloud19.png")
g1 <- rasterGrob(img1, interpolate=TRUE)
g2 <- rasterGrob(img2, interpolate=TRUE)
g3 <- rasterGrob(img3, interpolate=TRUE)
g4 <- rasterGrob(img4, interpolate=TRUE)
g5 <- rasterGrob(img5, interpolate=TRUE)
g6 <- rasterGrob(img6, interpolate=TRUE)
g7 <- rasterGrob(img7, interpolate=TRUE)
g8 <- rasterGrob(img8, interpolate=TRUE)
g9 <- rasterGrob(img9, interpolate=TRUE)
g10 <- rasterGrob(img10, interpolate=TRUE)
g11 <- rasterGrob(img11, interpolate=TRUE)
g12 <- rasterGrob(img12, interpolate=TRUE)
g13 <- rasterGrob(img13, interpolate=TRUE)
g14 <- rasterGrob(img14, interpolate=TRUE)
g15 <- rasterGrob(img15, interpolate=TRUE)
g16 <- rasterGrob(img16, interpolate=TRUE)
g18 <- rasterGrob(img18, interpolate=TRUE)
g19 <- rasterGrob(img19, interpolate=TRUE)
groupg = c(g1, g2, g3, g4, g5, g6, g7, g8, g9, g10, g11, g12, g13, g14, g15, g16, g18, g19)
rm(img1)
rm(img2)
rm(img3)
rm(img4)
rm(img5)
rm(img6)
rm(img7)
rm(img8)
rm(img9)
rm(img10)
rm(img11)
rm(img12)
rm(img13)
rm(img14)
rm(img15)
rm(img16)
rm(img18)
rm(img19)

library(grid)
library(gridBase)
vps <- baseViewports()
pushViewport(vps$figure)


# slp_ordered <- slp[c(2,3,1,4,6,7,5,8,10,11,9,12,14,15,13,16,18,19,17,20),]
# rownames(slp_ordered) <- c(1:20)
# slp_ordered$Season <- factor(slp_ordered$Season, levels=c("spring", "summer", "fall", "winter"))

library(wordcloud)

ggplot(slp) + facet_grid(Season ~ Label_Place, switch = "both") + theme(strip.background = element_blank())

base = ggplot(slp, aes(x="", y=Freq)) + facet_grid(Label_Place ~ Season, switch='both') + theme(strip.background = element_blank(), strip.text.y=element_text(angle=180), axis.title=element_blank(), axis.ticks=element_blank(), panel.grid.major.x=element_blank(), panel.grid.minor.x=element_blank(), aspect.ratio=1) + geom_bar(width=1, stat="identity") + scale_y_continuous(expand = c(0,0))

## can I put different images / custom annotations to each plot? also, reduce alpha value?

makecloud <- function(data, i) {
	temp <- data[i]
	temp.list <- strsplit(temp, "\\W+", perl=TRUE)
	temp.vect <- unlist(temp.list)
	temp.vect <- temp.vect[-which(is.element(substr(temp.vect, 1, 1), letters))]
	temp.vect <- temp.vect[-which(is.element(temp.vect, c("L", "La", "The", "A")))]
	wordcloud(temp.vect, min.freq=2, rot.per=0, max.words=50, vfont=c("serif","bold"))
} 

## sort(table(temp.vect)[which(table(temp.vect) > 1)], decreasing=TRUE)
ggplot(slp, aes(x="", y=Freq))+facet_grid(Season ~ Label_Place, switch='both') + theme(strip.background = element_blank(), strip.text.y=element_text(angle=180), aspect.ratio=1)+geom_bar(width=1, stat="identity")



# - make a list of titles by Season-Label_Place
# - clean each list of stop words (I could get rid of every word where first letter is lowercase) and punctuation 
# - count word frequency (BoW or n-grams?) - bag of words for now
# - for each list, create word cloud of n most frequent words where n is the number of rows in list

# I feel Lev's circular examples are misleading because area contrasts are strong, but the actual data is linked with the radius (increasing contrast by power of 2)