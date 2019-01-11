setwd("D:\\A-DATA\\GoogleDriveYork\\Writings\\FASE-2019\\script")

library(plyr)
library(extrafont)
# pdfFonts()
fontType <- "serif"
pdfWidth <- 3
pdfHeight <- 6
pngWidth <- 300
pngHeight <- 600

raw <- read.table("..\\data\\output.csv", sep = ",", header = TRUE)

data1 <- data.frame((raw$lelc + raw$relc) / 1000000, raw$cct / 1000000000)
data1$group <- 1
colnames(data1) <- c("element.count", "comparison.time", "group")

data2 <- data.frame((raw$lelc + raw$relc) / 1000000, raw$sct / 1000000000)
data2$group <- 19
colnames(data2) <- c("element.count", "comparison.time", "group")

# pch.list <- as.numeric(data$group)
# pch.list

# pdf(file = "..\\images\\state-element-comparison-time.pdf", height <- pdfHeight, width <- pdfWidth)
# par(family = fontType, mar = c(2, 4, 0.05, 0.05))

# plot(data1$element.count, data1$comparison.time, xlab = "Number of Elements", ylab = "Comparison Time (seconds)", type="o", pch=1, frame = FALSE)

plot(data1$comparison.time, type="o", pch=1)
lines(data2$comparison.time, type="o", pch=19)

axis(side=1,at=seq(0,100,20))
axis(side=2,at=seq(0,100,20))

title(main="Autos", col.main="red", font.main=4)

# xyplot(data1$element.count, data1$comparison.time, type="o", pch=19, col="red")

# abline(lm(y ~ x), col = "blue")
# # dev.off()

