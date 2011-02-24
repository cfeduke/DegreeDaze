//
//  DataRetriever.m
//  DegreeDaze
//
//  Created by Charles Feduke on 2/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "DataRetriever.h"


@implementation DataRetriever
-(id)initWithDataTarget:(NSMutableData *)d {
	data = d;
}

-(void)dealloc {
	if (connection != nil) {
		[connection release];
		connection = nil;
	}
	
	[super release];
}


@end
