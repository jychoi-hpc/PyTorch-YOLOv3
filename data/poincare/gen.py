#!/usr/bin/env python
from sklearn.model_selection import train_test_split
import glob
import os

x = sorted(glob.glob('images/*.jpg'))

train, test = train_test_split(x, test_size = 0.2)

f = open('train.txt', 'w')
for fn in train:
    f.write(os.path.abspath(fn)+'\n')
f.close()

f = open('valid.txt', 'w')
for fn in test:
    f.write(os.path.abspath(fn)+'\n')
f.close()

print("Done.")