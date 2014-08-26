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
    }
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
    [coder encodeObject:self.text forKey:@"text"];
    [coder encodeObject:self.date forKey:@"date"];
    [coder encodeObject:self.color forKey:@"color"];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    
    if (self) {
        self.text = [aDecoder decodeObjectForKey:@"text"];
        self.date = [aDecoder decodeObjectForKey:@"date"];
        self.color = [aDecoder decodeObjectForKey:@"color"];
    }
    
    return self; 
}
@end
