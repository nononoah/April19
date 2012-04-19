//
//  View.h
//  April19
//
//  Created by Noah Blake on 4/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Answer;
@class Query;

@interface View : UIView
{
    Answer *answer;
    Query *query;
    View *view;
}

@end
