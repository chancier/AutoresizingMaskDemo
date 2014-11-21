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

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //左上角
    UILabel *testView1 = [[UILabel alloc] initWithFrame: CGRectMake(35, 201, 213, 132)];
    testView1.backgroundColor = [UIColor magentaColor];
    testView1.textColor = [UIColor whiteColor];
    testView1.font = [UIFont systemFontOfSize:20];
    testView1.text = @"code";
    [self.view addSubview: testView1];
    
    //右上角
    UILabel *testView2 = [[UILabel alloc] initWithFrame: CGRectMake([UIScreen mainScreen].bounds.size.width-213-30, 201, 213, 132)];
    testView2.backgroundColor = [UIColor greenColor];
    testView2.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin;
    testView2.textColor = [UIColor whiteColor];
    testView2.font = [UIFont systemFontOfSize:20];
    testView2.text = @"code";
    [self.view addSubview: testView2];
    
    //左下角
    UILabel *testView3 = [[UILabel alloc] initWithFrame: CGRectMake(35, [UIScreen mainScreen].bounds.size.height-132-180, 213, 132)];
    testView3.backgroundColor = [UIColor redColor];
    testView3.autoresizingMask = UIViewAutoresizingFlexibleTopMargin;
    testView3.textColor = [UIColor whiteColor];
    testView3.font = [UIFont systemFontOfSize:20];
    testView3.text = @"code";
    [self.view addSubview: testView3];
    
    //右下角
    UILabel *testView4 = [[UILabel alloc] initWithFrame: CGRectMake([UIScreen mainScreen].bounds.size.width-213-30, [UIScreen mainScreen].bounds.size.height-132-180, 213, 132)];
    testView4.backgroundColor = [UIColor blackColor];
    testView4.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleLeftMargin;
    testView4.textColor = [UIColor whiteColor];
    testView4.font = [UIFont systemFontOfSize:20];
    testView4.text = @"code";
    [self.view addSubview: testView4];
    
    
    testView4.textAlignment = NSTextAlignmentCenter;
    testView3.textAlignment = NSTextAlignmentCenter;
    testView2.textAlignment = NSTextAlignmentCenter;
    testView1.textAlignment = NSTextAlignmentCenter;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
