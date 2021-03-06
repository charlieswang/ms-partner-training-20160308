
GData <- unlist(GpostDf$Title)
HPData <- unlist(HPpostDf$Title)
AllData <- c(GData, HPData)


library(jiebaR)
mixseg = worker()

messages = unlist(allData)

segRes = lapply(messages,function(msg) mixseg <= msg)
paste(segRes[[1]],collapse = " ")


library(tm)
tmWordsVec = sapply(segRes,function(ws) paste(ws,collapse = " "))
corpus <- Corpus(VectorSource(tmWordsVec))
tdm = TermDocumentMatrix(corpus,control = list(wordLengths = c(1, Inf)))
inspect(tdm)


library(rpart)
Features = t(as.matrix(tdm))
Labels = c(rep("G",length(GData)),rep("HP",length(HPData)))


df = data.frame(Y=Labels,Features)
View(df)

# install.packages("ada")
library(ada)

model = ada(Y~.,data=df)
model$model$trees

