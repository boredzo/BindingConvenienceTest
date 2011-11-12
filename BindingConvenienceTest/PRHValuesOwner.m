//
//  PRHValuesOwner.m
//  BindingConvenienceTest
//
//  Created by Peter Hosey on 2011-11-12.
//  Copyright (c) 2011 Peter Hosey. All rights reserved.
//

#import "PRHValuesOwner.h"

@implementation PRHValuesOwner

@synthesize hueDegrees;
@synthesize name;
- (void) setName:(NSString *)newName {
	NSLog(@"%s: %@", __func__, newName);
	name = [newName copy];
}

+ (NSSet *) keyPathsForValuesAffectingNameInAllCaps {
	return [NSSet setWithObject:@"name"];
}
- (NSString *) nameInAllCaps {
	NSLog(@"%s: %@", __func__, [self.name uppercaseString]);
	return [self.name uppercaseString];
}

@end
