//
//  main.m
//  RandomItems
//
//  Created by Alexis Bastide on 21/07/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSMutableArray *items = [[NSMutableArray alloc] init];
//        for (int i = 0; i < 10; i++)
//        {
//            BNRItem *item = [BNRItem randomItem];
//            [items addObject:item];
//        }
        BNRItem *backpack = [[BNRItem alloc] initWithItemName:@"Backpack"];
        [items addObject:backpack];
        
        BNRItem *calculator = [[BNRItem alloc] initWithItemName:@"Calculator"];
        [items addObject:calculator];
        
        backpack.containedItem = calculator;
        
        backpack = nil;
        calculator = nil;
        for (BNRItem *item in items)
            NSLog(@"%@", item);
        NSLog(@"Setting items to nil...");
        items = nil;
    }
    return 0;
}

