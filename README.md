AutoresizingMaskDemo
====================

autoresizingMask 纯代码和xib的用法


/*
 autoresizingMask 非常简单易用
 
 *第一部分：xib篇
 （1）上下左右红色选中，代表的是选中的那个边是固定不变的大小，没选中的是需要按比例变化的
 （2）宽高红色选中代表是按比例变化，未选中代表不变
 
 *第二部分：纯代码篇
 （1）top left right bottom分别代表的是上部、左边、右边、底部是需要按比例变化的
 （2）with heitght同样代表的是按比例变化
 
 总结：
 xib和纯代码只有位置的关系有点儿区别，有些文章说反的，看怎么理解吧！
 （相反理解：xib设置了的代表的是固定的，纯代码写了设置的代表的可变的。）
 
 另外新的autolayout是这个的增强版，autoresizingMask是autolayout的子集！！！
 */
