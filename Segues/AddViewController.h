//
//  AddViewController.h
//  Segues
//
//  Created by steve on 2018-04-24.
//  Copyright © 2018 steve. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AddViewController;
@class Comment;

@protocol CommentDelegate<NSObject>
- (void)addViewController:(AddViewController *)viewController displayComment:(Comment *)comment;
@end

@interface AddViewController : UIViewController
@property (nonatomic, weak)id<CommentDelegate>delegate;
@end
