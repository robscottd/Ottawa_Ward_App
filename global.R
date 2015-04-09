library(tm)
library(wordcloud)
load("occupations.RData")
wardsList<-list(wards)

getOccupations <- function(ward) {
    if (!(ward %in% wards))
        stop("Unknown ward")
    wardData<-oCounts[which(oCounts$Ward==ward),]
    return(wardData)
}