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
//  Point.swift
//  SierpinskiSwift
//
//  A tuple representing a basic point in two-dimensional space.
//

public typealias Point = (x: UInt, y: UInt)

// The midpoint between two Points.
public func midpoint(_ p1: Point, _ p2: Point) -> Point {

    var midpoint: Point
    midpoint.x = (p1.x + p2.x)/2
    midpoint.y = (p1.y + p2.y)/2

    return midpoint

}
