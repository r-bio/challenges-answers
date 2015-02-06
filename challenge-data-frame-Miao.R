## Miao's answers
### 1. use cbind again to add the species names to the "surveys" data.fame
### 2. use the help in R to understand what the "paste()" function does (?paste),
###    and ues it to creat a vector called 'genus_species' that contains the genus
###    names and species names together e.g., "Amphispiza bilineata"
###    and add it to the 'species' data.frame
### 3. use the help in R to understand what the 'merge' function does, and use it to creat
###    a new data frame that merges the concent of the 'surveys' and spececies data frame.
### 4. Use this data set to answer the following:
###    -how many birds have been captured?
###    -how many species of the genus Dipodomy have been captured?
surveys <- read.csv(file="data/surveys.csv")
surveys <- read.csv(file="data/species.csv")
head(surveys)
head(species)
download.file("http://r-bio.github.io/data/surveys.csv", "data/surveys.csv")
surveys <- read.csv(file="data/surveys.csv")
head(surveys)
surveys_spnm_index <- match (surveys$species, species$species)
surveys <- cbind (surveys, name=surveys_species)

surveys_DO <- subset(surveys, species_id == "DO")
surveys_DM <- subset(surveys, species_id == "DM")
surveys_DODM <- rbind(surveys_DO, surveys_DM)
nrow(surveys_DO)
nrow(surveys_DM)
nrow(surveys_DO) + nrow(surveys_DM)

### challenge: what the difference with subset 
### (surveys, species_id == "DO"| species_id == "DM")

## remove columns

surveys_noDate <- surveys[, -c(3:5)]
names(surveys_noDate)

surveys_noDate2 <- subset(surveys, select=-c(month, day, year))