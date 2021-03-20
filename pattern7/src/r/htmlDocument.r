# htmlDocument
# This is a set of utility functions for producing an html document from a set of html body elements
# body argument is a list of html-encoded elements that will simply be pasted into the document template.
# This imports a standard stylesheet also contained in the same folder.
# Tricky bit: the stylesheet

htmlDocument <- function(body) {
    now=format(Sys.time(), format="%F %R %Z")


    font = "<link href='https://fonts.googleapis.com/css?family=Roboto&display=swap' rel='stylesheet'>"
    docheader = "<!doctype html><html lang='en'><head><meta charset=\"UTF8\"><meta name=\"viewport\" content=\"width=device-width,initial-scale=1.0\"><meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\"><title>report</title>"
    bodyheader = sprintf("</head><body>")
    style = "<link href=\"caesar-style.css\" rel=\"stylesheet\">"
    trailer = sprintf("<div class=\"footer-oc\"><div class=\"footer-data\"> <p>Generated: %s<br/><p></div></div></body></html>", now)
    paste(docheader, font, style, bodyheader, paste(body, collapse=""), trailer, collapse="\n")
}
