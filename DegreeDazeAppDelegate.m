//
//  DegreeDazeAppDelegate.m
//  DegreeDaze
//
//  Created by Charles Feduke on 2/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "DegreeDazeAppDelegate.h"
@class DataRetriever

static NSArray *months;

@interface DegreeDazeAppDelegate()
-(void)cleanUpFetch;
@end

@implementation DegreeDazeAppDelegate

@synthesize window;

-(id)init {
	[super init];
	if (!months) {
		months = [[NSArray alloc] initWithObjects:@"Jan", @"Feb", @"Mar", @"Apr", @"May", @"Jun", @"Jul", @"Aug", @"Sep", @"Oct", @"Nov", @"Dec", nil];
	}
	
	climateRecords = [[NSMutableDictionary alloc] init];
	for (NSString *monthName in months) {
		NSMutableDictionary *newRecord = [[NSMutableDictionary alloc] init];
		[climateRecords setObject:newRecord forKey:monthName];
		[newRecord release];
	}
	
	return self;
}

-(NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
	return [months count];
}

-(id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tc row:(NSInteger)row {
	NSString *identifier = [tc identifier];
	NSString *month = [months objectAtIndex:row];
	
	if ([identifier isEqual:@"month"]) {
		return month;
	}
	
	NSDictionary *cr = [climateRecords objectForKey:month];
	
	return [cr objectForKey:identifier];
}

-(void)dealloc {
	[months release];
	[climateRecords release];
	[super dealloc];
}

-(IBAction)fetchCancel:(id)sender {
	NSLog(@"fetchCancel:");
}

-(void)cleanUpFetch {
	[dataRetriever release];
	dataRetriever = nil;
	[data release];
	data = nil;
	[fetchButton setState:NO];
	[progressIndicator stopAnimation:nil];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	// Insert code here to initialize your application 
}

#pragma mark Application delegate methods
-(BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender {
	return YES;
}

@end
