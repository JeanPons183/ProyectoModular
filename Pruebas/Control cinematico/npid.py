#!/usr/bin/env python3
import rospy
import numpy as np

class nPID:
	def __init__(self,n=3,beta=1):
		
		self.w = np.random.rand(n,1)		# Una lista de n pesos inicializados aleatorio
		self.beta = beta					# Bias
		self.y = 0							# Salida
		
		self.P = np.diag(np.ones(n))*10		# Inicializar matriz de n valores para los pesos *10?, sera el fit
		self.Q = np.diag(np.ones(n))		# inicializa los valores de la diagonal en 1
		self.R = 0.1						# Que es R?

	def control_u(self, x,alpha=0.05):
		self.alpha = alpha
		self.v = np.dot(self.w.T,x)
		self.y = np.tanh(self.v*self.alpha)
		return self.y*self.beta
		
	def fit(self,error,x,eta=0.01):
		H = self.get_H(x)
		H = H.reshape((3,1))
		PH = np.dot(self.P,H)
		matriz = self.R + np.dot(H.T,PH)
		inv = np.linalg.inv(matriz)
		k = np.dot(PH,inv)
		
		delta_w = eta*np.dot(k,error)
		self.w = self.w+ delta_w
		self.P = self.P - np.dot(k,np.dot(H.T, self.P)) + self.Q
		
	def get_H(self,x):
		del_phi = (1 - self.y*self.y)*x*self.beta*self.alpha
		return del_phi
