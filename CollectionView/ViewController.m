//
//  ViewController.m
//  CollectionView
//
//  Created by Revo Tech on 5/12/16.
//  Copyright © 2016 Revo Tech. All rights reserved.
//

#import "ViewController.h"
#import "Cell.h"

@interface ViewController ()

@end

@implementation ViewController

//Delegate Methods
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
    
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{

    return self.dataArray.count;
}
-(UICollectionViewCell*) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    Cell *aCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"myCell" forIndexPath:indexPath];
    
    aCell.myLabel.text = self.dataArray[indexPath.row];
    
    aCell.image.image = [UIImage imageNamed:@"collection_icon.png"];
    
    
    return  aCell;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.dataArray = @[@"Jan", @"Feb",@"Mar", @"Apr",@"May", @"June",@"July", @"Aug",@"Sep", @"Oct",@"Nov", @"Dec"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
