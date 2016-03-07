# SI 363: Midterm Exam Review

## Overview

This midterm exam is structured to test your ability to detect and rectify common errors and problems with Swift and Xcode and right some basic Swift code. You are allowed to, and even encouraged, to use resources like stackoverflow (your bestest friend), your notes and most importantly the **compiler** inside Xcode to help you through this exam. Most people forget about using the compiler to their advantage, this crucial tool which will help you through all errors in your code, (although the messages might be slightly mysterious at times you should get familiar with the common ones).

**Note**: This review does not reflect the length of time required to complete the actual Midterm and is just a sample of how the exam will be formatted.

Going over past assignments (and office hours for questions) is your best bet to prepare for the midterm.

## Setup


### Xcode
In order to do this exam successfully you need at least Xcode 7.0 or later. Xcode Version 7.2.1 (7C1002) is most preferred. You can grab the right version from the Mac App Store for free [here](https://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12). 

**Question:** How do you check Xcode's version?

**Answer:** When you open Xcode the first time the version is shown on the 'splash screen'. You can also get to it by clicking Xcode in the menu bar and then **About Xcode**.

### Getting Started

For the actual midterm you will be provided a .zip file. Unarchive this and inside you will find a host of files including a .xcodeproj file. Opening this file will launch Xcode and setup your environment correctly. 

For the midterm review, I suggest clicking the Download Zip File (on the right side of your screen) and this is the same zip file and then open the .xcodeproj file from inside the archive. If you know your way around git, you can clone/fork this repo instead.

## Things That Will Be Tested
The Xcode project you get will be riddled with bugs and errors. Your job is to walk through all these intentionally made mistakes and fix all the bugs/errors to get the app to firstly build, and then run. The purpose of the app will become apparent to you after being able to run the app and also through the comments inside the code. You will also have to implement some simple blocks of code (similar to the assignments) as instructed by the comments. 

While this may seem like an all or nothing task, we will go through your code and count the number of things you caught and fixed even if your app doesn't build or run properly and you will get credit for this. So don't be overwhelmed with the errors, instead try to focus on fixing each bug/error one at a time. Implementing the code is also a great way to earn some points.

#### Approaching The Exam Successfully
These are some *hints* about how to approach the exam, use them if you feel they help you break down this big problem:
- The first thing you want to do before making any edits is make a copy of the original folder somewhere. That way you can always grab the original files if you mess something up beyond repair. 
- Once you open the project file, try building (⌘B). You will get a ton of compiler errors and warnings. You should focus on the compiler *errors* (the red ones) first.
- Many of the errors may be able to be fixed by using Xcode's suggestions. Take into account what Xcode is suggesting and see if it is appropriate or not. Fixing the errors is crucial because moving on without doing this is pretty difficult. Note: if you fix an error but Xcode is still complaining about it, try building (⌘B) again first. This may remove the error and you can move on.
- Once all the errors have been fixed try to see if there are warnings you know about or know how to fix, if you can't get rid of the warnings forget them and move on (they are only warnings, you can move on!)
- Now build and run the app (⌘R) or the play button on the top. Use the app as it was intended as far as possible.
- At this point your app will crash (several times), on each crash read the Xcode console output, try to decipher the meaning and guess where the error might be. Fix the bug and onto the next crash. These crashes will most likely be storyboard issues or otherwise simple to decipher.
- Now try to implement the various code blocks since your app is running properly. Implementing these will allow you to see appropriate data.

## Preparation for the Exam

Go over all the Swift and iOS topics we have covered in class and the assignments. It is more than likely that the errors you experience on the midterm and the code you reproduce is a replication of something seen on the assignments.

#### Fair Game
- Optionals and Incorrect Unwrapping
- Code misplacement/Unbalanced braces
- Array out of bounds, wrong variable usage and other common programmer errors
- Outlet and Action Connections
- UITableView (prototype) cells
- Downloading content from a website and everything that goes with that. (Hint: NSAppTransportSecurity)
- Delegate and Datasource Errors

#### Things We Won't Test
- Your knowledge/memorization of the APIs. You can use autocomplete and the internet to lookup function declarations and header documentation for the purpose of the function
- Auto Layout issues. (If you run into these you probably modified the storyboard in a way that was not intended)
- Any other Swift features we haven't covered in class like generics, reference cycles, etc. We also won't test your knowledge of protocols directly even though we covered it, but understanding the concepts will help you immensely with the other bugs/issues.

## Debugging

A key part of the exam is your ability to find, debug and fix bugs and errors.
There are two main aspects to debugging your apps:
- **Printing:** I cannot emphasize how important print statements can be. They will help you through difficult to catch bugs and will help do some general bookkeeping of how the app is running. Litter your code with print statements to find possible bugs. We will also ignore all the prints that you leave in your submission so don't worry about deleting all of them. If you want to learn more about printing go [here](https://developer.apple.com/library/ios/documentation/Swift/Reference/Swift_StandardLibrary_Functions/index.html#//apple_ref/swift/func/s:FSs5printFTGSaP__9separatorSS10terminatorSS_T_).
- **Debugging With Breakpoints**: The debugger in Xcode (LLDB) is a fantastic tool to be familiar with. You are not required to know this but if you are familiar with it you will be in a really good place for the exam and future assignments. 

####Some tips on using LLDB (Optional):
- Use the `po <expression>` command on the console to print the contents of a variable or evaluate the result of some statement, where `<expression>` is the name of the variable or statement.
- Use the mini window next to the console to inspect variables and current state of your app.
- Use `F6` to go over to the next line of code and ⌘ ⌃ Y (that's command, control, Y) to continue the app in normal state.

## Final Thoughts
Make sure you are comfortable with Xcode's interface. Remember the demos and assignments and try to understand different compiler errors. For crashes make sure you look at the console
for the error messages. 
The solution of where the bugs were in the review material is available but try to solve it on your own before verifying your solution as its really good practice.

Good Luck!  :)

