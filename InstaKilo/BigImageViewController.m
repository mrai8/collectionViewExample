//
//  BigImageViewController.m
//  InstaKilo
//
//  Created by Mandeep on 2017-05-18.
//  Copyright © 2017 Mandeep. All rights reserved.
//

#import "BigImageViewController.h"

@interface BigImageViewController ()

@end

@implementation BigImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (self.detailImageView){
        
        self.detailImageView.image = [UIImage imageNamed:self.imageName];
    }
    // Do any additional setup after loading the view.
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
