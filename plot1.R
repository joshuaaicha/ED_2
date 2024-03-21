NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

annual_emmisions <- aggregate(Emissions ~ year,NEI, sum)


barplot( annual_emmisions$Emissions/10^6,
  names.arg=annual_emmisions$year,
  xlab="Year",
  ylab="PM2.5 Emissions (10^6 Tons)",
  main="Total PM2.5 Emissions From All US Sources"
)
dev.copy(png, "plot1.png", width = 450, height = 450, bg = "transparent")
dev.off()