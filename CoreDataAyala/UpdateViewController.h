//
//  UpdateViewController.h
//  CoreDataAyala
//
//  Created by Daniel on 16/10/16.
//  Copyright © 2016 idesigndreams. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface UpdateViewController : UIViewController
- (IBAction)updateButton:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *updateTextField;
@property (strong) NSManagedObject *receipe;

@end
