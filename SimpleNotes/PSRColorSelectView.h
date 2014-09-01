//
//  PSRColorSelectView.h
//  SimpleNotes
//
//  Created by Admin on 01.09.14.
//  Copyright (c) 2014 Daniil Korotin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PSRColorSelectView : UIView

@property (weak, nonatomic) IBOutlet UIView *colorView;
@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;

-(void)setupColor:(UIColor *)color;

@end
