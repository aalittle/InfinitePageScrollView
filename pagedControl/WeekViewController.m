//
//  ViewController.m
//  pagedControl
//
//  Created by Andrew Little on 4/7/14.
//  Copyright (c) 2014 Andrew Little. All rights reserved.
//

#import "WeekViewController.h"
#import "WeekView.h"

@interface WeekViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) WeekView *previousWeek;
@property (strong, nonatomic) WeekView *currentWeek;
@property (strong, nonatomic) WeekView *nextWeek;
@property (assign, nonatomic) CGFloat lastContentOffset;

@end

@implementation WeekViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.scrollView.delegate = self;
    
    self.scrollView.contentSize = CGSizeMake(3*self.scrollView.frame.size.width, self.scrollView.frame.size.height);
    self.scrollView.pagingEnabled = YES;
    self.scrollView.contentOffset = CGPointMake(self.scrollView.frame.size.width, 0);

    [self createAndPositionWeekViews];
    
    [self.scrollView addSubview:self.previousWeek];
    [self.scrollView addSubview:self.currentWeek];
    [self.scrollView addSubview:self.nextWeek];
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    self.lastContentOffset = scrollView.contentOffset.x;
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    
    if ([self isScrollingRight]) {
        
        NSInteger currentWeek = self.currentWeek.theDate + 1;
        
        [self.currentWeek setWeekDate:currentWeek];
        [self.previousWeek setWeekDate:currentWeek - 1];
        self.scrollView.contentOffset = CGPointMake(self.scrollView.frame.size.width, 0);
        [self.nextWeek setWeekDate:currentWeek + 1];
    } else {
        
        NSInteger currentWeek = self.currentWeek.theDate - 1;
        
        [self.currentWeek setWeekDate:currentWeek];
        [self.nextWeek setWeekDate:currentWeek + 1];
        self.scrollView.contentOffset = CGPointMake(self.scrollView.frame.size.width, 0);
        [self.previousWeek setWeekDate:currentWeek - 1];
    }
}

-(BOOL)isScrollingRight {
    
    if (self.lastContentOffset < (int)self.scrollView.contentOffset.x) {
        return YES;
    }
    else {
        return NO;
    }
}

-(void)createAndPositionWeekViews {
    
    self.previousWeek = [[[NSBundle mainBundle] loadNibNamed:@"WeekView" owner:self options:nil] objectAtIndex:0];
    self.currentWeek = [[[NSBundle mainBundle] loadNibNamed:@"WeekView" owner:self options:nil] objectAtIndex:0];
    self.nextWeek = [[[NSBundle mainBundle] loadNibNamed:@"WeekView" owner:self options:nil] objectAtIndex:0];
    
    self.previousWeek.frame = CGRectMake(0, 0, self.scrollView.frame.size.width, self.scrollView.frame.size.height);
    self.currentWeek.frame = CGRectMake(self.scrollView.frame.size.width, 0, self.scrollView.frame.size.width, self.scrollView.frame.size.height);
    self.nextWeek.frame = CGRectMake(self.scrollView.frame.size.width * 2, 0, self.scrollView.frame.size.width, self.scrollView.frame.size.height);
    
    [self.previousWeek setWeekDate:2];
    [self.currentWeek  setWeekDate:3];
    [self.nextWeek setWeekDate:4];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
