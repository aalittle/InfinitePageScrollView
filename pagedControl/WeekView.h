//
//  weekView.h
//  pagedControl
//
//  Created by Andrew Little on 4/7/14.
//  Copyright (c) 2014 Andrew Little. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WeekView : UIView

@property (assign, nonatomic) NSInteger theDate;

-(void)setWeekDates:(NSArray *)weekDates;

@end
