//
//  WeekDateHelper.m
//  pagedControl
//
//  Created by Andrew Little on 4/7/14.
//  Copyright (c) 2014 Andrew Little. All rights reserved.
//

#import "WeekDateHelper.h"

@implementation WeekDateHelper

+(NSArray *)dateCollectionForNumWeeksFromNow:(NSInteger)weeksFrom date:(NSDate *)originDate {

    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
    dateComponents = [calendar components:NSWeekCalendarUnit|NSYearCalendarUnit fromDate:[NSDate date]];
    //create date on week start
    NSDate *weekstart = [calendar dateFromComponents:dateComponents];

    NSDateComponents *moveWeeks = [[NSDateComponents alloc] init];
    moveWeeks.week = weeksFrom;
    weekstart=[calendar dateByAddingComponents:moveWeeks toDate:weekstart options:0];

    //add 7 days
    NSMutableArray* week=[NSMutableArray arrayWithCapacity:7];
    for (int i = 1; i <= 7; i++) {
        NSDateComponents *compsToAdd = [[NSDateComponents alloc] init];
        compsToAdd.day = i;
        NSDate *nextDate = [calendar dateByAddingComponents:compsToAdd toDate:weekstart options:0];
        [week addObject:nextDate];
        
    }
    return [NSArray arrayWithArray:week];
}

+(NSUInteger)dayOfMonthFromDate:(NSDate *)date {
    
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:date];
    
    return [components day];
}

@end
