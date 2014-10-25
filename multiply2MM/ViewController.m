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

@property (weak, nonatomic) IBOutlet UISlider *tipSlider;
@property (weak, nonatomic) IBOutlet UISegmentedControl *operatorSegmentConrol;
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

- (IBAction)onCalculateButtonPressed:(UIButton *)sender {
    NSString *numberText = self.numberTextField.text;
    int intText = numberText.intValue;
    NSLog(@"%i", intText);

    NSString *intMultiplerLabel = self.multiplerLabel.text;
    int intMultiplerLabelActual = intMultiplerLabel.intValue;

    NSLog(@"%i", intMultiplerLabelActual);

    int intFinalValueActual = 0;

    if (self.operatorSegmentConrol.selectedSegmentIndex == 0) {
        intFinalValueActual = intText * intMultiplerLabelActual;
    } else {
        intFinalValueActual = intText / intMultiplerLabelActual;
    }

    NSLog(@"%i", intFinalValueActual);

    NSString *intFinalValueActualString = [NSString stringWithFormat:@"%d", intFinalValueActual];

    self.answerLabel.text = intFinalValueActualString;

    if (intFinalValueActual > 20) {
        self.view.backgroundColor = [UIColor greenColor];
    }


    if (intFinalValueActual % 3 == 0 && intFinalValueActual % 5 == 0) {
        self.answerLabel.text = @"fizz buzz";
    } else if (intFinalValueActual % 3 == 0) {
        self.answerLabel.text = @"fizz";
    } else if (intFinalValueActual % 5 == 0) {
        self.answerLabel.text = @"buzz";
    }

}

- (IBAction)tipSliderAction:(UISlider *)sender {
    NSString *tipAmountValue = [NSString stringWithFormat:@"%i", ((int)floorf(self.tipSlider.value))];
    self.multiplerLabel.text = tipAmountValue;
}

@end
