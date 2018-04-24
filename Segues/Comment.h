//
//  Comment.h
//  Segues
//
//  Created by steve on 2018-04-24.
//  Copyright © 2018 steve. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Comment : NSObject
@property (nonatomic, strong) NSString *text;
- (instancetype)initWithComment:(NSString *)text;
@end
