# Makefile for generating final report

install:
	Rscript -e "renv::restore()"

report:
	Rscript -e "rmarkdown::render('final_report.Rmd', output_dir = 'output')"
