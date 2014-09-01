//
//  PSRNote.h
//  SimpleNotes
//
//  Copyright (c) 2014 Ostashkov Ilya. All rights reserved.
//

@interface PSRNote : NSObject <NSCoding>

@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSDate *date;
@property (nonatomic, strong) UIColor *color;
@property (nonatomic, strong) UIFont *font;
@end
