# Final Project: Diabetes Data Analysis

This project analyzes the Pima Indians Diabetes Dataset to explore relationships between clinical features (such as glucose level, BMI, and age) and diabetes status. The analysis includes summary tables, visualizations, and a predictive model to identify key risk factors.


## Project Structure
final-diabetes-project/
├── code/                # R scripts for tables and plots
├── data/                # diabetes.csv dataset
├── output/              # Final report will be saved here
├── renv/                # R dependency management
├── final_report.Rmd     # Main R Markdown analysis
├── Makefile             # Automation for rendering report
├── README.md            # This file

## How to Generate the Report

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

