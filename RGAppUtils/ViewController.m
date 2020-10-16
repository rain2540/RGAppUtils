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

    NSArray *array = @[@"1", @"2", @"3", @"29"];

    NSString *string1 = [array rg_objectAtIndex:1];
    NSLog(@"%@", string1);

    NSString *string_1 = [array rg_objectAtIndex:-1];
    NSLog(@"%@", string_1);

    if (array.rg_isEmpty) {
        NSLog(@"array is empty");
    } else {
        NSLog(@"array is not empty");
    }

    NSArray *mappedArray = [array rg_map:^id _Nonnull(id  _Nonnull obj) {
        return [obj stringByAppendingString:@"-1"];
    }];
    NSLog(@"%@", mappedArray);

    NSArray *filterArray = [array rg_filter:^BOOL(id  _Nonnull obj) {
        return ((NSString *)obj).length > 1;
    }];
    NSLog(@"%@", filterArray);

    NSString *string = array.rg_joinedByString(@",");
    NSLog(@"%@", string);
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
