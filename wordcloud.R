#Step 1: Install "wordcloud" package

install.packages("wordcloud")

#Step 2: loading libraries

library(wordcloud)

#Step 3: Importing the data

topsearches <- read.csv(file.choose(), header = TRUE)

#Step 4: Generating WordCloud

wordcloud(words = topsearches$word, freq = topsearches$frequency, min.freq = 1, 
max.words=25,random.order=FALSE, colors = brewer.pal(5, "Purples"),rot.per=0.00)
