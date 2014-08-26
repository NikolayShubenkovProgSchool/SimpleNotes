//
//  PSRColorSelectViewController.h
//  SimpleNotes
//
//  Copyright (c) 2014 Ostashkov Ilya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PSRNote.h"

#define sliderValuePerRGB 0.39216

@interface PSRColorSelectViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIView *colorView;
@property (strong, nonatomic) IBOutlet UISlider *RColorSlider;
@property (strong, nonatomic) IBOutlet UISlider *GColorSlider;
@property (strong, nonatomic) IBOutlet UISlider *BColorSlider;

@property (nonatomic, strong) PSRNote *note;

@end
