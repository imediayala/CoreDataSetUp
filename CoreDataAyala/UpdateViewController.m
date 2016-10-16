//
//  UpdateViewController.m
//  CoreDataAyala
//
//  Created by Daniel on 16/10/16.
//  Copyright © 2016 idesigndreams. All rights reserved.
//

#import "UpdateViewController.h"
#import "AppDelegate.h"

@interface UpdateViewController ()

@end

@implementation UpdateViewController

- (NSManagedObjectContext *)managedObjectContext
{
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    return context;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    if (self.receipe) {
        [self.updateTextField setText: [self.receipe valueForKey:@"name"]];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)updateButton:(id)sender {
    
    NSManagedObjectContext *context = [self managedObjectContext];
    
    if (self.receipe) {
        // Update existing device
        [self.receipe setValue:self.updateTextField.text forKey:@"name"];
     
    } else {
        // Create a new device
        NSManagedObject *newDevice = [NSEntityDescription insertNewObjectForEntityForName:@"Cooking" inManagedObjectContext:context];
        [newDevice setValue:self.updateTextField.text forKey:@"name"];
     
    }
    
    NSError *error = nil;
    // Save the object to persistent store
    if (![context save:&error]) {
        NSLog(@"Can't Save! %@ %@", error, [error localizedDescription]);
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
@end
