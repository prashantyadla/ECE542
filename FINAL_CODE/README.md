# PlantPhenotyping
## Installation :- 
* use virtualenv and pip for package management
* Download requirements.txt into you env folder
* Please run `pip install -r requirements.txt`

## Data Pre-processing
* MASTER DATA FOLDER contains all the manually annotated images compiled together
* Image_Annotations contains the labellings in python-friendly .dat format
* csv_generator.ipynb has code to convert the .dat format files to CSV-formatted file (fortfconversion.csv)
* Final TFRecord Dataset is in tfrecords


## Running Object Detection API to train model
* Please follow the official guide for cloning the Tensorflow Object Detection API Framework (https://github.com/tensorflow/models/tree/master/research/object_detection)
* Please copy the configuration file and the data (tfrecord) to it's respective location.
* Please run the command `python legacy/train.py --logtostderr --train_dir=training/ --pipeline_config_path=<path to config file>`

## Inference on Test Images
* Please run the file output_for_object.ipynb using the inference graph generated from the previous training step.
