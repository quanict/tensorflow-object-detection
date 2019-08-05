#!/bin/bash         

# python xml_to_csv.py -i C:\Users\sglvladi\Documents\TensorFlow\workspace\training_demo\images\train -o C:\Users\sglvladi\Documents\TensorFlow\workspace\training_demo\annotations\train_labels.csv
train_path="/mnt/data-sda5/ml/Contents-AI/source/tensorflow/object-detection/workspace/training_demo"
tf_script_path="/mnt/data-sda5/ml/Contents-AI/source/tensorflow/object-detection/TensorFlow/scripts/preprocessing"

# python generate_tfrecord.py --label=ship --csv_input=C:\Users\sglvladi\Documents\TensorFlow\workspace\training_demo\annotations\train_labels.csv --output_path=C:\Users\sglvladi\Documents\TensorFlow\workspace\training_demo\annotations\train.record --img_path=C:\Users\sglvladi\Documents\TensorFlow\workspace\training_demo\images\train
# python generate_tfrecord.py --label=ship --csv_input=C:\Users\sglvladi\Documents\TensorFlow\workspace\training_demo\annotations\test_labels.csv --output_path=C:\Users\sglvladi\Documents\TensorFlow\workspace\training_demo\annotations\test.record --img_path=C:\Users\sglvladi\Documents\TensorFlow\workspace\training_demo\images\test

# python $tf_script_path/generate_tfrecord.py --csv_input=$train_path/annotations/train_labels.csv --output_path=$train_path/annotations/train.record --img_path=$train_path/images/train

python $tf_script_path/generate_tfrecord.py --csv_input=$train_path/annotations/test_labels.csv --output_path=$train_path/annotations/test.record --img_path=$train_path/insects
python $tf_script_path/generate_tfrecord.py --csv_input=$train_path/annotations/train_labels.csv --output_path=$train_path/annotations/train.record --img_path=$train_path/insects
