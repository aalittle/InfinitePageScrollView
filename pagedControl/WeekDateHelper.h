//
//  WeekDateHelper.h
//  pagedControl
//
//  Created by Andrew Little on 4/7/14.
//  Copyright (c) 2014 Andrew Little. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeekDateHelper : NSObject

//Negative is number of weeks in the past, and positive is number of weeks in the future
+(NSArray *)dateCollectionForNumWeeksFromNow:(NSInteger)weeksFrom date:(NSDate *)originDate;

+(NSUInteger)dayOfMonthFromDate:(NSDate *)date;

@end
