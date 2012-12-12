//
//  FaceDeBookViewController.m
//  FaceDeBook
//
//  Created by Jocelyn Poitras on 12-08-31.
//  Copyright (c) 2012 Jocelyn Poitras. All rights reserved.
//

#import "FaceDeBookViewController.h"
#import "PersonneDetailViewController.h"

@interface FaceDeBookViewController ()

@end

@implementation FaceDeBookViewController {
    NSArray *personnes;
    NSArray *thumbnails;
    NSArray *ages;
    NSArray *bios;
}

@synthesize tableView; // Add this line of code


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    // Initialize table data
    personnes = [NSArray arrayWithObjects:@"Jocelyn Poitras", @"Danielle Richard", @"Camille Richard-Poitras", @"Elliot Richard-Poitras", @"Valérie Marin", @"Claudine Marin", @"Farnand LaBroutte", @"Gorsson LaBroutte", nil];
    
    // Initialize table data
    thumbnails = [NSArray arrayWithObjects:@"jos.jpg", @"danielle.jpg", @"camille.jpg", @"elliot.jpg", @"valerie.jpg", @"claudine.jpg", @"farnand.jpg", @"gorsson.jpg", nil];
    
    ages = [NSArray arrayWithObjects:@"46 ans", @"46 ans", @"9 ans", @"3 ans", @"9 ans", @"11 ans", @"49 ans", @"7 ans", nil];
    
    bios = [NSArray arrayWithObjects:
            @"C'est le seul et unique mâle alpha du 1921 rue des Pins à Lawrenceville.",
            @"C'est elle qui contrôle la pensée de tous les habitants de la rue des Pins ainsi que de la famille LaBroutte",
            @"La fillette des fillette de toutes les fillettes, Camille peut transformer une simple femme en maman et un coeur en un puissant aimant",
            @"Aussi connu sous le nom de Boulin de Grain, il est le petit aspirant mâle alpha, mais papa ne laisse pas sa place si facilement...",
            @"Mademoiselle Valérie, soeur de Claudine et amie de Camille. On la voit ici avec son plus beau sourire !",
            @"Mademoiselle Claudine, soeur de Valérie et amie de Camille. Pnb la voit ici avec ses beaux yeux doux...",
            @"Père de Gorsson et fermier du rang LaBroutte, Farnand lance du caca dans ses temps libres et aime également séduire les jolies créatures du ranf LaBroutte en leur décochant des becs mouillés.",
            @"Fils de Farnand et assistant lanceur de caca en chef. Gorsson est un être affable malgré sa simplicité d'esprit...",
            nil];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
   
    // Release any retained subviews of the main view.

}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [personnes count];
}

- (UITableViewCell *)tableView:(UITableView *)thisTableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"PersonneCell";
    
    // NSLog test static var
    static int i = 1;
    
    UITableViewCell *cell = [thisTableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [personnes objectAtIndex:indexPath.row];
    
    // NSLog test
    NSLog(@"La personne %i est envoyé a la cellule.", i);
    i++;
    
    return cell;
}

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if(self)
    {
            NSString *toneFilename = [NSString stringWithFormat:@"sound02"];
            NSURL *toneURLRef = [[NSBundle mainBundle] URLForResource:toneFilename withExtension:@"wav"];
            SystemSoundID toneSSID = 0;
            AudioServicesCreateSystemSoundID((__bridge CFURLRef) toneURLRef,&toneSSID);
            toneSSIDs[0] = toneSSID;
    }
    
    return self;
}




- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showPersonneDetail"]) {
        
        SystemSoundID toneSSID = toneSSIDs[0];
        AudioServicesPlaySystemSound(toneSSID);
        NSLog(@"Playing a sound.");
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        PersonneDetailViewController *destViewController = segue.destinationViewController;
        destViewController.personneName = [personnes objectAtIndex:indexPath.row];
        destViewController.personneAge  = [ages objectAtIndex:indexPath.row];
        destViewController.personneBio  = [bios objectAtIndex:indexPath.row];
        destViewController.personneThumbnail  = [thumbnails objectAtIndex:indexPath.row];
    }
}

@end
