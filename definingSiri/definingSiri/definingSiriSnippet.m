//
//  definingSiriSnippet.m
//  definingSiri
//
//  Created by Kepler Sticka-Jones on 2/4/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "definingSiriSnippet.h"

@implementation definingSiriSnippet

- (id)view
{
	return _view;
}

- (void)dealloc
{
	[_view release];
	[super dealloc];
}

- (id)initWithProperties:(NSDictionary*)props;
{
	// NSLog(@"[definingSiriSnippet initWithProperties:'%@']", props);

	if ((self = [super init]))
	{
		if (![[NSBundle bundleForClass:[self class]] loadNibNamed:@"definingSiriNib" owner:self options:nil])
		{
			NSLog(@"Failed to load nib file.");
			return NO;
		}
		_view = [_nib retain]; 
		[_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[props objectForKey:@"link"]]]];
	}
	return self;
}

@end