//
//  Printer.h
//  WordPrinter
//
//  Created by Pierre Binon on 2017-03-09.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>


//Need this to have the protocol accept the type Printer * because it is defined before the @interface Printer
@class Printer;




@protocol PrinterDelegate <NSObject>

- (int) printer: (Printer *) printer numberOfTimesToPrint: (NSString *) word;
- (BOOL) shouldAddStar: (NSString *) word;

@end




@interface Printer : NSObject

@property (nonatomic) id<PrinterDelegate>delegate;
- (void) printWord: (NSString *) word;

@end
