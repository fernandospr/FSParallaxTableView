<a href='https://pledgie.com/campaigns/26743'><img alt='Click here to lend your support to: Fernando&#x27;s Open Source Projects and make a donation at pledgie.com !' src='https://pledgie.com/campaigns/26743.png?skin_name=chrome' border='0' ></a>


FSParallaxTableView
===================

Parallax effect for images in table view cells.

![Demo](https://github.com/fernandospr/FSParallaxTableView/raw/master/images/FSParallaxTableViewDemo.gif)

I have found many examples using UICollectionView, but I wanted to use a simple UITableView. That is why I decided to create this project.


##How it works

Assuming the images have a height greater than the height of the cells:
* The top cell will show the first part of its image and will hide the bottom overflow.
* The last cell will show the last part of its image and will hide the top overflow.
* The medium cell will show the middle part of its image and will hide bottom and top overflows.

This is done in this method:
```
- (void)updateImageViewCellOffset:(FSParallaxTableViewCell *)cell
```
Thanks to <a href="https://twitter.com/SebaVenditti">@SebaVenditti</a> for helping!
