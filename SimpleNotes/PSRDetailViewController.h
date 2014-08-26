//
//  PSRDetailViewController.h
//  SimpleNotes
//
//  Copyright (c) 2014 Ostashkov Ilya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PSRNote.h"

@interface PSRDetailViewController : UIViewController

@property (nonatomic, strong) UITextView *textView;
@property (nonatomic, strong) PSRNote *note;

@end
