# requires that you have Rscript installed 

library(htmlTable)
source("src/r/htmlDocument.r")

args <- commandArgs(trailingOnly=TRUE)

input_file <- args[1]   # objectives.frame
output_file <- args[2]  # objectives.html

# two columns
df <- read.csv(file = input_file)

of <- df[order(df$obj), c('obj', 'desc')]

colnames(of) <- c('Objective', 'Description')

tabledata = htmlTable(of,caption="List of Objectives",
                      tfoot="&dagger; ModelWare Example.",
                      align="l",align.header="l",
                      rnames=FALSE) # turn off row names (not documented)

title = "<h2>List of Objectives</h2>"

description = "<p>Lists Objectives.</p>"

# combine the html elements into a single output document
document = htmlDocument(body<- c(title, description, tabledata))

# and this writes that out to a file (could be combined in the same command)
cat(document, file=output_file)


