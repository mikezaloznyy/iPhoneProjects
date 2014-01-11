Name: Mykhaylo (Mike) Zaloznyy
Project: Assignment 12 MiniBrowser Project (Hour 9 Activity 1)

Comments: I have implemented the following:
- text field to enter the url
- once the user finishes typing the url and clicks enter, keyboard goes away
- google.com is loaded by default
- favorite links bar with 3 presets: google, wikipedia and nba.com
- ability to hide or show favorite links bar
- back and forward history button
- activity indicator for loading of pages
- when user travels through links, the address bar changes

I am submitting 3 hours late due to the fact I have been stuck on making several functions work. (Please see below) I hope this project can be accepted without penalty. Please let me know if you have any issues running the project.

I must say that the difficulty of this project comparing to what we did before was much harder. I have gotten stuck multiple number of times. The hardest part was to make shouldStartLoadWithRequest(), webViewDidStartLoad() and webViewDidFinishLoad() functions to work. The functions themselves were tricky, but even when I implemented them, none of them worked. After hours of banging my head against the wall, I figured out that I had to add this line:

"[[self webView] setDelegate: self];" to my viewDidLoad() method.

One thing I did not get to implement was this: I wanted to automatically resize webView window once the favorites bar is hidden. From my research, it turns out this is something very difficult (if possible at all) to implement, so I gave up on that idea. Overall, I am happy with this project: this is already something I can show to friends, family or maybe even potential employers.