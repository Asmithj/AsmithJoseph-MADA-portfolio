














































library(readr)
PROMO_Data <- read_csv("PROMO_Data.csv")
View(PROMO_Data)





head(PROMO)



head(PROMO)     # View first few rows
str(PROMO)      # Structure of the dataset
summary(PROMO)  # Summary statistics




write.csv(PROMO, "PROMO_Data.csv", row.names = FALSE)  # Save as CSV
write.table(PROMO, "PROMO_Data.txt", sep = "\t", row.names = FALSE)  # Save as Tab-Separated File


PROMO <- read.csv("PROMO_Data.csv", header = TRUE, stringsAsFactors = FALSE)
PROMO <- read.delim("PROMO_Data.txt", header = TRUE, stringsAsFactors = FALSE)



PROMO <- read.csv("PROMO_Data.csv", header = TRUE, stringsAsFactors = FALSE)
PROMO <- read.delim("PROMO_Data.txt", header = TRUE, stringsAsFactors = FALSE)
View(PROMO)




setwd("C:/Users/ajose35/Desktop/L'ecole/MADA-course/AsmithJoseph-MADA-portfolio/Joseph-MADA-project")
getwd()


summary(PROMO_Data)
str(PROMO_Data)
col(PROMO_Data)
head(PROMO_Data)
colnames(PROMO_Data)

View(PROMO_Data)


# Print column names with index numbers
for (i in seq_along(colnames(PROMO_Data))) {
  cat(i, colnames(PROMO_Data)[i], "\n")
}
