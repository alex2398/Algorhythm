//
//  ViewController.h
//  Algorhythm
//
//  Created by Alex Valladares on 01/08/15.
//  Copyright (c) 2015 Alex Valladares. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlaylistMasterViewController : UIViewController

// Creamos un IBOutletCollection para almacenar todas las playlist que tenemos disponibles (8)
@property (strong, nonatomic) IBOutletCollection(UIImageView) NSArray *playlistImageViews;


@end

