//
//  MyClassController.h
//  project2
//
//  Created by itisioslab on 19.08.14.
//  Copyright (c) 2014 qwerty. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyClassController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textView;
@property (weak, nonatomic) IBOutlet UITextField *textView2;

@end
