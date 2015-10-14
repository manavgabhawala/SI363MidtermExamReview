//
//  ViewController.swift
//  MidtermExamReview
//
//  Created by Manav Gabhawala on 10/14/15.
//  Copyright © 2015 Manav Gabhawala. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate
{
	let tableView: UITableView
	
	let someArray : [Int] = ["First Item", "Second Item", "Third Item", "Fourth Item"]
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}
	
	func numberOfSectionsInTableView(tableView: UITableView) -> Int
	{
		return 1
	}
	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
	{
		let cell = UITableViewCell(style: .Default, reuseIdentifier: "cell")
		cell.textLabel.text = someArray[indexPath.row]
	}
	func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
	{
		// On every tap we shuffle the items arround
		tableView.cellForRowAtIndexPath(indexPath)!.highlighted = false
		shuffle()
	}
	
	func shuffle
	{
		for i in 0..<someArray.count
		{
			// Don't worry about this line. It generates a random number in the range [0, size of someArray). You can assume it is right.
			let random = Int(arc4random_uniform(UInt32(someArray.count)))
			
			let temp = someArray[i]
			someArray[i] = someArray[random]!
			someArray[random]! = temp
		}
	}
}

