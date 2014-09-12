//
//  PSRDetailViewController.h
//  SimpleNotes
//
//  Copyright (c) 2014 Ostashkov Ilya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PSRNote.h"
#import "PSRColorSelectViewController.h"
#import "PSRFontSelectViewController.h"

@interface PSRDetailViewController : UIViewController <PSRColorSelectViewControllerDelegate, PSRFontSelectViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UITextView *textView;

@property (nonatomic, strong) PSRNote *note;

@end
