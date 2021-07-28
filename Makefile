README.md: README.Rmd
	Rscript -e 'library(rmarkdown);render("README.Rmd", md_document())'
