#
# Part 1
#

pollutantmean <- function(directory, pollutant, id=1:332) {

    meanVector<-numeric()
    fileNames<-list.files(directory, full.names=TRUE)

    for(i in id) {

      df1<-read.csv(fileNames[[i]])
      meanVector <- c(meanVector,df1[[pollutant]])
    }    

        mean(meanVector,na.rm=TRUE)
}



pollutantmean("specdata","sulfate",1:10)
pollutantmean("specdata", "nitrate", 70:72)
pollutantmean("specdata", "nitrate", 23)

