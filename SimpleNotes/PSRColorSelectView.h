//
//  PSRColorSelectView.h
//  SimpleNotes
//
//  Created by Admin on 01.09.14.
//  Copyright (c) 2014 Daniil Korotin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PSRColorSelectView : UIView

@property (strong, nonatomic) UIColor *selectedColor;

-(void)setupColor:(UIColor *)color;

@end
