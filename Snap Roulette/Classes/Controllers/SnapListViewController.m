//
//  SnapListViewController.m
//  Snap Roulette
//
//  Created by Jason Fieldman on 2/25/15.
//  Copyright (c) 2015 Jason Fieldman. All rights reserved.
//

#import "SnapListViewController.h"

@interface SnapListViewController ()

@end

@implementation SnapListViewController

- (id) init {
    if ((self = [super init])) {
        
        self.view.backgroundColor = [UIColor magentaColor];
        self.title = @"Snaps";
        
        _carousel = [[iCarousel alloc] initWithFrame:CGRectMake(0, 60, self.view.frame.size.width, 60)];
        _carousel.backgroundColor = [UIColor yellowColor];
        _carousel.delegate = self;
        _carousel.dataSource = self;
        [self.view addSubview:_carousel];
        
        
    }
    return self;
}

- (UIView*)carousel:(iCarousel *)carousel viewForItemAtIndex:(NSInteger)index reusingView:(UIView *)view {
    UIView *temp = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 60, 60)];
    temp.backgroundColor = (index % 2 == 0) ? [UIColor redColor] : [UIColor blueColor];
    return temp;
}

- (NSInteger)numberOfItemsInCarousel:(iCarousel *)carousel {
    return 20;
}

@end
