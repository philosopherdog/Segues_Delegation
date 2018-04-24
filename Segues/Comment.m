//
//  Comment.m
//  Segues
//
//  Created by steve on 2018-04-24.
//  Copyright © 2018 steve. All rights reserved.
//

#import "Comment.h"

@implementation Comment
- (instancetype)initWithComment:(NSString *)text {
  if (self = [super init]) {
    _text = text;
  }
  return self;
}
@end
