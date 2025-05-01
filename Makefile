# Makefile for generating final report

install:
	Rscript -e "renv::restore()"

report:
	Rscript -e "rmarkdown::render('final_report.Rmd', output_dir = 'output')"
	
docker-run:
	docker run --rm -v "/$(pwd)/report":/home/project/report zekarias16/zakfinal:latest
