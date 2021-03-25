# OML Tutorial

[![Build Status](https://travis-ci.org/opencaesar/oml-template.svg?branch=master)](https://travis-ci.org/opencaesar/oml-template)

## Browse with the Gitpod IDE

1. [Click this badge: ![Gitpod](https://img.shields.io/badge/gitpod-open-blue?logo=gitpod)](https://gitpod.io/#https://github.com/modelware/oml-tutorial) 

1. Wait until the Gradle build is finished, then you can browse the `src/oml` folders of the different patterns projects.

## Browse with the Rosetta IDE

1. Download the [Rosetta IDE](https://github.com/opencaesar/oml-rosetta/releases) suitable to your operating system
1. Clone this repo to your machine
   ```
     git clone https://github.com/modelware/oml-tutorial.git
   ```
1. Build the repo by invoking the gradle build script
   ```
   cd oml-tutorial
   ./gradlew build
   ```
   >NOTE: If you are on Windows, replace ./gradlew with gradlew.bat (also in the instructions below)

1. Double click to open Rosetta and then import the root project (Import -> Existing Project)

## Run R analysis notebooks (when using Rosetta only)
1. Start Fuseki Server
   ```
   ./gradlew startFuseki
   ```
1. Load to Fuseki Dataset
   ```
   ./gradlew owlLoad
   ```
1. Double click on the R notebooks (*.rmd files) that are found under `src/r` folder of the pattern projects to run in R Studio.

   > Pre-requisite: [R Studio](https://rstudio.com/products/rstudio/download/) is installed

1. Render the notebook in the R studio using the UI

1. When done, stop Fuseki Server
   ```
   ./gradlew stopFuseki
   ```