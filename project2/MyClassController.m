//
//  MyClassController.m
//  project2
//
//  Created by itisioslab on 19.08.14.
//  Copyright (c) 2014 qwerty. All rights reserved.
//

#import "MyClassController.h"
#import "MyViewController.h"
@interface MyClassController ()
{
    NSMutableArray *arr;
    NSMutableArray *number;
}

@end

@implementation MyClassController

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
    arr = [[NSMutableArray alloc] init];
    number = [[NSMutableArray alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return arr.count;
    return number.count;
}
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"identifier" forIndexPath:indexPath];
    cell.textLabel.text = [arr objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = [number objectAtIndex:indexPath.row];
    return cell;
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    MyClassController *mcc = [[MyClassController alloc] init];
    mcc = [segue destinationViewController];
    NSIndexPath *IndexPath = [self.tableView indexPathForSelectedRow];
    mcc.textView = [arr objectAtIndex:IndexPath.row];
    mcc.textView2 = [number objectAtIndex:IndexPath.row];
    
    
}


@end
