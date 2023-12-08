
#This section includes the data cleaning process for this data set.

#Import Library
library(readr)
library(dplyr)
library(ggplot2)
library(scales)
library(sf)
library(magrittr)
library(orca)
library(plotly)



#Import Data 
Sheltered_Individuals <- read_csv("~/Desktop/SheltredHomeless2023Survey/data/[WORKING]2023-HMIS-Records-of-Sheltered-Individuals.csv")

LA_County_Service_Planning_Area <- read_csv("~/Desktop/SheltredHomeless2023Survey/data/LA_County_Service_Planning_Area_(2012).csv")

#Run this file in the docuement with quiet=TRUE
#geojson_data <- st_read("~/Desktop/SheltredHomeless2023Survey/data/better.geojson")




#Data Cleaning

#First Data Set: Sheltered Homelessness Data

LA_County_Service_Planning_Area <- LA_County_Service_Planning_Area %>%
  select(SPA_NAME, ABBV, Shape_Length, Shape_Area)


#Second Data Set: SPA (scroll down) to the end

#Recoding Variables:

# MALE

#unique(Sheltered_Individuals$male)
Sheltered_Individuals$male <- ifelse(Sheltered_Individuals$male == "0.No", 0, ifelse(Sheltered_Individuals$male == "1.Yes", 1,Sheltered_Individuals$male))



#Domestic Violence 
Sheltered_Individuals <- Sheltered_Individuals %>%
  mutate(domViol = recode(
    domViol,
    "0.No" = "No",
    "1.Yes" = "Yes",
    ".N - NULL" = NA_character_,
    ".C - safety concern or not collected" = NA_character_,
    ".R - refused" = NA_character_,
    ".D - dont know" = NA_character_
  ))


#subsAbuse_typr
Sheltered_Individuals <- Sheltered_Individuals %>%
  mutate(subsAbuse_type = recode(
    subsAbuse_type,
    "0.None" = "None",
    "1.Alcohol" = "Alcohol",
    "2.Drugs" = "Drugs",
    "3.Alcohol + drugs" = "Both",
    ".N - NULL" = NA_character_,
    ".C - not collected" = NA_character_,
    ".R - refused" = NA_character_,
    ".D - dont know" = NA_character_
  ))
#SPA
Sheltered_Individuals <- Sheltered_Individuals %>%
  mutate(SPA = recode(
    SPA,
    "South" = "South",
    "South Bay" = "South Bay",
    "San Fernando Valley" = "San Fernando",
    "San Gabriel Valley" = "San Gabriel",
    "Metro (excl. Skid Row and Hollywood)" = "Metro",
    "East" = "East",
    "West (excl. Venice)" = "West",
    "Antelope Valley" = "Antelope Valley"
  ))

#hispanic
Sheltered_Individuals <- Sheltered_Individuals %>%
  mutate(hispanic = recode(
    hispanic,
    "0.No" = "No",
    "1.Yes" = "Yes",
    ".C - safety concern or not collected" = NA_character_,
    ".D - dont know" = NA_character_,
    ".R - refused" = NA_character_,
    ".M - blank" = NA_character_
  ))

#Race 
Sheltered_Individuals <- Sheltered_Individuals %>%
  mutate(race_nofa = recode(
    race_nofa,
    "1.White" = "White",
    "2.Black/Afr Amer" = "Black",
    "3.Asian" = "Asian",
    "4.Amer Ind / AK Native" = "Indigenous",
    "5.Native HI/Pac Isl" = "Pacific Islander",
    "6.Multiple races" = "Two or more races",
    ".C - not collected" =NA_character_,
    ".D - dont know" = NA_character_,
    ".R - refused" = NA_character_,
    ".N - NULL" =NA_character_,
    ".X - other value" = "Other"
  ))

#transgender
Sheltered_Individuals <- Sheltered_Individuals %>%
  mutate(transgender = recode(
    transgender,
    "0.No" = "No",
    "1.Yes" = "Yes"
  ))

#non_singular
Sheltered_Individuals <- Sheltered_Individuals %>%
  mutate(non_singular = recode(
    non_singular,
    "0.No" = "No",
    "1.Yes" = "Yes"
  ))

#straight
Sheltered_Individuals <- Sheltered_Individuals %>%
  mutate(straight = recode(
    straight,
    "0.No" = "No",
    "1.Yes" = "Yes"
  ))

#gay
Sheltered_Individuals <- Sheltered_Individuals %>%
  mutate(gay = recode(
    gay,
    "0.No" = "No",
    "1.Yes" = "Yes"
  ))

#bisexual
Sheltered_Individuals <- Sheltered_Individuals %>%
  mutate(bisexual = recode(
    bisexual,
    "0.No" = "No",
    "1.Yes" = "Yes"))


#Renaming Varaibles 

Sheltered_Individuals <- Sheltered_Individuals %>%
  rename("SPA_NAME" = "SPA")


#unique(Sheltered_Individuals$SPA_NAME)
#unique(LA_County_Service_Planning_Area$SPA_NAME)


#Creating the New Data Set 
merged_data <- left_join(Sheltered_Individuals, LA_County_Service_Planning_Area, by = "SPA_NAME")

merged_data <- merged_data %>%
  select(-wt_spa, -ABBV, -city_name, -flee_viol, -flee_dv_hmls, -alcohol_yn, -drugs_yn,-n_chronic,-subsAbuse_dur, -n_vet, -hhold_type, -chronCond, -hiv, -physical_yn)



#The codebook provides a comprehensive overview of the 2023 datasetfrom LAHSA,
#focusing exclusively on sheltered individuals in Los Angeles County, with 19 
#variables capturing demographic and contextual information.



#SPA SHAPE FILE REDO

#shapefile_and_data <- merged_data %>%
#  left_join(geojson_data, by = "SPA_NAME")
















