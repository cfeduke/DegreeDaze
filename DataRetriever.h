//
//  DataRetriever.h
//  DegreeDaze
//
//  Created by Charles Feduke on 2/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "DegreeDazeAppDelegate.h"

@interface DataRetriever : NSObject {
	NSURLConnection *connection;
	NSMutableData *data;
}

-(id)initWithDataTarget:(NSMutableData *)d {
	data = d;
}

-(void)dealloc {
	[connection release];
	[super release];
}

@end
