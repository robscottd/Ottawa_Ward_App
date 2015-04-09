library(tm)
library(wordcloud)
load("occupations.RData")
wardsList<-list(wards)

getOccupations <- function(ward) {
    # Careful not to let just any name slip in here; a
    # malicious user could manipulate this value.
    if (!(ward %in% wards))
        stop("Unknown ward")
    wardData<-oCounts[which(oCounts$Ward==ward),]
    return(wardData)
}