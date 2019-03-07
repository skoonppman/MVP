//
//  ViewController.m
//  MVP
//
//  Created by 彭超 on 2019/3/7.
//  Copyright © 2019 彭超. All rights reserved.
//

#import "ViewController.h"
#import "Present.h"

@interface ViewController ()<PresentDelegate>

@property (strong,nonatomic)Present* present;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _present = [[Present alloc] init];
    _present.delegate = self;
    
}

-(void)refreshVcWithData:(NSString*)resultString
{
    _resultLabel.text = resultString;
}

- (IBAction)touchBtn:(id)sender {
    
    [_present doSomeThing];
    
}



@end
