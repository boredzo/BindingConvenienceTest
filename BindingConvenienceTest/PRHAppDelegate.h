//
//  PRHAppDelegate.h
//  BindingConvenienceTest
//
//  Created by Peter Hosey on 2011-11-12.
//  Copyright (c) 2011 Peter Hosey. All rights reserved.
//

@class PRHValuesOwner;
@class PRHHueView;
@class PRHBindableNonView;

@interface PRHAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet PRHHueView *hueView;
@property (assign) IBOutlet PRHBindableNonView *bindableNonView;
@property (assign) IBOutlet PRHValuesOwner *valuesOwner;
- (IBAction)setNameToSomethingRandom:(id)sender;

@end
