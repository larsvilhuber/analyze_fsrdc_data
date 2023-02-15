baseurl = "https://github.com/uscensusbureau/fsrdc-external-census-projects/raw/master/"
url.outputs = paste0(baseurl,"research-outputs-2019-2022_11OCT2022.xlsx")
url.metadata= paste0(baseurl,"ProjectsAllMetadata_06OCT2022.xlsx")

download.file(url=url.outputs, destfile = "census-outputs.xlsx")
download.file(url=url.metadata,destfile = "census-projects.xlsx")

library(readxl)
library(tidyverse)
census_projects <- read_excel("census-projects.xlsx",
                                sheet = "All Metadata")
census_datasets <- read_excel("census-projects.xlsx", 
                              sheet = "Datasets")
census_researchers <- read_excel("census-projects.xlsx", 
                              sheet = "Researchers")
census_outputs  <- read_excel("census-outputs.xlsx",sheet = "Outputs")

census_researchers %>% distinct(`Proj ID`) %>% nrow()
census_researchers %>% distinct(Researcher) %>% nrow()

