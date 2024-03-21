NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#Baltimore NEI
baltimoreNEI <- NEI[NEI$fips=="24510",]

#Aggregate total for Baltimore
aggB <- aggregate(Emissions ~ year, baltimoreNEI,sum)

#Plot
barplot(
  aggB$Emissions,
  names.arg=aggB$year,
  xlab="Year",
  ylab="PM2.5 Emissions (Tons)",
  main="Total PM2.5 Emissions From all Baltimore City Sources"
)
dev.copy(png, "plot2.png", width = 450, height = 450, bg = "transparent")
dev.off()