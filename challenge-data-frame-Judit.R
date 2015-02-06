## Judit's answer
## Challenge
## 1. use cbind again to add the species names to the 'surveys' data frame
surveys_species <- species$species[surveys_spid_index] ### make the values for the column
surveys <-cbind(surveys, species=surveys_species)
## 2. use the help in R to understand what the 'paste' function does
## and use it to create a vector called 'genus_species' that contains both
genus_species <- paste(surveys$genus, surveys$species, sep=" ")
surveys <-cbind(surveys, genus_species=genus_species)
## 3. use the help to understand 'merge', merge together surveys and species in a new data frame
full.dataframe <- merge(surveys, species, by="species_id")
## 4. Use this dataset to answer
##  -how many birds have been captured?
birds <- subset(full.dataframe, full.dataframe$taxa=="Bird")
nrow(birds)
## - how many specimens of the genus Dipodomys have been captured?
Dipodomys <- subset(full.dataframe, full.dataframe$genus.x=="Dipodomys")
nrow(Dipodomys)
