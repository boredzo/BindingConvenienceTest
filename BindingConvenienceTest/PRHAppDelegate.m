//
//  PRHAppDelegate.m
//  BindingConvenienceTest
//
//  Created by Peter Hosey on 2011-11-12.
//  Copyright (c) 2011 Peter Hosey. All rights reserved.
//

#import "PRHAppDelegate.h"

#import "PRHValuesOwner.h"
#import "PRHHueView.h"
#import "PRHBindableNonView.h"

@implementation PRHAppDelegate

@synthesize window = _window;
@synthesize hueView = _hueView;
@synthesize bindableNonView = _bindableNonView;
@synthesize valuesOwner = _valuesOwner;

- (void) awakeFromNib {
	[self.hueView bind:@"hueDegrees"
			  toObject:self.valuesOwner
		   withKeyPath:@"hueDegrees"
			   options:nil];
	[self.bindableNonView bind:@"name"
					  toObject:self.valuesOwner
				   withKeyPath:@"name"
					   options:nil];
}
- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	srandom((unsigned)time(NULL));
}

- (IBAction)setNameToSomethingRandom:(id)sender {
	static NSArray *names = nil;
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		names = [[NSArray alloc] initWithObjects:
			@"Fred",
			@"Wilma",
			@"Barney",
			@"Betty",
			nil];
	});

	NSUInteger idx = random() % [names count]; //Free assertion if names is nil!
	NSString *chosenName = [names objectAtIndex:idx];
	self.valuesOwner.name = chosenName;
}

@end
