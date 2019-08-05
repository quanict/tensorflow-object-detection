tf_models_research_path="/mnt/data-sda5/ml/Contents-AI/source/tensorflow/object-detection/models/research/object_detection"
training_path="/mnt/data-sda5/ml/Contents-AI/source/tensorflow/object-detection/workspace/training_demo/training"

python $tf_models_research_path/legacy/train.py --logtostderr --train_dir=$training_path/ --pipeline_config_path=$training_path/ssd_inception_v2_coco.config
#python $tf_models_research_path/builders/model_builder_test.py


 
 
