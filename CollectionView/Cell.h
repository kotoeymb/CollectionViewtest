//
//  Cell.h
//  CollectionView
//
//  Created by Revo Tech on 5/12/16.
//  Copyright © 2016 Revo Tech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Cell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *myLabel;
@property (weak, nonatomic) IBOutlet UIImageView *image;

@end
