setwd("C:/TInvention/DataScience/DS10-Capstone")
rm(list=ls(all=TRUE))


conn <- file("final/en_US/en_US.blogs.txt",open="r")
linn.us.blogs <-readLines(conn)
close(conn)

conn <- file("final/en_US/en_US.news.txt",open="rb")
linn.us.news <-readLines(conn)
close(conn)

conn <- file("final/en_US/en_US.twitter.txt",open="r")
linn.us.twitter <-readLines(conn)
close(conn)

summary(linn.us.blogs)
summary(linn.us.news)
summary(linn.us.twitter)

max(nchar(linn.us.blogs))
max(nchar(linn.us.news))
max(nchar(linn.us.twitter))

####

test <- c('love no','ok love ok','ok love','aslovers');

loveWords <- grep("( love)|^(love )", linn.us.twitter)
hateWords  <- grep("( hate)|^(hate )", linn.us.twitter)
length(loveWords)/length(hateWords)

######

pos <- grep("biostats", linn.us.twitter)
linn.us.twitter[pos]

#####

grep("A computer once beat me at chess, but it was no match for me at kickboxing", linn.us.twitter)
