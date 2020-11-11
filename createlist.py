#!/usr/bin/python3
import glob
import os
import sys
import argparse
from tqdm import tqdm

parser = argparse.ArgumentParser()
parser.add_argument("--D",type=str, default="../data")

separations = range(0,101)

opt = parser.parse_args()
#perc = opt.perc
modes = ([f for f in os.listdir(opt.D) if os.path.isdir(os.path.join(opt.D,f))])

for i in tqdm(modes):
  if i[0:2] == 'DS':
    current_dir = os.path.join(i,"images")
    current_dir_full = os.path.join(opt.D,i,"images")
    file_full_path=os.path.join(opt.D,i,"full.txt")
    file_full = open(file_full_path, "w") 
    files = [x for x in os.listdir(current_dir_full) if x[-4::]==".jpg"]
    files.sort()
    for file in tqdm(files):
      title,ext= os.path.splitext(os.path.basename(file))
      file_full.write(os.path.realpath(current_dir + "/" + title + '.jpg') + "\n")
    for sep in tqdm(separations):
      file_sep_path = os.path.join(opt.D,i,"d{0:03}.txt".format(sep))
      file_sep=open(file_sep_path,'w')
      file_sep2_path = os.path.join(opt.D,i,"v{0:03}.txt".format(100-sep))
      file_sep2=open(file_sep2_path,'w')
      perc = sep/100
      half = files[0:int(len(files)*perc)]
      half2 = files[len(half):len(files)]
      for train_file in half:
        title,ext= os.path.splitext(os.path.basename(train_file))
        file_sep.write(os.path.join(current_dir + "/" + title + '.jpg') + "\n")
      for val_file in half2:
        title,ext= os.path.splitext(os.path.basename(val_file))
        file_sep2.write(os.path.join(current_dir + "/" + title + '.jpg') + "\n")
      file_sep.close()
    file_full.close()



