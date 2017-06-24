sp.tus <- sp.tus[which(nchar(sp.tus$tags) > 0),]
str(sp.tus)
sp.scorpus <- Corpus(VectorSource(sp.tus$tags))
sp.dtm <- DocumentTermMatrix(sp.scorpus)
sp.tfidf <- weightTfIdf(sp.dtm)
m <- as.matrix(sp.tfidf)
d <- dist(m)
m_norm <- norm_eucl(m)
results <- kmeans(m_norm, 4, 10)
results$cluster
table(results$cluster)
results2 <- kmeans(m_norm, 4, 10)
table(results2$cluster)
results.f <- fa(d, 2, rotate="none")
clusplot(m_norm, results$cluster, color=T, shade=T, labels=2, lines=0)
results2 <- kmeans(m, 4, 10)
table(results2$cluster)
results2 <- kmeans(m, 4, 10)
table(results2$cluster)
results2 <- kmeans(m, 4, 10)
table(results2$cluster)
results2 <- kmeans(m_norm, 4, 10)
table(results2$cluster)
results2 <- kmeans(m_norm, 4, 10)
table(results2$cluster)
results2 <- kmeans(m_norm, 4, 50)
table(results2$cluster)
results2 <- kmeans(m_norm, 4, 50)
table(results2$cluster)
results2 <- kmeans(m_norm, 4, 5)
table(results2$cluster)
results2 <- kmeans(m_norm, 4, 10)
table(results2$cluster)
table(results2$cluster)
results2 <- kmeans(m_norm, 4, 10)
table(results2$cluster)
results2 <- kmeans(m_norm, 4, 10)
table(results2$cluster)
results2 <- kmeans(m_norm, 4, 11)
table(results2$cluster)
results2 <- kmeans(m_norm, 4, 11)
table(results2$cluster)
results2 <- kmeans(m_norm, 4, 11)
table(results2$cluster)
results2 <- kmeans(m_norm, 4, 11)
table(results2$cluster)
results2 <- kmeans(m_norm, 4, 11)
table(results2$cluster)
results2 <- kmeans(m_norm, 5, 11)
table(results2$cluster)
results2 <- kmeans(m_norm, 5, 11)
table(results2$cluster)
results2 <- kmeans(m_norm, 5, 11)
table(results2$cluster)
results2 <- kmeans(m_norm, 3, 11)
table(results2$cluster)
results2 <- kmeans(m_norm, 3, 11)
table(results2$cluster)
results2 <- kmeans(m_norm, 3, 11)
table(results2$cluster)
results2 <- kmeans(m_norm, 3, 11)
table(results2$cluster)
results2 <- kmeans(m_norm, 2, 10)
table(results2$cluster)
results2 <- kmeans(m_norm, 2, 10)
table(results2$cluster)
results2 <- kmeans(m_norm, 4, 10)
table(results2$cluster)
results2 <- kmeans(m_norm, 4, 10)
table(results2$cluster)
results2 <- kmeans(m_norm, 4, 10)
table(results2$cluster)
results2 <- kmeans(m_norm, 4, 10)
table(results2$cluster)
results2 <- kmeans(m_norm, 4, 10)
table(results2$cluster)
results2 <- kmeans(m_norm, 4, 10)
table(results2$cluster)
results2 <- kmeans(m_norm, 4, 10)
table(results2$cluster)
results2 <- kmeans(m_norm, 4, 10)
table(results2$cluster)
results2 <- kmeans(m_norm, 4, 90)
table(results2$cluster)
results2 <- kmeans(m_norm, 4, 90)
results2 <- kmeans(m_norm, 4, 90)
results2 <- kmeans(m_norm, 4, 90)
table(results2$cluster)
results2 <- kmeans(m_norm, 4, 90)
table(results2$cluster)
results2 <- kmeans(m_norm, 4, 90)
table(results2$cluster)
results2 <- kmeans(m_norm, 4, 90)
table(results2$cluster)
sp.tfidf
m <- as.matrix(sp.tfidf)
d <- dist(d)
groups <- hclust(d,method=”ward.D”)
groups <- hclust(d,method='ward.D')
plot(groups, hang=-1)
rect.hclust(groups,2)
rect.hclust(groups,4)
kfit <- kmeans(d, 2, nstart=100)
clusplot(m, kfit$cluster, color=T, shade=T, labels=2, lines=0)
library(cluster)
clusplot(m, kfit$cluster, color=T, shade=T, labels=2, lines=0)
clusplot(m, kfit$cluster, color=T, shade=T, labels=1, lines=0)
clusplot(m, kfit$cluster, color=T, shade=T, lines=0)
clusplot(m, kfit$cluster, color=T, shade=T)
clusplot(m, kfit$cluster, color=T)
clusplot(m, kfit$cluster)
clusplot(d, kfit$cluster)
m
kfit$cluster
wss <- 2:29
for (i in 2:29) wss[i] <- sum(kmeans(d,centers=i,nstart=25)$withinss)
plot(2:29, wss[2:29], type=”b”, xlab=”Number of Clusters”,ylab=”Within groups sum of squares”)
plot(2:29, wss[2:29], type='b', xlab='Number of Clusters',ylab='Within groups sum of squares')
rect.hclust(groups,3)
groups <- hclust(d,method='ward.D')
plot(groups, hang=-1)
rect.hclust(groups,3)
kfit <- kmeans(d, 3, nstart=100)
table(kfit$cluster)
kfit <- kmeans(d, 3, nstart=100)
table(kfit$cluster)
clusplot(d, kfit$cluster, diss=T, color=T, shade=T, labels=2, lines=0)
clusplot(m, kfit$cluster, diss=T, color=T, shade=T, labels=2, lines=0)
clusplot(d, kfit$cluster, diss=T, color=T, shade=T, labels=2, lines=0)
kfit
kfit$cluster
nrow(sp.tus)
nrow(kfit$cluster)
kfit$cluster[1]
kfit$cluster[145]
sp.tus[145]
sp.tus[145,]
sp.tus$username[145]
c(sp.tus$username[145], kfit$cluster[145])
c(sp.tus$username[145,], kfit$cluster[145])
c(sp.tus$username[145], kfit$cluster[145])
as.character(sp.tus$username[145])
c(as.character(sp.tus$username[145]), kfit$cluster[145])
c(as.character(sp.tus$username[145]), as.numeric(kfit$cluster[145]))
table(kfit$cluster)
sp.tus$username
table(kfit$cluster)
kfit$cluster = 2
kfit$cluster
kfit <- kmeans(d, 3, nstart=100)
kfit$cluster
kfit$cluster == 1
c(kfit$cluster == 1)
kfit
kfit$iter
kfit$centers
kift
kfit
for (i in 1:nrow(sp.tus)) {}
for (i in 1:nrow(sp.tus)) {>}
for (i in 1:nrow(sp.tus)) {>
for (i in 1:nrow(sp.tus)) >
for (i in 1:nrow(sp.tus)) { print(i)}
for (i in 1:nrow(sp.tus)) { if (kfit$cluster[i] == 2) print i}
for (i in 1:nrow(sp.tus)) { if (kfit$cluster[i] == 2) print(i)}
for (i in 1:nrow(sp.tus)) { if (kfit$cluster[i] == 1) print(i)}
for (i in 1:nrow(sp.tus)) { if (kfit$cluster[i] == 3) print(i)}
for (i in 1:nrow(sp.tus)) { if (kfit$cluster[i] == 3) print(sp.tus$username[i])}
for (i in 1:nrow(sp.tus)) { if (kfit$cluster[i] == 3) print(as.character(sp.tus$username[i]))}
for (i in 1:nrow(sp.tus)) { if (kfit$cluster[i] == 1) print(as.character(sp.tus$username[i]))}
kfit <- kmeans(d, 4, nstart=100)
kfit$cluster
table(kfit$cluster)
kfit <- kmeans(d, 4, nstart=100)
table(kfit$cluster)
clusplot(d, kfit$cluster, diss=T, color=T, shade=T, labels=2, lines=0)
wss <- 2:29
for (i in 2:29) wss[i] <- sum(kmeans(d,centers=i,nstart=25)$withinss)
plot(2:29, wss[2:29], type='b', xlab='Number of Clusters',ylab='Within groups sum of squares')
table(kfit$cluster)
table(kfit$cluster) == 4
sort(table(kfit$cluster))
sort(table(kfit$cluster))[1]
sort(table(kfit$cluster))[2]
sort(table(kfit$cluster))[2] == 8
sort(table(kfit$cluster))[2] == 4
sort(table(kfit$cluster))[2]$colnames
sort(table(kfit$cluster))[2]$colname
sort(table(kfit$cluster))[2]$
sort(table(kfit$cluster))[2][2]$
sort(table(kfit$cluster))[2][2]
sort(table(kfit$cluster))[2][1]
sort(table(kfit$cluster))[1]
table(kfit$cluster)
order(kfit$cluster)
sort(kfit$cluster)
uniqure
unique
unique(kfit$cluster)
kfit$cluster
colnames(table(kfit$cluster))
table(kfit$cluster)
colnames(as.data.frame(table(kfit$cluster)))
as.data.frame(table(kfit$cluster))
as.data.frame(sort(table(kfit$cluster)))
as.data.frame(sort(table(kfit$cluster)))[1]
as.data.frame(sort(table(kfit$cluster)))[1,1]
as.data.frame(sort(table(kfit$cluster)))[1,2]
as.data.frame(sort(table(kfit$cluster)))[1,1]
kfit$cluster == as.data.frame(sort(table(kfit$cluster)))[1,1]
for (i in 1:nrow(sp.tus)) { if (kfit$cluster[i] == 1) print(as.character(sp.tus$username[i]))}
for (i in 1:nrow(sp.tus)) { #
	if (kfit$cluster[i] == as.data.frame(sort(table(kfit$cluster)))[1,1]) {#
		print(as.character(sp.tus$username[i]))#
		}#
	}
if (kfit$cluster[i] == as.data.frame(sort(table(kfit$cluster)))[1,1:2]) {
for (i in 1:nrow(sp.tus)) { #
	if (kfit$cluster[i] == as.data.frame(sort(table(kfit$cluster)))[1,1:2]) {#
		print(as.character(sp.tus$username[i]))#
		}#
	}
for (i in 1:nrow(sp.tus)) { #
	if (kfit$cluster[i] in as.data.frame(sort(table(kfit$cluster)))[1,1:2]) {#
		print(as.character(sp.tus$username[i]))#
		}#
	}
for (i in 1:nrow(sp.tus)) { #
	if (kfit$cluster[i] == as.data.frame(sort(table(kfit$cluster)))[1,1]) {#
		print(as.character(sp.tus$username[i]))#
		}#
	if (kfit$cluster[i] == as.data.frame(sort(table(kfit$cluster)))[1,2]) {#
		print(as.character(sp.tus$username[i]))#
		}#
	}
findFreqTerms(sp.tfidf[kfit$cluster==1], 2)
findFreqTerms(sp.tfidf[kfit$cluster==1])
findFreqTerms(sp.tfidf[kfit$cluster==1,])
findFreqTerms(sp.tfidf[kfit$cluster==1,], 100)
findFreqTerms(sp.tfidf[kfit$cluster==1,], 10)
findFreqTerms(sp.tfidf[kfit$cluster==1,], 5)
findFreqTerms(sp.tfidf[kfit$cluster==1,], 2)
findFreqTerms(sp.tfidf[kfit$cluster==1,], 1)
findFreqTerms(sp.tfidf[kfit$cluster==2,], 1)
findFreqTerms(sp.tfidf[kfit$cluster==3,], 1)
findFreqTerms(sp.tfidf[kfit$cluster==4,], 1)
findFreqTerms(sp.dtm[kfit$cluster==4,], 1)
findFreqTerms(sp.dtm[kfit$cluster==4,], 10)
findFreqTerms(sp.dtm[kfit$cluster==1,], 10)
findFreqTerms(sp.dtm[kfit$cluster==2,], 10)
findFreqTerms(sp.dtm[kfit$cluster==3,], 10)
findFreqTerms(sp.dtm[kfit$cluster==3,], 100)
findFreqTerms(sp.dtm[kfit$cluster==3,], 300)
sp.tdm <- TermDocumentMatrix(sp.scorpus)
sp.tdm
sp.dtm
findFreqTerms(tdm, lowfreq=15)
findFreqTerms(sp.tdm, lowfreq=15)
findFreqTerms(sp.tdm, lowfreq=150)
findFreqTerms(sp.dtm, lowfreq=150)
term.freq <- rowSums(as.matrix(tdm))
term.freq <- rowSums(as.matrix(sp.tdm))
term.freq <- subset(term.freq, term.freq >= 200)
df <- data.frame(term = names(term.freq), freq=term.freq)
ggplot(df, aes(term, freq)) + geom_bar
ggplot(df, aes(term, freq)) + geom_bar()
ggplot(df, aes(term, freq)) + geom_bar(stat="identity")
ggplot(df, aes(term, freq)) + geom_bar(stat="identity") + coord_flip()
findFreqTerms(sp.dtm, lowfreq=1000)
