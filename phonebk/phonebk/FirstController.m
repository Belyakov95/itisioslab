//
//  FirstController.m
//  phonebk
//
//  Created by itisioslab on 19.08.14.
//  Copyright (c) 2014 qwerty. All rights reserved.
//

#import "FirstController.h"
#import "SecondController.h"

@interface FirstController ()

@end

@implementation FirstController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    SecondController *mcc = [[SecondController alloc] init];
    mcc = [segue destinationViewController];
    mcc.name = self.name.text;
    mcc.number = self.number.text;
}


@end
