# Makefile for generating final report

install:
	Rscript -e "renv::restore()"

report:
	Rscript code/render_report.R
	
docker-run:
	docker run --rm -v "/$(shell pwd)/report":/home/project/report zekarias16/zakfinal:latest

