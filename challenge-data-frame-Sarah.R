## Sarah's answer

##1.)
surveys_speciesname <- species$species[surveys_spid_index]
head(surveys_speciesname)
surveys <- cbind(surveys, species=surveys_speciesname)
head(surveys)


##2.) 
?paste
surveys  <- read.csv(file="data/surveys.csv")

species <- read.csv(file="data/species.csv")
species

surveys_spid_index <- match(surveys$species_id, species$species_id)
head(surveys_spid_index)

surveys_paste <- paste(species$genus, species$species)
surveys_paste

surveys_genusspecies <- surveys_paste[surveys_spid_index]
head(surveys_genusspecies)

surveys <- cbind(surveys, genusspecies=surveys_genusspecies)
head(surveys)

## 3.)
?merge
surveys  <- read.csv(file="data/surveys.csv")

species <- read.csv(file="data/species.csv")

x <- surveys
y <- species
merge(x,y)
z <- merge(x,y)


## 4.) 
z_bird <- subset(z, taxa == "Bird")
z_bird
nrow(z_bird)
##450

z_Dipodomys <- subset(z, genus == "Dipodomys")
z_Dipodomys
nrow(z_Dipodomys)
##16167
