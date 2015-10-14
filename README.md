# SI 663: Midterm Exam Review

## Overview

This midterm exam is structured to test your ability to detect and rectify common errors and problems with Swift and Xcode. The idea is to get a better sense of fixing issues that have  come up during your assignments. You are allowed to, and even encouraged, to use resources like stackoverflow, your notes and most importantly the **compiler** inside Xcode to help you through this exam.

## Setup


### Xcode
In order to do this exam successfully you need at least Xcode 7.0 or later. Xcode Version 7.0.1 (7A1001) is most preferred. You can grab the right version from the Mac App Store for free [here](https://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12). 

**Question:** How do you check Xcode's version? 

**Answer:** When you open Xcode the first time the version is shown on the 'splash screen'. You can also get to it by clicking Xcode in the menu bar and then **About Xcode**.

**ProTip:** Make sure you have the right version of Xcode before the exam starts. If you are using a Mac in the lab, they have the right version of Xcode already installed.

### Getting Started

For the actual midterm you will be provided a .zip file. Unarchive this and inside you will find a host of files including a .xcodeproj file. Opening this file will launch Xcode and setup your environment correctly. 

For the midterm review, I suggest clicking the Download Zip File (on the right side of your screen) and this is the same zip file and then open the .xcodeproj file from inside the archive. If you know your way around git, you can clone/fork this repo instead.

## Things That Will Be Tested
The Xcode project you get will be riddled with bugs and errors. Your job is to walk through all these intentionally made mistakes and fix all the bugs/errors to get the app to firstly build, and then run. The purpose of the app will become apparent to you after being able to run the app and also through the comments inside the code. 

While this may seem like an all or nothing task, we will go through your code and count the number of things you caught and fixed even if your app doesn't build or run properly and you will get credit for this. So don't be overwhelmed with the errors, instead try to focus on fixing each one at a time.
#### Approaching The Exam Successfully
These are some *hints* about how to approach the exam, use them if you feel they help you break down this big problem:
- The first thing you want to do before making any edits is make a copy of the original folder somewhere. That way you can always grab the original files if you mess something up beyond repair. 
- Once you open the project file, try building (⌘B). You will get a ton of compiler errors and warnings. You should focus on the compiler *errors* (the red ones) first.
- Many of the errors may be able to be fixed by using Xcode's suggestions. Take into account what Xcode is suggesting and see if it is appropriate or not. Fixing the errors is crucial because moving on without doing this is pretty difficult. Note: if you fix an error but Xcode is still complaining about it, try building (⌘B) again first. This may remove the error and you can move on.
- Once all the errors have been fixed try to see if there are warnings you know about or know how to fix, if you can't get rid of the warnings forget them and move on (they are only warnings, you can move on!)
- Now build and run the app (⌘R) or the play button on the top. Use the app as it was intended as far as possible.
- At this point your app will crash (several times), on each crash read the Xcode output, try to decipher the meaning and guess where the error might be. Fix the bug by doing the right thing.
- Finally, once the app runs and doesn't crash anymore there may still be lingering bugs that show the wrong data or the wrong things. 
- If you are at this point you have reached the most tricky part and have got the biggest chunk of errors. See the **Debugging** section below for how to catch and fix these errors. Note that the **Debugging** section is not just useful for this part but can help you throughout your exam.


## Preparation for the Exam


