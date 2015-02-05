<img src="https://raw.github.com/Marxon13/M13Toolkit/master/ReadmeResources/M13ToolkitBanner.png">

M13Toolkit
=============
M13Toolkit is a collection of classes and categories that I use in various projects.

NSArray:
-----------
* **Changes:** Identifies changes between two states of an array. Very useful for collection and table views. Check out the UIKit categories that make use of this.
* **Counted Set:** Shortcut to create a counted set from an array.
* **Create With Data:** Create an array with NSData.
* **Map:** Create a new array by mapping a block to its objects. (Immutable and mutable methods available.)
* **Numbers:** Create an array of NSIntegers, CGFloats, or doubles using a range, delta, and/or function block.
* **Move Object:** Adds a move object function to NSMutableArray.

UICollectionView:
------------
* **Changes:** Automatically animate changes in a data source. Automatically determine and animate changes (Supplied by the NSArray+Changes category) so that there is no longer a need to call reload data.

```
NSArray *changes = [NSArray changesBetweenArray:currentDataSource andPreviousArray:previousDataSource];
[collectionView performBatchChanges:changes inSection:someSection completion:nil]
```

UITableView:
------------
* **Changes:** Automatically animate changes in a data source. Automatically determine and animate changes (Supplied by the NSArray+Changes category) so that there is no longer a need to call reload data.

```
NSArray *changes = [NSArray changesBetweenArray:currentDataSource andPreviousArray:previousDataSource];
[tableView beginUpdates];
[tableView applyChanges:changes toSection:someSection];
[tableView endUpdates];
```

Contact Me:
-------------
If you have any questions comments or suggestions, send me a message. If you find a bug, or want to submit a pull request, let me know.

License:
--------
MIT License

> Copyright (c) 2015 Brandon McQuilkin
> 
> Permission is hereby granted, free of charge, to any person obtaining 
>a copy of this software and associated documentation files (the  
>"Software"), to deal in the Software without restriction, including 
>without limitation the rights to use, copy, modify, merge, publish, 
>distribute, sublicense, and/or sell copies of the Software, and to 
>permit persons to whom the Software is furnished to do so, subject to  
>the following conditions:
> 
> The above copyright notice and this permission notice shall be 
>included in all copies or substantial portions of the Software.
> 
> THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, 
>EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF 
>MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
>IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY 
>CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, 
>TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
>SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.