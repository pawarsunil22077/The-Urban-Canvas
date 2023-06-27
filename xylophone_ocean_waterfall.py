#Urban Canvas

#importing the necessary libraries
import sys
import os
import time
import math
import random

#set up the canvas
def canvas_setup():
	width = input("Enter the width of the canvas: ")
	length = input("Enter the length of the canvas: ")
	area = int(width) * int(length)
	print("------------------")
	print("The area of the canvas is: " + str(area) + "square feet")
	print("------------------")

#add shapes to the canvas
def add_shapes():
	#prompt user to add shapes to the canvas
	shapeType = input("What type of shape are you adding to the canvas? ")
	#if user inputs a valid shape
	if shapeType in ["triangle", "rectangle", "circle", "square"]:
		#prompt user to enter the length and width of the shape
		length = input("Enter the length of the "+str(shapeType)+": ")
		width = input("Enter the width of the "+str(shapeType)+": ")
		#calculate the area of the shape
		if shapeType == "triangle":
			areaShape = int(length) * int(width) / 2
		elif shapeType == "rectangle":
			areaShape = int(length) * int(width)
		elif shapeType == "circle":
			areaShape = math.pi * int(length) * int(length)
		elif shapeType == "square":
			areaShape = int(length) * int(length)
		print("------------------")
		print("The area of the "+str(shapeType)+" is: "+str(areaShape)+" square feet")
		print("------------------")
	#if user inputs an invalid shape
	else:
		print("Invalid shape. Please try again.")

#fill in the canvas with colors
def fill_canvas():
	#prompt user for a color to fill the canvas
	fill_color = input("Enter a color to fill the canvas: ")
	#generate random shades of the selected color
	shades = random.sample(range(256),3)
	#generate hexadecimal value of the color
	hex_color = '#%02x%02x%02x' % (shades[0], shades[1], shades[2])
	#fill the canvas with the generated colors
	print("------------------")
	print("Filling the canvas with "+str(fill_color)+" ...")
	print("------------------")
	time.sleep(2)
	print("Canvas filled with "+ str(hex_color))
	print("------------------")

#main function
def main():
	canvas_setup()
	add_shapes()
	fill_canvas()

main()