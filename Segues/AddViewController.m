//
//  AddViewController.m
//  Segues
//
//  Created by steve on 2018-04-24.
//  Copyright © 2018 steve. All rights reserved.
//

#import "AddViewController.h"
#import "Comment.h"

@interface AddViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@end

@implementation AddViewController

- (IBAction)doneTapped {
  Comment *comment = [[Comment alloc] initWithComment:self.textField.text];
  [self.delegate addViewController:self displayComment:comment];
}

- (IBAction)cancelTapped {
  [self dismissViewControllerAnimated:YES completion:nil];
}

@end
