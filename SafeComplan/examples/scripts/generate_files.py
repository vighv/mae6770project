#!/usr/bin/python

# Script to generate motion primitives files for SafeComplan run
# Output: workspace.txt, 2d_template.txt, obstacle.txt
# Note: workspace may be easier to edit in text

import os
import numpy as np 

class gen_workspace():

	def __init__(self, fname):
		self.fname = fname

		self.x_max = 10
		self.y_max = 10
		self.n_agents = 1
		self.init_posx = 5
		self.init_posy = 5
		self.final_posx = 8
		self.final_posy = 8
		self.num_steps = 7
		self.max_ext = 5
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
		initstr = str(self.init_posx)+' '+str(self.init_posy)+'\n'
		fw.write(initstr)

		# Write final_pos:
		finalstr = str(self.final_posx)+' '+str(self.final_posy)+'\n'
		fw.write(finalstr)

		#Write other lines:
		for i in range((len(self.params)-3), len(self.params), 1):
			fw.write(str(self.params[i]))
			fw.write('\n')






if __name__ == '__main__':
	dir = os.path.dirname(__file__)
		
	ws_file = os.path.abspath(os.path.join(dir, '..', 'workspace.txt'))
	mp_file = os.path.abspath(os.path.join(dir, '..', '2d_template.txt'))
	ob_file = os.path.abspath(os.path.join(dir, '..', 'obstacle.txt'))

	ws = gen_workspace(ws_file)
	ws.gen_txt()




