//
//  DegreeDazeAppDelegate.h
//  DegreeDaze
//
//  Created by Charles Feduke on 2/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface DegreeDazeAppDelegate : NSObject <NSApplicationDelegate, NSTableViewDataSource> {
    NSWindow *window;
	
	IBOutlet NSTextField *latField;
	IBOutlet NSTextField *lonField;
	IBOutlet NSTableView *tableView;
	IBOutlet NSButton *fetchButton;
	IBOutlet NSProgressIndicator *progressIndicator;
	
	NSMutableDictionary *climateRecords;
	
	NSMutableData *data;
	DataRetriever *dataRetriever;
}

@property (assign) IBOutlet NSWindow *window;

-(IBAction)fetchCancel:(id)sender;

@end
