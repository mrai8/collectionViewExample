//
//  ViewController.m
//  InstaKilo
//
//  Created by Mandeep on 2017-05-18.
//  Copyright © 2017 Mandeep. All rights reserved.
//

#import "ViewController.h"
#import "ImageCollectionViewCell.h"
#import "BigImageViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UICollectionView *imageCollectionView;

@property NSArray *imageArray;

@end

@implementation ViewController

//static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.imageArray =@[@"glasses.jpg",@"cat_caviar.jpg",@"trumpanator3000.jpg",@"what-is-stock-photo.jpg",@"2016_bigstock_picks.jpg",@"2016_bigstock_video.jpg"];
    
    
    //create and populate array of images
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.imageArray.count;
//need to return count of array
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath{
    
    ImageCollectionViewCell *cell = [self.imageCollectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    
    
    //getting a string object out of the array
    cell.imageView.image = [UIImage imageNamed: [self.imageArray objectAtIndex:indexPath.row]  ];
    
    //getting the string property "stringName" from the object out of an array
    
    //cell.imageView.image = [[UIImage imageNamed:[self.imageArray objectAtIndex:indexPath.row] stringName] ];
    
    
    
    return cell;
}

//-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
//    
//    [self performSegueWithIdentifier:@"showDetail" sender:self];
//    
//}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([[segue identifier] isEqualToString:@"showDetail"]){
        
        NSIndexPath *indexPath = [[self.imageCollectionView indexPathsForSelectedItems] objectAtIndex:0];
        
        NSString *imageName = [self.imageArray objectAtIndex:indexPath.row];
        
        BigImageViewController *bigVC = [segue destinationViewController];
        
        bigVC.imageName = imageName;
        
        

        

    }
    
    
        
}

@end

