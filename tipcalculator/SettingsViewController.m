//
//  SettingsViewController.m
//  tipcalculator
//
//  Created by fxie on 12/6/13.
//  Copyright (c) 2013 fxie. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@property (weak, nonatomic) IBOutlet UISegmentedControl *defaultTip;

@end

@implementation SettingsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self loadDefaults];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) loadDefaults {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    int intValue = [defaults integerForKey:@"initialPercentage"];
    self.defaultTip.selectedSegmentIndex = intValue;
}

- (IBAction)setDefault: (id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];

    [defaults setInteger:self.defaultTip.selectedSegmentIndex forKey:@"initialPercentage"];
    [defaults synchronize];
}

@end
