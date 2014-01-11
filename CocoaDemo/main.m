//
//  main.m
//  CocoaDemo
//
//  Created by Mykhaylo Zaloznyy on 2/28/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import <UIKit/UIKit.h>

int main(int argc, char *argv[]) {
    
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	// create two new NSStrings
	NSString *string1 = @"Hello World!";
	NSString *string2 = @"Hello Cocoa!";
	
	// display the original strings
	NSLog( @"string1 = '%@'", string1 );
	NSLog( @"string2 = '%@'", string2 );
	
	// compare the strings and display the result
	switch ( [string1 compare:string2] ) {
		case -1:
			NSLog( @"'%@' comes before '%@'.", string1, string2 );
			break;
		case 0:
			NSLog( @"'%@' is equal to '%@'.", string1, string2 );
			break;
		case 1:
			NSLog( @"'%@' comes after '%@'.", string1, string2 );
			break;
	}
	
	// convert our strings to upper- and lower-case
	NSLog( @"string1 in upper-case: '%@'", [string1 uppercaseString] );
	NSLog( @"string2 in lower-case: '%@'", [string2 lowercaseString] );
	
	// we need a number, so let's use pi
	NSNumber *pi = [[NSNumber alloc] initWithDouble: 3.14159];
	NSLog( @"pi is equal to %@.", [pi stringValue] );
	
	// release the memory used by our objects
	[string1 release];
	[string2 release];
	[pi release];
	
    int retVal = UIApplicationMain(argc, argv, nil, nil);
    [pool release];
    return retVal;
}
