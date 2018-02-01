//
//  ViewController1.m
//  iOS11iPhoneXAdaptor
//
//  Created by DancewithPeng on 2018/2/1.
//  Copyright © 2018年 pingan. All rights reserved.
//

#import "ViewController1.h"
#import <Masonry/Masonry.h>

#define iOS11Later @available(iOS 11, *)
#define iOS11Before !@available(iOS 11, *)

#define isAvailableiOS(v) @available(iOS v, *)
#define isAvailableiOS11 isAvailableiOS(11)

@interface ViewController1 ()

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectZero];
    blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:blueView];
    
    if (iOS11Later) {
        [blueView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view.mas_safeAreaLayoutGuideTop);
            make.right.equalTo(self.view.mas_safeAreaLayoutGuideRight);
            make.size.mas_equalTo(CGSizeMake(200, 200));
        }];
    } else {
        [blueView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.topLayoutGuide);
            make.right.equalTo(self.view);
            make.size.mas_equalTo(CGSizeMake(200, 200));
        }];
    }
    
    if (iOS11Later) {
        
    } else {
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
