#Heather-Rose's challenge answer

#connect genus and species
paste(surveys_species, surveys_genera, sep = "", collapse=NULL)
genus_species <- paste(surveys_genera, surveys_species, sep= " ", collapse=NULL)
head(genus_species)

#make genus_species data frame

genus_species_frame <- data.frame(genus_species=c(genus_species))

#merge suveys and species dataframe
surveys <- cbind(surveys, genus_sepcies_col=genus_species)
surveys_species <- data.frame(merge(surveys, species))
head(surveys_species)
#how mant birds?
nrow(subset(surveys_species, taxa=="Bird"))
#how many individuals of genus Dipodomys?
nrow(subset(surveys_species, genus=="Dipodomys"))
tail(surveys_species)
str(surveys_species)
#make a file of only Dipodomys individuals
Dipodomys_only <- (subset(surveys_species, genus=="Dipodomys"))
#Look at the Dipodomys_only file
Dipodomys_only