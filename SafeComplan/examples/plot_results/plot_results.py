#!/usr/bin/python

# Script to plot results of Third Arm SafeComplan using matplotlib
# Need to read: workspace.txt, planner_output.txt

import os
import numpy as np 
import matplotlib as mp 


def plot(data):
	a = 1


if __name__ == '__main__':
	dir = os.path.dirname(__file__)
		
	ws_file = os.path.abspath(os.path.join(dir, '..', 'workspace.txt'))
	plan_file = os.path.abspath(os.path.join(dir, '..', 'planner_output'))

	fw = open(ws_file,'r')
	print('Workspace file:')
	for line in fw:
		print(line)

	fp = open(plan_file,'r')
	print('Trajectory plan file:')
	for lin in fp:
		print(lin)

