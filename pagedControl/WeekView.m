//
//  weekView.m
//  pagedControl
//
//  Created by Andrew Little on 4/7/14.
//  Copyright (c) 2014 Andrew Little. All rights reserved.
//

#import "WeekView.h"

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

-(void)setWeekDate:(NSInteger)date {
    self.theDate = date;
    self.dayOne.text = [NSString stringWithFormat:@"%d", date];
    self.dayTwo.text = [NSString stringWithFormat:@"%d", date];
    self.dayThree.text = [NSString stringWithFormat:@"%d", date];
    self.dayFour.text = [NSString stringWithFormat:@"%d", date];
    self.dayFive.text = [NSString stringWithFormat:@"%d", date];
    self.daySix.text = [NSString stringWithFormat:@"%d", date];
    self.daySeven.text = [NSString stringWithFormat:@"%d", date];
    
}

@end
