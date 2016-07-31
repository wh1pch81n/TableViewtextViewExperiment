//
//  ViewController.swift
//  TableViewTextViewExperiemtn
//
//  Created by Derrick  Ho on 7/31/16.
//  Copyright © 2016 Derrick  Ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

	override func viewDidLoad() {
		super.viewDidLoad()
		
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 2
	}

	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCellWithIdentifier(String(UITableViewCell), forIndexPath: indexPath)
		if let textView = cell.contentView.viewWithTag(123) as? UITextView {
			let mut = NSMutableAttributedString()
			let doubleSpace = NSMutableParagraphStyle()
			doubleSpace.paragraphSpacing = 8
			let singleSpace = NSMutableParagraphStyle()
			singleSpace.paragraphSpacing = 1
			mut.appendAttributedString(NSAttributedString(string: "The quick brown fox jumped over the lazy dog\n", attributes: [
				NSFontAttributeName : UIFont.systemFontOfSize(18),
				NSForegroundColorAttributeName : UIColor.blueColor(),
				NSParagraphStyleAttributeName : doubleSpace,
				]))
			mut.appendAttributedString(NSAttributedString(string: "This is an addres of street\n", attributes: [
				NSFontAttributeName : UIFont.systemFontOfSize(16),
				NSForegroundColorAttributeName : UIColor.grayColor(),
				NSParagraphStyleAttributeName : singleSpace,
				]))
			mut.appendAttributedString(NSAttributedString(string: "City and state\n", attributes: [
				NSFontAttributeName : UIFont.systemFontOfSize(16),
				NSForegroundColorAttributeName : UIColor.grayColor(),
				NSParagraphStyleAttributeName : doubleSpace,
				]))
			mut.appendAttributedString(NSAttributedString(string: "monday 9 - 5\n", attributes: [
				NSFontAttributeName : UIFont.systemFontOfSize(16),
				NSForegroundColorAttributeName : UIColor.darkGrayColor(),
				NSParagraphStyleAttributeName : singleSpace,
				]))
			mut.appendAttributedString(NSAttributedString(string: "tuesday 9 - 5", attributes: [
				NSFontAttributeName : UIFont.systemFontOfSize(16),
				NSForegroundColorAttributeName : UIColor.darkGrayColor(),
				NSParagraphStyleAttributeName : singleSpace,
				]))
			textView.textContainer.lineFragmentPadding = 0
			textView.textContainerInset = UIEdgeInsets(top: 4, left: 16, bottom: 4, right: 0)
			textView.attributedText = mut
			
			if indexPath.row == 0 {
				cell.separatorInset = UIEdgeInsets(top: 0, left: tableView.frame.width, bottom: 0, right: 0)
			}
		}
		return cell
	}
	
	func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
		return UITableViewAutomaticDimension
	}
	
	func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
		return 44
	}

}

