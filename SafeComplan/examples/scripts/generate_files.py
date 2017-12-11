#!/usr/bin/python

# Script to generate motion primitives files for SafeComplan run
# Output: workspace.txt, 2d_template.txt, obstacle.txt
# Note: workspace may be easier to edit in text

import os
import numpy as np
import random
import matplotlib  
import matplotlib.pyplot as plt 

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

	arm_l0 = init_posy
	params = [x_max, y_max, n_agents, init_posx, init_posy, final_posx, final_posy, num_steps, max_ext, max_cost]
	return arm_l0, params


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

		self.x_max = self.ws_params[0]
		self.y_max = self.ws_params[1]
		self.n_agents = self.ws_params[2]
		self.init_posx = self.ws_params[3]
		self.init_posy = self.ws_params[4]
		self.final_posx = self.ws_params[5]
		self.final_posy = self.ws_params[6]
		self.num_steps = self.ws_params[7]
		self.max_ext = self.ws_params[8]
		self.max_cost = self.ws_params[9]

		self.arm_l0 = arm_params

		self.ctr = 1
		self.cost = 0.3
		self.duration = 1

		# Clean out the file:
		open(self.fname, 'w').close()

	def write_mp_length(self, xy):
		x, y = xy
		fw = open(self.fname, 'a')
		fw.write('ID:' + str(self.ctr) + '\n')
		fw.write('q_i:[0]\n')
		fw.write('q_f:[0]\n')
		fw.write('pos_f:[' + str(x) + ', ' +str(y) +']\n')
		fw.write('cost:' + str(self.cost) + '\n')
		fw.write('duration:' + str(self.duration) + '\n')
		fw.write('swath: ')
		for ylen in range(y+1):
			fw.write('[' + str(x) + ', ' + str(ylen) + ']' )
			if ylen == y:
				fw.write('')
			else:
				fw.write('; ')

		fw.write('\n\n')
		self.ctr = self.ctr + 1 


	def write_mp_arc(self, xp, yp, xmp, ymp, flag):
		x = xp
		y = yp
		fw = open(self.fname, 'a')
		fw.write('ID:' + str(self.ctr) + '\n')
		fw.write('q_i:[0]\n')
		fw.write('q_f:[0]\n')
		fw.write('pos_f:[' + str(x) + ', ' +str(y) +']\n')
		fw.write('cost:' + str(self.cost) + '\n')
		fw.write('duration:' + str(self.duration) + '\n')
		fw.write('swath: ')

		mposx = []
		mposy = []
		for j in range(len(xmp)):
			if xmp[j] >= 0:
				mposx.append(xmp[j])
				mposy.append(ymp[j])

		for i in range(len(mposx)):
			if flag ==1:				
				fw.write('[' + str(mposx[i]) + ', ' + str(mposy[i]) + ']' )
			else:
				fw.write('[' + str(-mposx[i]) + ', ' + str(mposy[i]) + ']' )
			
			if i == len(mposx)-1:
				fw.write('')
			else:
				fw.write('; ')

		fw.write('\n\n')
		self.ctr = self.ctr + 1 


	def gen_mp(self):
		x0 = self.init_posx
		y0 = self.init_posy

		l_max = y0 + self.max_ext
		xmp = []
		ymp = []
		y = y0
		x = 0
		fk = 0
		r = self.arm_l0
		flag = 1

		for yy in range(y0,l_max+1,1):
			self.write_mp_length([x, yy-y0])

	
		xmp = []
		ymp = []
		theta = 0
		x = 0
		y = r
		fk = 0

		xmp.append(x)
		ymp.append(y - y0)
	
		while theta < np.pi*80/180:
			
			if theta <= np.pi/4:
				if fk <= 0:
					fk = fk + 2*x - 2 *y + 5
					
					x = x + 1
					y = y - 1
					
					xmp.append(x)
					ymp.append(y - y0)
					flag = 1
					self.write_mp_arc(x, y-y0, xmp, ymp, flag)
					
					xmp.append(-x)						
					ymp.append(y - y0)
					flag = 0
					self.write_mp_arc(-x, y-y0, xmp, ymp, flag)
					

				else:
					fk = fk + 2*x + 3
					x = x + 1
					y = y + 0

					xmp.append(x)
					ymp.append(y - y0)
					flag = 1
					self.write_mp_arc(x, y-y0, xmp, ymp, flag)
					
					xmp.append(-x)						
					ymp.append(y - y0)						
					flag = 0
					self.write_mp_arc(-x, y-y0, xmp, ymp, flag)
				

			elif theta > np.pi/4 and theta < np.pi*80/180:
				if fk <= 0:
					fk = fk - 2 *y + 3
					x = x + 0						
					y = y - 1

					xmp.append(x)
					ymp.append(y - y0)
					flag = 1
					self.write_mp_arc(x, y-y0, xmp, ymp, flag)
					
					xmp.append(-x)						
					ymp.append(y - y0)						
					flag = 0
					self.write_mp_arc(-x, y-y0, xmp, ymp, flag)
				else:
					fk = fk + 2*x - 2*y + 5
					x = x + 1						
					y = y - 1

					xmp.append(x)
					ymp.append(y - y0)
					flag = 1
					self.write_mp_arc(x, y-y0, xmp, ymp, flag)
					
					xmp.append(-x)						
					ymp.append(y - y0)						
					flag = 0
					self.write_mp_arc(-x, y-y0, xmp, ymp, flag)
			theta = np.arctan2(np.abs(x), np.abs(y))
			#print('xs: '+str(xmp) + '\nys: '+str(ymp) + '\ntheta: ' + str(theta))						
		
	

		#self.plot_arc(xmp, ymp)				

			

	def plot_arc(self, xp, yp):		

		xt = [x+0.5+self.init_posx for x in xp]
		yt = [y+0.5+self.init_posy for y in yp]		

		fig = plt.figure()
		ax = fig.gca()
		
		plt.xlim(0, self.x_max)
		plt.ylim(0, self.y_max)
		plt.xticks(np.arange(0, self.x_max, 1.0))
		plt.yticks(np.arange(0, self.y_max, 1.0))
		ax.grid(color='k', linestyle='-', linewidth=2)
		plt.grid(True)		
		plt.scatter(xt, yt, c='g', s=300)	

		plt.show()



		


if __name__ == '__main__':
	dir = os.path.dirname(__file__)
		
	ws_file = os.path.abspath(os.path.join(dir, '..', 'workspace.txt'))
	mp_file = os.path.abspath(os.path.join(dir, '..', '2d_template.txt'))
	ob_file = os.path.abspath(os.path.join(dir, '..', 'obstacle.txt'))

	ws = gen_workspace(ws_file)
	
	num_divisions = 30 # Number of divisions in the map
	goal_x = int(num_divisions*random.uniform(0.41,0.66))
	goal_y = int(num_divisions*random.uniform(0.35,0.66))
	arm_l0, ws_params = calc_lengths(num_divisions, goal_x, goal_y)

	gen_obstacle(ob_file, num_divisions)

	ws.change_params(ws_params)

	ws.gen_txt()

	#prim = motion_prim(mp_file, ws_params, arm_l0)

	#prim.gen_mp()


	






