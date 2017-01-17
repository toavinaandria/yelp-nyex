# README

This folder is purposefully empty to save space. If you want to run the entire
analysis from scratch and from the raw data, please to to
[this page](https://www.yelp.de/dataset_challenge/dataset), fill in the form,
download the data (both photos and other).

You can then untar the non-photo data into this folder with the command

`tar -xvzf <filename>` where `filename` is the relevant file name you want
to untar.

You should end up with the following files
* yelp_academic_dataset_business.json
* yelp_academic_dataset_checkin.json
* yelp_academic_dataset_review.json
* yelp_academic_dataset_tip.json
* yelp_academic_dataset_user.json


Please also untar the json photo file (`photo_id_tobusiness_id.json`)into
this folder.

Having the files in this folder will allow to run the Jupyter Notebook A to
reconstruct the Python objects per the analysis from the raw data.
