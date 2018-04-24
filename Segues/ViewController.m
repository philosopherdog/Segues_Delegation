//
//  ViewController.m
//  Segues
//
//  Created by steve on 2018-04-24.
//  Copyright © 2018 steve. All rights reserved.
//

#import "ViewController.h"
#import "AddViewController.h"
#import "Comment.h"

@interface ViewController ()<CommentDelegate>
@property (weak, nonatomic) IBOutlet UILabel *label;
@end

@implementation ViewController

- (IBAction)toAddTapped {
  [self performSegueWithIdentifier:@"AddViewController" sender:@"hi mom"];
//  AddViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"AddViewController"];
//  vc.delegate = self;
//  [self presentViewController:vc animated:YES completion:nil];
  
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  if([segue.identifier isEqualToString:@"AddViewController"]) {
    AddViewController *destination = (AddViewController*)segue.destinationViewController;
    destination.delegate = self;
  }
}

- (void)addViewController:(AddViewController *)viewController displayComment:(Comment *)comment {
  self.label.text = comment.text;
  [viewController dismissViewControllerAnimated:YES completion:nil];
}


@end
