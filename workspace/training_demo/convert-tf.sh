#!/bin/bash         

train_path="/mnt/data-sda5/ml/Contents-AI/source/tensorflow/object-detection/workspace/training_demo"
tf_script_path="/mnt/data-sda5/ml/Contents-AI/source/tensorflow/object-detection/TensorFlow/scripts/preprocessing"

python $tf_script_path/xml_to_csv.py -i $train_path/insects -d $train_path/annotations
python $tf_script_path/generate_tfrecord.py --csv_input=$train_path/annotations/test_labels.csv --output_path=$train_path/annotations/test.record --img_path=$train_path/insects
python $tf_script_path/generate_tfrecord.py --csv_input=$train_path/annotations/train_labels.csv --output_path=$train_path/annotations/train.record --img_path=$train_path/insects




