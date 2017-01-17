# README

# Table of Contents
1. [Introduction](#introduction)
2. [Requirements](#requirements)
3. [Installation and Running](#installation)
4. [Repository Structure](#structure)

## Introduction <a name="introduction"></a>

This repository contains the files required to replicate the analysis
of the Yelp Dataset challenge as performed by Toavina Andriamanerasoa in
January 2017 to support the main presentation.

In order to simplify review and enable interactive analysis that mixes text
and code, Jupyter Notebooks are used.

Please note that the raw input files are not included due to size constraints.
However, instructions are provided below to download them and perform the
initial analysis if required.

A link is also provided to download the relevant files required to perform
the main analyses.

## Requirements <a name="requirements"></a>

This project uses Pythons 3.5+ and relevant data science libraries.

In order to replicate the environment, instructions are provided to replicate
the environment using Docker.

**Note that the analysis was run on various machines with at least 8GB of RAM.
Please ensure the machine meets this requirement or you may run into memory
errors**

## Installation and Running<a name='installation'></a>

### 1.Initial Steps

1. Clone this repository to your local drive. Two options:
  * Either download and unzip into chosen folder or
  * Run `git clone https://github.com/toavinaandria/yelp-nyex`) in your terminal
   if you have git installed
2. Ensure you have [Docker](https://www.docker.com) installed and running
3. Build the Docker image. Two options:
  * Either build the image locally in the root folder where the
  `Dockerfile` is located:

  `docker build -t toav/nyex .`
  * or download from [linktocome]

### 2.Downloading Input files

1. Download the following [linktocome] to the relevant folder on your drive
where you have saved the repository
2. Untar the file. This should copy the files to the relevant folders and
subfolders within the repository
`tar xzvf [nameto come]`

Please note that the original files from the challenge are not provided.
They are required to perform the first steps of the notebooks (Notebooks A to E).
They are not required by the main analysis files.

### 3.Running

1. Assuming your Docker image is called `toav/nyex`  and you have saved the
repository to the `/yelp` folder (replace as necessary in the command below)
,run the following command

`docker run -it -v /yelp:/yelp-nyex -p 8888:8888 toav/nyex:latest`

The -p option maps your host's 8888 port to the container's port so you
can access the Jupyter notebook server locally.

The -v option maps the host folder to the container folder after the colon.

2. Once logged in, run the following command:
`jupyter notebook --ip='*' --port=8888 --no-browser`

3. Open a browser at `localhost:8888`

4. You should now see the Jupyter notebook interface. Navigate to the
folder you mounted with the Docker image (`/yelp-nyex` in this example)

5. In the directory view of the Jupyter notebook, you should see `Nbextensions`.
 Click on it and enable `Python Markdown` (only used in the Exploratory notebook)

6. Return to the `Files` tab in Jupyter and open any of the .ipynb notebooks

7. In the `File` dropdown menu, select `Trust notebook`. This will enable
Python Markdown (only used in the Exploratory notebook) to display correctly

8. You're done! You may run any of the notebooks as required.


## Repository Structure <a name='structure'></a>

# Main Folder

## Jupyter Notebooks

* A.split_reviews_data.ipynb - D.pickle_other_datasets.ipynb - Jupyter Notebooks
that process the raw data into Pandas dataframes. **These files require
the original raw data and are designed to run sequentially.**
* E.exploring_data.ipynb - Exploratory data analysis
* 1.restaurant_ratings_prediction_from_text.ipynb - Bag of Words
analysis of reviews to predict restaurant ratings from text
* 2.collaborative_filtering.ipynb - Alternating Least Squares method of
collaborative filtering as a restaurant recommender system

# Other Folders

* pickles - Contains serialized Python objects used to load data
* presentation - Contains the latest version of the presentation that
accompanies the notebooks
* raw_data - An empty folder where you can put the original raw files for the
Yelp dataset challenge

## Other files

* Dockerfile - Can be used to build the Docker image locally by following the
instructions above instead of downloading the image from Docker Hub.
