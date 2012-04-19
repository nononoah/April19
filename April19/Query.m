//
//  Query.m
//  April19
//
//  Created by Noah Blake on 4/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Query.h"

@implementation Query

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //self.backgroundColor = [UIColor redColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
	CGFloat width =  self.bounds.size.width;
    CGFloat height = self.bounds.size.height;
	
    CGContextRef c = UIGraphicsGetCurrentContext();
    
    CGContextBeginPath(c);
    CGRect queryBox = CGRectMake(0, 0, width, height);
    CGContextAddRect(c, queryBox);
    CGContextSetRGBFillColor(c, .2, .2, .9, 1);
    CGContextFillPath(c);
}




@end