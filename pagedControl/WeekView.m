//
//  weekView.m
//  pagedControl
//
//  Created by Andrew Little on 4/7/14.
//  Copyright (c) 2014 Andrew Little. All rights reserved.
//

#import "WeekView.h"
#import "WeekDateHelper.h"

@interface WeekView ()
@property (weak, nonatomic) IBOutlet UILabel *dayOne;
@property (weak, nonatomic) IBOutlet UILabel *dayTwo;
@property (weak, nonatomic) IBOutlet UILabel *dayThree;
@property (weak, nonatomic) IBOutlet UILabel *dayFour;
@property (weak, nonatomic) IBOutlet UILabel *dayFive;
@property (weak, nonatomic) IBOutlet UILabel *daySix;
@property (weak, nonatomic) IBOutlet UILabel *daySeven;


@end

@implementation WeekView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)setWeekDates:(NSArray *)weekDates {
    
    self.dayOne.text = [NSString stringWithFormat:@"%d", [WeekDateHelper dayOfMonthFromDate:[weekDates objectAtIndex:0]]];
    self.dayTwo.text = [NSString stringWithFormat:@"%d", [WeekDateHelper dayOfMonthFromDate:[weekDates objectAtIndex:1]]];
    self.dayThree.text = [NSString stringWithFormat:@"%d", [WeekDateHelper dayOfMonthFromDate:[weekDates objectAtIndex:2]]];
    self.dayFour.text = [NSString stringWithFormat:@"%d", [WeekDateHelper dayOfMonthFromDate:[weekDates objectAtIndex:3]]];
    self.dayFive.text = [NSString stringWithFormat:@"%d", [WeekDateHelper dayOfMonthFromDate:[weekDates objectAtIndex:4]]];
    self.daySix.text = [NSString stringWithFormat:@"%d", [WeekDateHelper dayOfMonthFromDate:[weekDates objectAtIndex:5]]];
    self.daySeven.text = [NSString stringWithFormat:@"%d", [WeekDateHelper dayOfMonthFromDate:[weekDates objectAtIndex:6]]];
}

@end
