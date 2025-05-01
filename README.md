# Final Project: Diabetes Data Analysis

This project analyzes the Pima Indians Diabetes Dataset to explore relationships between clinical features (such as glucose level, BMI, and age) and diabetes status. The analysis includes summary tables, visualizations, and a predictive model to identify key risk factors.


## Project Structure

- `data/`: Contains the `diabetes.csv` dataset
- `code/`: R scripts for generating the table and figure
- `output/`: Final compiled report (HTML) will be saved here
- `final_report.Rmd`: Main R Markdown analysis script
- `Makefile`: Automates report rendering via `make report`
- `renv/`: Manages project-specific R package versions
- `README.md`: Project overview and usage instructions


## How to Generate the Report


Before generating the report, restore the required R packages using:

```bash
make install
```
To generate the final report:
1. Open a terminal and navigate to the project directory.
2. Run the following command:
  ```bash
  make report
  ```
After the command runs, the compiled report will be saved in the `output/` folder.

## Where to Find the Code

- **Table generation code**: See `code/01_table.R`
- **Figure generation code**: See `code/02_plot.R`

## How to Use Docker

### 🐳 Build the Docker Image (for local testing)

If you want to build the image yourself:

```bash
docker build -t zekarias16/zakfinal:latest .
``` 
### Pull the Prebuilt Image from DockerHub
```bash
docker pull zekarias16/zakfinal:latest
```
### Generate the Report in a Mounted Folder

Make an empty folder named report, then run:

```bash
docker run --rm -v "$(pwd)/report":/home/project/report zekarias16/zakfinal:latest
```
    On Windows Git Bash, use:
```bash
docker run --rm -v "/$(pwd)/report":/home/project/report zekarias16/zakfinal:latest
```
The compiled `final_report.html` will be saved to your local `report/` folder.
