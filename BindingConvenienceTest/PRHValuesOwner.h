//
//  PRHValuesOwner.h
//  BindingConvenienceTest
//
//  Created by Peter Hosey on 2011-11-12.
//  Copyright (c) 2011 Peter Hosey. All rights reserved.
//

@interface PRHValuesOwner : NSObject

@property CGFloat hueDegrees;
@property(nonatomic, copy) NSString *name;

@property(nonatomic, readonly) NSString *nameInAllCaps;

@end
