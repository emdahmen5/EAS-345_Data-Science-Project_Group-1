# Load required libraries
library(readr)
library(dplyr)

# Define paths relative to the project root
raw_data_path <- file.path("data", "raw", "manhattan_sales.csv")

# Function to load and clean Redfin sales data
load_sales_data <- function(filepath) {
  df_sales <- read_csv(filepath)
  
  # Standardize column names to lowercase
  names(df_sales) <- tolower(trimws(names(df_sales)))
  
  message(paste("Successfully loaded", nrow(df_sales), "records."))
  return(df_sales)
}

# Test execution (uncomment once you drop your CSV into data/raw/)
# sales_data <- load_sales_data(raw_data_path)