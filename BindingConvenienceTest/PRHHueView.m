//
//  PRHHueView.m
//  BindingConvenienceTest
//
//  Created by Peter Hosey on 2011-11-12.
//  Copyright (c) 2011 Peter Hosey. All rights reserved.
//

#import "PRHHueView.h"

@interface PRHHueView ()
@property(nonatomic, readonly) CGFloat hueFraction;
@end

@implementation PRHHueView

//exposeBinding:?

@synthesize hueDegrees;
- (void) setHueDegrees:(CGFloat)newHue {
	hueDegrees = newHue;
	[self setNeedsDisplay:YES];
}

- (CGFloat) hueFraction {
	return (self.hueDegrees / 360.0);
}

- (void) drawRect:(NSRect)dirtyRect {
	NSColor *color = [NSColor colorWithCalibratedHue:self.hueFraction
										  saturation:1.0
										  brightness:1.0
											   alpha:1.0];
	[color setFill];
	NSRectFill(dirtyRect);
}

@end
