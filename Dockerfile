# Start from the recommended tidyverse image
FROM rocker/tidyverse:latest

# Install system libraries needed by R packages
RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    pandoc \
    && apt-get clean

# Copy only what's needed for renv restore
COPY renv.lock renv.lock
COPY renv/activate.R renv/activate.R

# Restore renv packages
RUN Rscript -e "install.packages('renv')" && \
    Rscript -e "renv::restore()"

# Copy the rest of the project
COPY . /home/project/
WORKDIR /home/project/

# Render the report
CMD ["Rscript", "-e", "rmarkdown::render('final_report.Rmd', output_dir = 'report')"]