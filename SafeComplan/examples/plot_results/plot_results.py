#!/usr/bin/python

# Script to plot results of Third Arm SafeComplan using matplotlib
# Need to read: workspace.txt, planner_output.txt

import os
import numpy as np 
import matplotlib  
import matplotlib.pyplot as plt

# Plotting function
def plot(ws_data, traj_data):
	
	xlim, ylim, init_x, init_y, final_x, final_y = ws_data
	xtraj, ytraj = traj_data

	xt = [x+0.5 for x in xtraj]
	yt = [y+0.5 for y in ytraj]

	fig = plt.figure()
	ax = fig.gca()
	
	plt.xlim(0, xlim)
	plt.ylim(0, ylim)
	plt.xticks(np.arange(0, xlim, 1.0))
	plt.yticks(np.arange(0, ylim, 1.0))
	ax.grid(color='k', linestyle='-', linewidth=2)
	plt.grid(True)

	plt.scatter(init_x+0.5, init_y+0.5, c='k', s=400)
	plt.scatter(final_x+0.5, final_y+0.5, c='g', s=400)
	plt.scatter(xt, yt, c='b', s=300, alpha=0.3)

	plt.show()


# Get workspace plotting data:
def gen_ws(data):
	xlim = int(data[0]) + 1
	ylim = int(data[1]) + 1
	n_agents = int(data[2])

	init = data[3]
	splitind = init.find(',')
	init_x = int(init[0 : splitind])
	init_y = int(init[splitind+1 : len(init)])

	final = data[4]
	splitind = final.find(',')
	final_x = int(final[0 : splitind])
	final_y = int(final[splitind+1 : len(final)])

	return xlim, ylim, init_x, init_y, final_x, final_y


# Extract trajectory data:
def gen_traj(data):
	xs = []
	ys = []

	for strs in data:
		if strs[0] == 'x' and strs[2] != 'f':
			split = strs.find(',')
			xs.append(int(strs[split+1 : len(strs)]))
		elif strs[0] == 'y' and strs[2] != 'f':
			split = strs.find(',')
			ys.append(int(strs[split+1 : len(strs)]))

	return xs, ys


if __name__ == '__main__':
	dir = os.path.dirname(__file__)
		
	ws_file = os.path.abspath(os.path.join(dir, '..', 'workspace.txt'))
	plan_file = os.path.abspath(os.path.join(dir, '..', 'planner_output'))
	
	#with open (ws_file, 'r') as myfile:
	#	data=myfile.read().replace('\n', '')

	fw = open(ws_file,'r')	
	ws = []
	for lin in fw:
		lin = lin.replace('\n', '')
		lin = lin.replace(' ', ',')
		ws.append(lin)
	
	ws_data = gen_ws(ws)
	
	ft = open(plan_file,'r')
	tr = []
	for line in ft:
		line = line.replace('\n', '')
		line = line.replace(' ', ',')
		tr.append(line)
	#print(tr)	
		
	traj_data = gen_traj(tr)
		
	plot(ws_data, traj_data)


	# fp = open(plan_file,'r')
	# print('Trajectory plan file:')
	# for lin in fp:
	# 	print(lin)

