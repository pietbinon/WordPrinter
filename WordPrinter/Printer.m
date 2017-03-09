//
//  Printer.m
//  WordPrinter
//
//  Created by Pierre Binon on 2017-03-09.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Printer.h"



@implementation Printer

- (void) printWord: (NSString *) word {
    
    if ([self.delegate respondsToSelector: @selector(printUppercase:)]) {
        
    
    
    if ([self.delegate shouldAddStar: word]) {
    
        int printTimes = [self.delegate printer: self numberOfTimesToPrint: word];
    
        for (int i = 0; i < printTimes; i++)
            NSLog (@"%@", [[@"*" stringByAppendingString:[word stringByAppendingString: @"*"]] uppercaseString]);
        
    } else {
        
        int printTimes = [self.delegate printer: self numberOfTimesToPrint: word];
        
        for (int i = 0; i < printTimes; i++)
            NSLog (@"%@", [word uppercaseString]);
    }
        
    } else {
        
        if ([self.delegate shouldAddStar: word]) {
            
            int  printTimes = [self.delegate printer: self numberOfTimesToPrint: word];
            
            for (int i = 0; i < printTimes; i++)
                NSLog (@"%@", [@"*" stringByAppendingString: [word stringByAppendingString: @"*"]]);
        } else {
            
            int printTimes = [self.delegate printer: self numberOfTimesToPrint: word];
            
            for (int i = 0; i < printTimes; i++)
                NSLog (@"%@", word);
        }
    }
}

@end
