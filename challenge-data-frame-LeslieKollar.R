surveys <- read.csv(file="data/surveys.csv")
head(surveys)

surveys_spid_index <- match(surveys$species_id, species$species_id)
head(surveys_spid_index)

surveys_genera <- species$genus[surveys_spid_index]

surveys <- cbind(surveys,genus=surveys_genera)
head(surveys)

surveys_species <- species$species[surveys_spid_index]
head(surveys_species)


surveys <- cbind(surveys,species=surveys_genera)
head(surveys)

genus_species <- paste(species$genus,species$genus)
genus_species
species <- cbind(species,genus_species)
head(species)
surveys_species <- merge(surveys,species)
head(surveys_species)

