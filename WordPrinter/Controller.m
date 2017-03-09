//
//  Controller.m
//  WordPrinter
//
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "Controller.h"



@implementation Controller


- (BOOL) shouldAddStar: (NSString *) word {
    
    if ([word containsString: @"time"])
        return YES;
    else
        return NO;
}


-(int)printer:(Printer *)printer numberOfTimesToPrint:(NSString *)text {
    
    if ([text hasPrefix:@"A"]) {
        return 2;
    } else if ([text hasSuffix:@"?"]) {
        return 0;
    } else {
        return 1;
    }
}


@end
