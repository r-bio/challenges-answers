### Zach's answers

### Challenge:
### 1. use cbind again to add the species names to the 'surveys' data.frame
### 2. use the help in R to understand what the 'paste()' function does ('paste'),
### and use it to create a vector called 'genus_species' that contains 
### the genus and species names togher e.g., "Amphispiza bilineata",
### and add it to the species data.frame
### 3. use the help in R to understand what the 'merge' function does, and 
### use it to create a new data frame that merges the content of the 'surveys'
### and 'speceis' data fames
### 4. Use this data set to answer the following:
### - how many birds habe been captured? (610)
### -how many speciemens of the genus Dipodomys have been captured?(16,527)

surveys_spid_index <- match(surveys$species_id, species$species_id)
head(surveys_spid_index)

surveys_species <- species$species[surveys_spid_index]
head(surveys_species)
surveys <- cbind(surveys, species=surveys_species)
head(surveys)

?paste
head(species)
gs <- paste(species$genus, species$species)
gs

species <- cbind(species, name=gs)
head(species)

?merge()
M <- merge(surveys, species)
head(M)
survey_Bird <- subset(M, taxa == "Bird")
survey_D <- subset(M, genus.x == "Dipodomys")

### adding rows

surveys_DO <- subset(surveys, species_id == "DO")
surveys_DM <- subset(surveys, species_id == "DM")
surveys_DODM <- rbind(surveys_DO, surveys_DM)
nrow(surveys_DO)
nrow(surveys_DM)
nrow(surveys_DODM)

### challenge: what is the difference with subset(surveys, species_id == "DO" | species_id == "DM") ?

### removing columns

surveys_noDate <- surveys[, -c(3:5)]

names(surveys_noDate)
