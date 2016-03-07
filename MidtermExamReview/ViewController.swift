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
	@IBOutlet var tableView: UITableView!
	
	let someArray : [Int] = ["First Item", "Second Item", "Third Item", "Fourth Item"]
	var myImage: UIImage?
	
	override func viewDidLoad()
	{
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		tableView.dataSource = self
		tableView.delegate = self
		tableView.reloadData()
		let task = NSURLSession.sharedSession().dataTaskWithURL(NSURL(string: "http://vpcomm.umich.edu/assets/brand/home/logo.png")!) { data, response, error in
			if error != nil
			{
				print(error!.localizedDescription)
			}
			else if let data = data, let image = UIImage(data: data)
			{
				self.myImage = image
				
				// Hint the line below needs to be used differently because its a UI update (and this isn't on the main thread)
				self.tableView.reloadRowsAtIndexPaths([NSIndexPath(forRow: self.someArray.count, inSection: 0)], withRowAnimation: .Automatic)
			}
		}
		task.resume()
	}
	
	func numberOfSectionsInTableView(tableView: UITableView) -> Int
	{
		return 1
	}
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
	{
		return someArray.count + 1
	}
	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
	{
		if indexPath.row < someArray.count
		{
			return UITableViewCell()
			// Implement this block of code and remove the line above it is only
			// here so that the compiler doesn't complain. You need to create the cell and set
			// its textLabel to have the string from the array.
		}
		else
		{
			let cell = tableView.dequeueReusableCellWithIdentifier("imageCell") as! ImageCell
			cell.iconView.image = myImage?
			return cell
		}
	}
	func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
	{
		// On every tap we shuffle the items arround
		tableView.cellForRowAtIndexPath(indexPath)!.highlighted = false
		shuffle()
		tableView.reloadSections(NSIndexSet(index: 0), withRowAnimation: .Automatic)
	}
	
	// Don't worry about this function
	func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
	{
		if indexPath.row < someArray.count
		{
			return 44.0
		}
		return 200.0
	}
	
	func shuffle()
	{
		for i in 0..<someArray.count
		{
			// Don't worry about this line. It generates a random number in the range [0, size of someArray). You can assume it is right.
			let random = Int(arc4random_uniform(UInt32(someArray.count)))
			
			let temp = someArray[i]
			someArray[i] = someArray[random]
			someArray[random] = temp
		}
	}
	@IBAction func shufflePressed(sender: UIBarButtonItem)
	{
		shuffle()
		tableView.reloadSections(NSIndexSet(index: 0), withRowAnimation: .Automatic)
	}
}

