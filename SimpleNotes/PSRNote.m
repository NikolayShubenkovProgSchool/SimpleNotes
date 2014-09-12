//
//  PSRNote.m
//  SimpleNotes
//
//  Copyright (c) 2014 Ostashkov Ilya. All rights reserved.
//

#import "PSRNote.h"

@implementation PSRNote

- (id)init {
    self = [super init];
    
    if (self) {
        self.text = @"New note";
        self.date = [NSDate date];
        self.color = [UIColor blackColor];
        self.font = [UIFont fontWithName:@"HelveticaNeue-Medium" size:14.0f];
    }
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
    [coder encodeObject:self.text forKey:@"text"];
    [coder encodeObject:self.date forKey:@"date"];
    [coder encodeObject:self.color forKey:@"color"];
    [coder encodeObject:self.font forKey:@"font"];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    
    if (self) {
        self.text = [aDecoder decodeObjectForKey:@"text"];
        self.date = [aDecoder decodeObjectForKey:@"date"];
        self.color = [aDecoder decodeObjectForKey:@"color"];
        self.font = [aDecoder decodeObjectForKey:@"font"];
    }
    
    return self; 
}
@end
