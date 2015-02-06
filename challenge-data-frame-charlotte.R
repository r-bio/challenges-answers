## Charlotte's answers
#sorry, I didn't save my file... :(' so it's a bit of a mess ! 

match <- match(surveys$species, species$species_id)

surveys_genus <- species$genus[match]
cbind(surveys, genus=surveys_genus)

surveys_sp <- species$species[match]
cbind(surveys_sp, genus=surveys_genus)

surveys <- cbind(surveys, genus=surveys_genus)
surveys <- cbind(surveys, species=surveys_sp)

name <- paste(surveys$genus, surveys$species, sep=" ")

species <- cbind(species, name)
names(surveys[,6]) <- "species_id"

surveys <- read.csv(file="data/surveys.csv")

download.file("http://r-bio.github.io/data/surveys.csv", "data/surveys.csv")
surveys <- read.csv(file="data/surveys.csv")

trial <- merge(surveys, species, by = "species_id")


nrow(trial[trial$taxa == "Bird"])
birds <- subset(trial, trial$taxa == "Bird")
Dipodomys <- subset(trial, trial$genus == "Dipodomys")