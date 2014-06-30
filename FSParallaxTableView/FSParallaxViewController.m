//
//  FSParallaxViewController.m
//  FSParallaxTableView
//
//  Created by Fernando Sproviero on 30/06/14.
//  Copyright (c) 2014 FS. All rights reserved.
//

#import "FSParallaxViewController.h"
#import "FSParallaxTableViewCell.h"

@interface FSParallaxViewController()

@property (strong, nonatomic) NSArray *imageNames;

@end

@implementation FSParallaxViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.imageNames = @[@"img01.jpg",
                        @"img02.jpg",
                        @"img03.jpg",
                        @"img04.jpg",
                        @"img05.jpg",
                        @"img06.jpg",
                        @"img07.jpg",
                        @"img08.jpg",
                        @"img09.jpg",
                        @"img10.jpg",
                        @"img11.jpg"];
}

- (void)updateImageViewCellOffset:(FSParallaxTableViewCell *)cell
{
    CGFloat imageOverflowHeight = [cell imageOverflowHeight];
    
    CGFloat cellOffset = cell.frame.origin.y - self.tableView.contentOffset.y;
    CGFloat maxOffset = self.tableView.frame.size.height - cell.frame.size.height;
    CGFloat verticalOffset = imageOverflowHeight * (0.5f - cellOffset/maxOffset);
    
    cell.imageOffset = CGPointMake(0.0f, verticalOffset);
}

#pragma mark - UITableViewDatasourceDelegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.imageNames count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    FSParallaxTableViewCell *cell = (FSParallaxTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    NSString *imageName = [self.imageNames objectAtIndex:indexPath.row];
    UIImage *image = [UIImage imageNamed:imageName];
    cell.cellImageView.image = image;
    cell.cellLabel.text = imageName;
    
    cell.clipsToBounds = YES;
    
    return cell;
}

#pragma mark - UIScrollViewdelegate methods

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    for (FSParallaxTableViewCell *cell in self.tableView.visibleCells) {
        [self updateImageViewCellOffset:cell];
    }
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self updateImageViewCellOffset:(FSParallaxTableViewCell *)cell];
}

@end
