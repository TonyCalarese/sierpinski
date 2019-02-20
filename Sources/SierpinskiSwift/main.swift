
/*
	Author: Tony Calarese, Sean Eggar
	Class: CSI-380
	Assignment: Assignment 4
	Due Date: February 22, 2019 11:59 PM
	Certification of Authenticity:
	We certify that this is entirely our own work, except where we have given
	fully-documented references to the work of others. We understand the definition
	and consequences of plagiarism and acknowledge that the assessor of this
	assignment may, for the purpose of assessing this assignment:
	- Reproduce this assignment and provide a copy to another member of academic
	- staff; and/or Communicate a copy of this assignment to a plagiarism checking
	- service (which may then retain a copy of this assignment on its database for
	- the purpose of future plagiarism checking)
*/
//
//  main.swift
//  SierpinskiSwift
//
//  Runs the main sierpinski algorithm.

import SVGLibrary

// YOUR CODE HERE



func draw_triangle(_ p1: Point,_ p2: Point,_ p3: Point,_ figure: SVG) {
    figure.draw_line(p1.x, p1.y, p2.x, p2.y, color: "black")
    figure.draw_line(p2.x, p2.y, p3.x, p3.y, color: "black")
    figure.draw_line(p3.x, p3.y, p1.x, p1.y, color: "black")
}

// Draw a triangle between the three points and then recursively draw
// three more triangles in each of the three corners of the first triangle.
func sierpinski(_ p1: Point,_ p2: Point,_ p3: Point,_ level: Int,_ figure: SVG) {
    if level <= 0 {
        return
    }
    draw_triangle(p1, p2, p3, figure);
    sierpinski(p1, midpoint(p1, p2), midpoint(p1, p3), level - 1, figure)
    sierpinski(p2, midpoint(p1, p2), midpoint(p2, p3), level - 1, figure)
    sierpinski(p3, midpoint(p1, p3), midpoint(p2, p3), level - 1, figure)
}

// Start the algorithm off using a 300x300 canvas and its largest triangle
// going across that canvas
func main() {
    let figure: SVG = SVG(width: 300, height: 300)
    let p1: Point = (0, 300)
    let p2: Point = (150, 0)
    let p3: Point = (300, 300)
    sierpinski(p1, p2, p3, 5, figure)
    figure.write(filePath: "sierpinski.svg")
}

main()
