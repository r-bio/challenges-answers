###  Richie's answer

###### challenge assignment

surveys <- read.csv(file="data/surveys.csv")

### part 1: use cbind to add species names to 'surveys' data.frame

str(surveys)
str(species)
surveys_species <- species$species[surveys_spid_index]
str(surveys_species)

surveys <- cbind(surveys, species=surveys_species)
str(surveys)
head(surveys)

### now want both genus and species

#used combo of above workflow to do it, after resetting surveys using below command

surveys <- read.csv(file="data/surveys.csv")
