//
//  BNRItem.h
//  RandomItems
//
//  Created by Alexis Bastide on 21/07/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject

+ (instancetype)randomItem;

//Designated initializer for BNRItem
- (instancetype)initWithItemName:(NSString*)name valueInDollars:(int)value serialNumber:(NSString*)sNumber;
- (instancetype)initWithItemName:(NSString*)name;

@property (nonatomic, strong)BNRItem *containedItem;
@property (nonatomic, weak)BNRItem *container;

@property (nonatomic, copy)NSString *itemName;
@property (nonatomic, copy)NSString *serialNumber;
@property (nonatomic)int valueInDollars;
@property (nonatomic, readonly)NSDate *dateCreated;

@end
