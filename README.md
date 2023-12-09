# Sheltered Individuals Who Experience Homelessness in Los Angeles County (2023)

**Author:** Mona\
**Updated:** December 8, 2023

## Table of Contents

-   [Introduction](#introduction)
-   [Question](#question)
-   [Project Structure](#project-structure)
-   [Prerequisites](#prerequisites)
-   [Installation](#installation)
-   [Website Link](#website-link)


## Introduction 

Understanding the demographics of homelessness in Los Angeles is crucial for specialized interventions and equitable resource allocation. It allows policymakers to create solutions to specific needs, especially for vulnerable populations. Beyond policy considerations, this understanding fosters empathy and informs careful decision-making, contributing to holistic and sustainable efforts to eradicate homelessness in Los Angeles County.

## Question 

This research project aims to explore the intersection of domestic abuse and substance abuse, with a focus on age, race, and gender stratification. By examining age-specific trends, racial variations, and gender differences, our goal is to inform targeted interventions that address the unique challenges faced by different sub-populations. This research is essential for the development of inclusive support systems at the intersection of domestic and substance abuse.

## Project Structure 

-   `__quarto.yml` : website's skeleton

-   `2023_Homeless_Data_Project.``proj` : R project folder

-   `about_the_data.qmd` : code for about the data tab on the website

-   **Folder: data**

    -   `[WORKING]2023-HMIS-Records-of_Sheltered-Individuals`
    -   `Better.geojson`
    -   `LA_County_Service_Planning_Area_(2012).csv`
    -   `LA_County_Service_Planning_Area_(2012).shp`

-   **Folder: docs**

-   `domestic_violence.qmd` : code for the domestic violence tab on the website

-   **Folder: graphs:** include static images of the coded graphs

-   **Folder: images:** includes images on the website

-   `Index.qmd` : code for the home page of the website

-   `raw_data.R` : data cleaning code

-   `README.md` : the document that you are currently reading

-   `Styles.css` : code for website design

-   `substance_abuse.qmd` : code for the substance abuse tab on the website

## Prerequisites 

List the required R packages:

-   dplyr
-   ggplot2
-   plotly
-   leaflet
-   sf
-   viridis
-   magrittr

You can install these packages using the following R commands:

\`\`\`
R install.packages(c("dplyr", "ggplot2", "plotly", "leaflet", "sf", "viridis", "magrittr"))
\`\`\`

## Website Link 

Explore the project website at <https://monabr4.github.io/SheltredHomeless2023Survey/>.

