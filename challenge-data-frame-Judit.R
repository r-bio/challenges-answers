## Judit's answer
## Challenge
surveys <- read.csv(file="data/surveys.csv")
species <- read.csv(file="data/species.csv")
### we are going to use the function match()
surveys_spid_index <- match(surveys$species_id, species$species_id) 
#### for each element assign the row from the species.csv
### uses the position of the first id
surveys_genera <- species$genus[surveys_spid_index] ### make the values for the column
### add column using "cbind()"
surveys <- cbind(surveys, genus=surveys_genera)

### add rows using "rbind()"
surveys_DO <- subset(surveys,species_id=="DO")
surveys_DM <- subset(surveys,species_id=="DM")
surveys_DODM <- rbind(surveys_DO, surveys_DM)
nrow(surveys_DO)
nrow(surveys_DM)
nrow(surveys_DODM)
nrow(surveys_DO) + nrow(surveys_DM)

### Removing columns
## remove all date information
names(surveys) ## columns 3,4,5 are date infor
surveys_noDate <- surveys[, -c(3:5)]
names(surveys_noDate)
surveys_noDate2 <- subset(surveys, select = -c(month,day,year)) ##removing with '-c()'


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
