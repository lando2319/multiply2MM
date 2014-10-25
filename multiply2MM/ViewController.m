//
//  ViewController.m
//  multiply2MM
//
//  Created by MIKE LAND on 10/24/14.
//  Copyright (c) 2014 MIKE LAND. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *numberTextField;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;

@property (weak, nonatomic) IBOutlet UILabel *multiplerLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onCalculateButtonPressed:(id)sender {
    NSString *numberText = self.numberTextField.text;
    int intText = numberText.intValue;
    NSLog(@"%i", intText);

    NSString *intMultiplerLabel = self.multiplerLabel.text;
    int intMultiplerLabelActual = intMultiplerLabel.intValue;

    NSLog(@"%i", intMultiplerLabelActual);

    int intFinalValueActual = intMultiplerLabelActual * intText;
    NSLog(@"%i", intFinalValueActual);

    NSString *intFinalValueActualString = [NSString stringWithFormat:@"%d", intFinalValueActual];

    self.answerLabel.text = intFinalValueActualString;

    if (intFinalValueActual > 20) {
        self.view.backgroundColor = [UIColor greenColor];
    }
}

@end
