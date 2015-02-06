species  <- read.csv(file="data/species.csv")
$$ How many birds have been captured? 450
$$ How many individuals of the genus Dipodomys have been captured? 16167

head(species)

surveys_spid_index  <- match(surveys$species_id, species$species_id)

surveys_genera  <- species$genus [surveys_spid_index]

surveys  <- cbind(surveys, genus=surveys_genera)

surveys  <-  read.csv(file="data/surveys.csv")


surveys_spid_index  <- match(surveys$species_id, species$species_id)

surveys_species  <- species$species [surveys_spid_index]

surveys  <- cbind(surveys, species=surveys_species)

genus_species  <-  paste(surveys$"genus", surveys$"species")

surveys  <- cbind(surveys, "Full name"=genus_species)

surveys_species_merged  <- merge (surveys, species)

surveys_species_merged_birds  <- subset(surveys_species_merged, taxa == "Bird")

surveys_species_merged_Dipo  <- subset(surveys_species_merged, genus == "Dipodomys")

surveys_DO  <- subset(surveys, species_id == "DO")

