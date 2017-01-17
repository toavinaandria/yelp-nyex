# README

# Table of Contents
1. [Introduction](#introduction)
2. [Requirements](#requirements)
3. [Installation and Running](#installation)
4. [Repository Structure](#structure)

## Introduction <a name="introduction"></a>

This repository contains the files required to replicate the analysis
of the Yelp Dataset challenge by Toavina Andriamanerasoa (January 2017) to
support the main presentation.

To simplify review and enable interactive analysis that mixes text
and code, `.ipynb` Jupyter Notebooks are used rather than raw `.py` files.

**Please note that the raw input files are not included due to size constraints.
However, instructions are provided below and in the `raw_data` folder to
download them and perform the initial analysis if required.**

A link is also provided to download only the relevant files required to perform
the main analyses.

## Requirements <a name="requirements"></a>

This project uses Pythons 3.5+ and relevant data science libraries.

It has the following key dependencies:
* Anaconda 3
* scikit-learn >= 0.18
* pandas >= 0.19
* tqdm
* gensim

However, to ensure the environment can be replicated, instructions are provided
below on how to run a Jupyter notebook server with the relevant dependencies
within Docker.

**Note that the analysis was tested on various machines with at least 8GB of RAM.
Please ensure the machine you run this on meets this requirement or you may run
into memory errors.**

## Installation and Running<a name='installation'></a>

### 1.Initial Steps

1. Clone this repository to your local drive. Two options:
  * Either download and unzip into chosen folder (click `Clone or Download` on
    Github or
  * Run `git clone https://github.com/toavinaandria/yelp-nyex`) in your terminal
   if you have git installed
2. Ensure you have [Docker](https://www.docker.com) installed and running.
Follow the instructions in the link if not and ensure the Docker daemon is
running
3. Build the Docker image. Two options:
  * Either build the image locally **in the root folder where the
  `Dockerfile` is located** by typing the following command in the terminal:
  `docker build -t toavina/nyex .` or
  * Download the Docker image directly from [linktocome]

### 2.Downloading Input files

1. Download the following [linktocome] to the folder on your drive
where you have saved the repository
2. Untar the file. This should copy the files to the relevant folders and
subfolders within the repository. You can do this by typing the following
terminal command in bash (Windows users will have to user other tools):

`tar xzvf [nameto come]`

Please note that the original files from the challenge are not provided.
They are required to perform the first steps of the notebooks (Notebooks A to E).
They are not required by the main analysis files. If you want to run Notebooks
A to E, please see folder `raw_data/`, which contains instructions on how to
download the raw data if available.

### 3.Running the Docker Container and Jupyter Notebook server

1. Assuming the Docker image you built is called `toavina/nyex`  and you have
saved the repository to the `/yelp` folder (replace as necessary in the command
below),run the following command

  `docker run -it -v /yelp:/yelp-nyex -p 8888:8888 toav/nyex:latest`

  The -p option maps your host's 8888 port to the container's 8888 port so you
  can access the Jupyter notebook server from your local browser.

  The -v option maps the relevant host folder to the container folder after the
  colon. **If you use OS X, please ensure that whichever folder in the host
  you are sharing can be mounted (See File Sharing in the Docker Toolbox app)**.

2. Once the Docker image is open and you are logged in, run the following
command:

`jupyter notebook --ip='*' --port=8888 --no-browser`

Alternatively, you can run the `bash` script in the root folder which will run
the same command for you by typing `./remotejupyter.sh` in the terminal.


3. Open a browser on your local machine and navigate to http://localhost:8888.
You can now navigate the notebooks at your leisure.

## 4. Optional - Enabling Jupyter Notebook Extensions

4. In the directory view of the Jupyter notebook, you should see `Nbextensions`.
 Click on it and enable `Python Markdown` (only used in the Exploratory notebook)

5. Return to the `Files` tab in Jupyter and open any of the `.ipynb` notebooks

6. In the `File` dropdown menu, select `Trust notebook`. This will allow
Python Markdown (only used in the Exploratory notebook) to display correctly
so that Jupyter text cells can update dynamically with inline code.

7. You're done! You may run any of the notebooks as required.


## Repository Structure <a name='structure'></a>

### Main Folder

### Jupyter Notebooks

* A.split_reviews_data.ipynb - D.pickle_other_datasets.ipynb - Jupyter Notebooks
that process the raw data into Pandas dataframes. **These files require
the original raw data and are designed to run sequentially.**
* E.exploring_data.ipynb - Exploratory data analysis
* 1.restaurant_ratings_prediction_from_text.ipynb - Bag of Words
analysis of reviews to predict restaurant ratings from text
* 2.collaborative_filtering.ipynb - Alternating Least Squares method of
collaborative filtering as a restaurant recommender system

### Other

* Dockerfile - Can be used to build the Docker image locally by following the
instructions above instead of downloading the image from Docker Hub.
* README.MD - This file.
* remotejupyter.sh - A bash script which runs the Jupyter notebook command
highlighted above for efficiency

### Other Folders

* pickles - Contains serialized Python objects used to load data
* presentation - Contains the latest version of the presentation that
accompanies the notebooks
* raw_data - An empty folder where you can put the original raw files for the
Yelp dataset challenge to perform the data analysis from scratch
