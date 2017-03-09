//
//  main.m
//  WordPrinter
//
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Printer.h"
#import "Controller.h"
#import "WonkyController.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        Printer *printer = [[Printer alloc] init];
        Controller *controller = [[Controller alloc] init];
        WonkyController *wonkyController = [[WonkyController alloc] init];
        
//        printer.delegate = controller;
        printer.delegate = wonkyController;
        
        [printer printWord:@"Hey"];
        [printer printWord:@"Hey?"];
        [printer printWord:@"Another time"];
    }
    return 0;
}
