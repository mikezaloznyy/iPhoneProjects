//
//  DetailViewController.m
//  FinalProject
//
//  Created by Mykhaylo Zaloznyy on 5/22/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import "DetailViewController.h"
#import "GasManager.h"


@implementation DetailViewController

@synthesize gasManagerObj;

/*
// Override initWithNibName:bundle: to load the view using a nib file then perform additional customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view.
- (void)viewDidLoad {
    [super viewDidLoad];
	
}
*/

- (void) viewWillAppear:(BOOL)animated {
	
	[super viewWillAppear:animated];
	
	self.title = gasManagerObj.gasStationName;
	
	[tableView reloadData];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}


- (void)dealloc {
	[tableView release];
	[gasManagerObj release];
    [super dealloc];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tblView {
    return 4;
}


- (NSInteger)tableView:(UITableView *)tblView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tblView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:CellIdentifier] autorelease];
    }
	
	switch(indexPath.section) {
		case 0:
			[[cell textLabel] setText: gasManagerObj.gasStationName];
			break;
		case 1:
			[[cell textLabel] setText: [NSString stringWithFormat:@"%@", gasManagerObj.pricePerGallon]];
			break;
		case 2:
			[[cell textLabel] setText: [NSString stringWithFormat:@"%d", gasManagerObj.mileage]];
			break;
		case 3:
			[[cell textLabel] setText: [NSString stringWithFormat:@"%@", gasManagerObj.numOfGallons]];
			break;
	}
	
	return cell;
}

- (NSString *)tableView:(UITableView *)tblView titleForHeaderInSection:(NSInteger)section {
	
	NSString *sectionName = nil;
	
	switch (section) {
		case 0:
			sectionName = [NSString stringWithFormat:@"Gas Station Name"];
			break;
		case 1:
			sectionName = [NSString stringWithFormat:@"Price Per Gallon"];
			break;
		case 2:
			sectionName = [NSString stringWithFormat:@"Mileage"];
			break;
		case 3:
			sectionName = [NSString stringWithFormat:@"Number of Gallons"];
			break;
	}
	
	return sectionName;
}

@end
