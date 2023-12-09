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



## Folders

- **data**
  - `[WORKING]2023-HMIS-Records-of_Sheltered-Individuals`
  - `Better.geojson`
  - `LA_County_Service_Planning_Area_(2012).csv`
  - `LA_County_Service_Planning_Area_(2012).shp`

- **docs**
Include all the meta data for the website

- **images**


## Files

- `.gitignore`
- `.DS_store`
- `__quarto.yml`
- `about_the_data.qmd`: code for about_the_data tab
- `domestic_violence.qmd`: code for the Domestic Violence tab
- `Index.qmd` : code for the home page of the website
- `Index.markdown` (Placeholder)
- `raw_data.R` : data cleaning code
- `Styles.css` : code for website design
- `substance_abuse.qmd`: code for the Substance Abuse tab

## Additional Information

- `README.md` : The document you are currently reading
- `survey_data_2923.pdf1`: written report


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




## Cloning the Repository

To get started with this project, follow the steps below to clone the repository to your local machine.


### Cloning the Repository

1. **Open a Terminal or Command Prompt:**
   Open a terminal or command prompt on your computer.

2. **Navigate to Your Desired Directory:**
   Use the `cd` command to navigate to the directory where you want to clone the repository.

    ```bash
    cd path/to/your/directory
    ```

3. **Clone the Repository:**
   Run the following command to clone the repository.

    ```bash
    git clone repository_url
    ```

   Replace `repository_url` with the actual URL of the repository. You can find the URL on the repository's webpage.

    ```bash
    git clone https://github.com/username/repository.git
    ```

4. **Verification:**
   Once the cloning process is complete, you'll have a local copy of the repository in the specified directory.



## Website Link 

Explore the project website at <https://monabr4.github.io/SheltredHomeless2023Survey/>.

