//
//  ViewController.m
//  TreeLights
//
//  Created by Gary Ashton-Jones on 26/11/2014.
//  Copyright (c) 2014 Gary Ashton-Jones. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISlider *colourSlider;
@property (weak, nonatomic) IBOutlet UISlider *persistSlider;
@property (weak, nonatomic) IBOutlet UILabel *colourLabel;
@property (weak, nonatomic) IBOutlet UILabel *persistLabel;
@property (weak, nonatomic) IBOutlet UIView *tableView;
- (IBAction)menuButtonTouchUp:(id)sender;
- (IBAction)testButtonTouchUp:(id)sender;
- (IBAction)backFromDevicesButtonTouchUp:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.colourSlider setThumbImage:[UIImage imageNamed:@"track-thumb.png"] forState:UIControlStateNormal];
    [self.persistSlider setThumbImage:[UIImage imageNamed:@"track-thumb.png"] forState:UIControlStateNormal];
    
    [self.colourSlider setMaximumTrackImage:[UIImage alloc] forState:UIControlStateNormal];
    [self.persistSlider setMaximumTrackImage:[UIImage alloc] forState:UIControlStateNormal];
    self.colourSlider.transform = CGAffineTransformMakeRotation(M_PI_2);
    self.persistSlider.transform = CGAffineTransformMakeRotation(M_PI_2);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)menuButtonTouchUp:(id)sender {
    self.tableView.hidden = false;
}

- (IBAction)testButtonTouchUp:(id)sender {
}

- (IBAction)backFromDevicesButtonTouchUp:(id)sender {
    self.tableView.hidden = true;
}
@end
