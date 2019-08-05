#!/bin/bash         

# python xml_to_csv.py -i C:\Users\sglvladi\Documents\TensorFlow\workspace\training_demo\images\train -o C:\Users\sglvladi\Documents\TensorFlow\workspace\training_demo\annotations\train_labels.csv
train_path="/mnt/data-sda5/ml/Contents-AI/source/tensorflow/object-detection/workspace/training_demo"
tf_script_path="/mnt/data-sda5/ml/Contents-AI/source/tensorflow/object-detection/TensorFlow/scripts/preprocessing"

# python $tf_script_path/xml_to_csv.py -i $train_path/images/train -o $train_path/annotations/train_labels.csv
# python $tf_script_path/xml_to_csv.py -i $train_path/images/test -o $train_path/annotations/test_labels.csv
# python $tf_script_path/xml_to_csv.py -i $train_path/images/train -d $train_path/annotations
python $tf_script_path/xml_to_csv.py -i $train_path/insects -d $train_path/annotations



