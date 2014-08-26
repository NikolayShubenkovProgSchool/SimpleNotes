//
//  PSRColorSelectViewController.h
//  SimpleNotes
//
//  Created by Admin on 26.08.14.
//  Copyright (c) 2014 Daniil Korotin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PSRNote.h"

@interface PSRColorSelectViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIView *colorView;
@property (strong, nonatomic) IBOutlet UISlider *RColorSlider;
@property (strong, nonatomic) IBOutlet UISlider *GColorSlider;
@property (strong, nonatomic) IBOutlet UISlider *BColorSlider;

@property (nonatomic, strong) PSRNote *note;

@end
