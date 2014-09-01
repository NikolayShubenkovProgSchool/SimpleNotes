//
//  PSRColorSelectView.m
//  SimpleNotes
//
//  Created by Admin on 01.09.14.
//  Copyright (c) 2014 Daniil Korotin. All rights reserved.
//

#import "PSRColorSelectView.h"

@interface PSRColorSelectView ()
{
    CGFloat red;
    CGFloat green;
    CGFloat blue;
    CGFloat alpha;
}

@end

@implementation PSRColorSelectView

- (void)setupColor:(UIColor *)color
{
    self.colorView.backgroundColor = color;
    
    [self.colorView.backgroundColor getRed:&red green:&green blue:&blue alpha:&alpha];
    
    self.redSlider.value = red;
    self.greenSlider.value = green;
    self.blueSlider.value = blue;
}

- (IBAction)sliderTouchUpInside:(UISlider *)slider
{
    if (slider == self.redSlider)
    {
        red = self.redSlider.value;
        self.colorView.backgroundColor = [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
    }
    else if (slider == self.greenSlider)
    {
        green = self.greenSlider.value;
        self.colorView.backgroundColor = [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
    }
    else if (slider == self.blueSlider)
    {
        blue = self.blueSlider.value;
        self.colorView.backgroundColor = [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
    }
}

@end
