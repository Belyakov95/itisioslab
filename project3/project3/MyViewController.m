//
//  MyViewController.m
//  project3
//
//  Created by itisioslab on 19.08.14.
//  Copyright (c) 2014 qwerty. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()
{
    NSMutableArray *name;
    NSMutableArray *number;
}

@end

@implementation MyViewController

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
    name = [[NSMutableArray alloc]init];
    number = [[NSMutableArray alloc]init];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return name.count;
    return number.count;
}
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"identifier" forIndexPath:indexPath];
    cell.textLabel.text = [name objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = [number objectAtIndex:indexPath.row];
    return cell;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)button:(id)sender {
}

- (IBAction)button:(id)sender {
    NSString *str;
    str = [self.textView text];
    [name addObject:str];
    [self.tableView reloadData];
}
- (IBAction)button:(id)sender {
}
@end
