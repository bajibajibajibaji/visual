//
//  ViewController.m
//  visual
//
//  Created by cc on 16/7/20.
//  Copyright © 2016年 cc. All rights reserved.
//

#import "ViewController.h"
#import "FBVisualBGDialogViewController.h"
#import "constant.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@property (strong, nonatomic) FBVisualBGDialogViewController *visualVC;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImageView *iv = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"test.png"]];
    iv.frame = self.view.frame;
    [self.view addSubview:iv];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    self.visualVC = [[FBVisualBGDialogViewController alloc] init];
    
    /****** test ********/
    self.visualVC.goodsImage = imageOfAutoScaleImage(@"up bottle.png");
    self.visualVC.titleText = @"分享成功\n感谢您分享玩具";
    self.visualVC.titleTextColor = [UIColor colorWithRed:10.0/255 green:62.0/255 blue:71.0/255 alpha:1];
    self.visualVC.titleFont = [UIFont boldSystemFontOfSize:22];
    
    NSMutableAttributedString *attrStr = [[NSMutableAttributedString alloc] initWithString:@"\n给亲的爱心颁发100漂贝奖励！"];
    [attrStr addAttributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:14.5]} range:NSMakeRange(0, attrStr.length)];
    [attrStr addAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:208.0f/255 green:45.0f/255 blue:22.0f/255 alpha:1]} range:NSMakeRange(8, 3)];
    self.visualVC.attributedContentText = attrStr;
    
    UIButton *knowButton = [[UIButton alloc] init];
    [knowButton setImage:imageOfAutoScaleImage(@"know.png") forState:UIControlStateNormal];
    [knowButton addTarget:self action:@selector(buttonPress) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *knowButton2 = [[UIButton alloc] init];
    [knowButton2 setImage:imageOfAutoScaleImage(@"know.png") forState:UIControlStateNormal];
    [knowButton2 addTarget:self action:@selector(buttonPress) forControlEvents:UIControlEventTouchUpInside];
    

    /******************/
    
    [self.visualVC addButton:knowButton];
    [self.visualVC addButton:knowButton2];
    
    [self presentViewController:self.visualVC animated:YES completion:nil];
    
}

- (void)buttonPress
{
    [self.visualVC dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
