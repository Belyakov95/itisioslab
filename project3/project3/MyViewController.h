//
//  MyViewController.h
//  project3
//
//  Created by itisioslab on 19.08.14.
//  Copyright (c) 2014 qwerty. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
- (IBAction)button:(id)sender;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
- (IBAction)button:(id)sender;
- (IBAction)button:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textView;


@end
