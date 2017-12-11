#!/usr/bin/python

# Script to generate motion primitives files for SafeComplan run
# Output: workspace.txt, 2d_template.txt, obstacle.txt
# Note: workspace may be easier to edit in text

import os
import numpy as np
import random 

class gen_workspace():

	def __init__(self, fname):
		self.fname = fname

		self.x_max = 10
		self.y_max = 10
		self.n_agents = 1
		self.init_posx = 5
		self.init_posy = 3
		self.final_posx = 8
		self.final_posy = 8
		self.num_steps = 10
		self.max_ext = 7
		self.max_cost = 10

		self.params = [self.x_max, self.y_max, self.n_agents, self.init_posx, self.init_posy, self.final_posx, self.final_posy, self.num_steps, self.max_ext, self.max_cost]


	def change_params(self, ws_params):		

		for i in range(len(self.params)):
			self.params[i] = ws_params[i]

	def gen_txt(self):
		fw = open(self.fname, 'w')

		# Write first three lines:
		for i in range(3):
			fw.write(str(self.params[i]))
			fw.write('\n')

		# Write init_pos:
		initstr = str(self.params[3])+' '+str(self.params[4])+'\n'
		fw.write(initstr)

		# Write final_pos:
		finalstr = str(self.params[5])+' '+str(self.params[6])+'\n'
		fw.write(finalstr)

		#Write other lines:
		for i in range((len(self.params)-3), len(self.params), 1):
			fw.write(str(self.params[i]))
			fw.write('\n')

	def return_params(self):
		return self.params


def calc_lengths(num_divisions, goal_x, goal_y):
	x_max = num_divisions
	y_max = num_divisions
	n_agents = 1
	init_posx = int(num_divisions/2)
	init_posy = int(num_divisions/3)
	final_posx = goal_x
	final_posy = goal_y
	num_steps = int(np.abs(final_posx - init_posx) + np.abs(final_posy - init_posy) ) + 1
	max_ext = int(num_divisions/3) + 1
	max_cost = num_divisions

	params = [x_max, y_max, n_agents, init_posx, init_posy, final_posx, final_posy, num_steps, max_ext, max_cost]
	return params


def gen_obstacle(fname, n):
	#For now the obstacle map is empty
	fw = open(ob_file,'w')
	obs_x = range(int(n/5), int(n/3)+1, 1)
	obs_y = range(int(0.4*n), int(0.6*n)+1, 1)

	for i in range(len(obs_x)):		
		for j in range(len(obs_y)):
			fw.write(str(obs_x[i]))
			fw.write(' ')
			fw.write(str(obs_y[j]))
			fw.write('\n')


class motion_prim():
	def __init__(self, filename, ws_parameters, arm_params):
		self.fname = filename
		self.ws_params = ws_parameters


if __name__ == '__main__':
	dir = os.path.dirname(__file__)
		
	ws_file = os.path.abspath(os.path.join(dir, '..', 'workspace.txt'))
	mp_file = os.path.abspath(os.path.join(dir, '..', '2d_template.txt'))
	ob_file = os.path.abspath(os.path.join(dir, '..', 'obstacle.txt'))

	ws = gen_workspace(ws_file)
	
	num_divisions = 30 # Number of divisions in the map
	goal_x = int(num_divisions*random.uniform(0.41,0.66))
	goal_y = int(num_divisions*random.uniform(0.35,0.66))
	ws_params = calc_lengths(num_divisions, goal_x, goal_y)

	gen_obstacle(ob_file, num_divisions)

	ws.change_params(ws_params)

	ws.gen_txt()


	






