//
//  ViewController.m
//  RGAppUtils
//
//  Created by RAIN on 2017/8/16.
//  Copyright © 2017年 Smartech. All rights reserved.
//

#import "ViewController.h"
#import "RGAppUtils/RGAppUtils.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)actionButtonClicked:(UIButton *)sender {
    [self attributedText];
    [self clearString];
}

- (void)attributedText {
    NSString *string = @"123456789";
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(20.0, 100.0, 300.0, 30.0);
    label.attributedText = [string rg_attributedStringWithKeyword:@"456"
                                                     keywordColor:[UIColor blueColor]
                                                      keywordFont:label.font];
    [self.view addSubview:label];
}

- (void)clearString {
    NSString *string = @"abb";

    NSLog(@"%@", [string rg_clearNilAndOtherStrings:@[]]);
    NSLog(@"%@", [string rg_clearNilAndOtherStrings:@[@"abb", @""]]);
    NSLog(@"%@", [string rg_clearNilAndOtherStrings:@[@"a", @"ab"]]);
    NSLog(@"%@", [string rg_clearNilAndOtherStrings:nil]);
}

@end
