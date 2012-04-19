//
//  View.m
//  April19
//
//  Created by Noah Blake on 4/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "View.h"
#import "Answer.h"
#import "Query.h"

@implementation View

- (id) initWithFrame: (CGRect) frame
{
    self = [super initWithFrame: frame];
    if (self) {
        self.backgroundColor =  [UIColor blackColor];

        CGFloat width =  self.bounds.size.width;
        CGFloat height = self.bounds.size.height;
        
        //increment and bump are tools for position the subsequent views
        CGFloat xincr = width/4;
        CGFloat yincr = height/5;
        CGFloat xbump = xincr/1.5;
        CGFloat ybump = yincr/3;
        
        CGRect q = CGRectMake(xincr, yincr, xincr * 2, yincr);
        query = [[Query alloc] initWithFrame: q];
        [self addSubview: query];
        
        
        CGPoint answerPos = CGPointMake(xbump, ybump + 2 * yincr);
        
        for (int i = 0; i <=3	; i++)
        {
            CGRect ans = CGRectMake(answerPos.x, answerPos.y, xincr, yincr);
            answer = [[Answer alloc] initWithFrame: ans];
            [self addSubview: answer];
            answerPos.x += (xincr + xbump);
            if (i == 1){
                answerPos.x = xbump;
                answerPos.y += (yincr + ybump);
            }
        }
        
    UISwipeGestureRecognizer *recognizer = [[UISwipeGestureRecognizer alloc]
                                                initWithTarget: self action: @selector(swipe:)
                                                ];
        
        
    recognizer = [[UISwipeGestureRecognizer alloc]
                      initWithTarget: self action: @selector(swipe:)
                      ];
        
    recognizer.direction = UISwipeGestureRecognizerDirectionLeft;
    [self addGestureRecognizer: recognizer];
    recognizer = [[UISwipeGestureRecognizer alloc]
                      initWithTarget: self action: @selector(swipe:)
                      ];
    
        
    recognizer.direction = UISwipeGestureRecognizerDirectionRight;
    [self addGestureRecognizer: recognizer];
    recognizer = [[UISwipeGestureRecognizer alloc]
                      initWithTarget: self action: @selector(swipe:)
                      ];
    
	return self;
	}
}

/*

 */

- (void) swipe: (UISwipeGestureRecognizer *) recognizer {

if (recognizer.direction == UISwipeGestureRecognizerDirectionLeft) {
    self.backgroundColor = [UIColor whiteColor];
	}
else if
    (recognizer.direction == UISwipeGestureRecognizerDirectionRight) {
        self.backgroundColor = [UIColor blackColor];
	}
}

@end

    



