//
//  DetailViewController.h
//  CoreDataAyala
//
//  Created by Daniel on 14/10/16.
//  Copyright © 2016 idesigndreams. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
- (IBAction)saveButton:(id)sender;
- (IBAction)cancelButton:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *receipeNameTextField;

@end
