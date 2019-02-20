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
//  SVG.swift
//  SierpinskiSwift
//
//  A class that can be used to generate
//  a basic SVG file.

import Foundation

open class SVG {
    
    // the content that will be written to the SVG file
    var content: String
    
    // Initialize the SVG file with commands that will create a
    // width x height canvas
    public init(width: UInt, height: UInt) {
        content = ""
        content += "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"
        content += "<svg version=\"1.1\" baseProfile=\"full\" width=\"\(width)\" height=\"\(height)\" xmlns=\"http://www.w3.org/2000/svg\">\n"
    }
    
    
    public func draw_ellipse(x: UInt, y: UInt, width: UInt, height: UInt, color: String)
    {
        content += "<ellipse cx=\(x) cy=\(y) rx=\(width/2) ry=\(height/2) fill=\(color) />\n"
    }
    
    public func draw_rectangle(x: UInt, y: UInt, width: UInt, height: UInt, color: String)
    {
        content += "<rect cx=\(x) y=\(y) width=\(width) height=\(height) fill=\(color) />\n"
    }
    
    public func draw_line(_ x1: UInt,_ y1: UInt,_ x2: UInt,_ y2: UInt, color: String)
    {
        content += "<line x1=\"\(x1)\" y1=\"\(y1)\" x2=\"\(x2)\" y2=\"\(y2)\" stroke=\"\(color)\" />\n"
    }
    
    public func clear_graphics()
    {
        // set the contents to an empty string so theres nothing in the svg
        content = ""
    }
    
    // Write the SVG file to disk
    public func write(filePath: String) {
        content += "</svg>\n"
        do {
            // write contents to file
            try content.write(toFile: filePath, atomically: true, encoding: String.Encoding.utf8)
        } catch {
            // print error
            print("Error writing svg file")
        }
    }
}
