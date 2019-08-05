import sys, glob, os, csv, json, argparse, shutil
current_dir = os.path.dirname(os.path.abspath(__file__))
current_dir = os.path.join(current_dir,"../../../workspace/training_demo/")

def get_labels(directory):
    file = os.path.join(current_dir,directory+".names")
    labels = []
    with open(file) as f:
        lines = f.readlines()
        for index,label in enumerate(lines,start=1):
            labels.append(label.strip())
    return labels