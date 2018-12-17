getwd()
setwd('E:/Data Science Specialisation/Exploratory Analysis/exdata%2Fdata%2FNEI_data')
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
summary(NEI)
summary(SCC)
head(NEI)
head(SCC)
str(NEI)
str(SCC)

class(NEI)

aggTotals <- aggregate(Emissions ~ year,NEI, sum)

png("plot1.png",width=480,height=480,units="px",bg="transparent")

barplot(
  (aggTotals$Emissions)/10^6,
  names.arg=aggTotals$year,
  xlab="Year",
  ylab="PM2.5 Emissions (10^6 Tons)",
  main="Total PM2.5 Emissions From All US Sources"
)

dev.off()
