## Packages
library(knitr)
library(rmarkdown)

## Data
personalized_info <- read.csv(file = "meeting-times.csv")

## Loop
for (i in nrow(personalized_info)) {
  rmarkdown::render(input = "MailMergeMarkdown.Rmd"),
  output_format = "pdf_document",
  output_file = paste("handout_",i, ".pdf", sep = ''),
  output_dir = "handouts/")
}

