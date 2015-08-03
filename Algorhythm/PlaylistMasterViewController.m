//
//  ViewController.m
//  Algorhythm
//
//  Created by Alex Valladares on 01/08/15.
//  Copyright (c) 2015 Alex Valladares. All rights reserved.
//

#import "PlaylistMasterViewController.h"
#import "PlaylistDetailViewController.h"
#import "Playlist.h"

@interface PlaylistMasterViewController ()

@end

@implementation PlaylistMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // En el método que carga la escena, creamos un objeto playlist con el
    // método que hemos definido, pasando un índice
    
    
    Playlist *playlist = [[Playlist alloc]initWithIndex:0];
    
    // Ahora asignamos la imagen del objeto creado al imageView
    self.playlistImageView0.image = playlist.playlistIconLarge;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

// Paso de una escena a otra mediante un segue
// Primero preparamos el segue

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqual:@"showPlaylistDetail"]) {
        
        PlaylistDetailViewController *playListDetailController = (PlaylistDetailViewController *)segue.destinationViewController;
        // Aquí es donde creamos un objeto Playlist y lo asociamos al de la vista.
        playListDetailController.playlist = [[Playlist alloc]initWithIndex:0];
        
    }
}

// Segundo, en el gesture que hemos creado, le decimos el segue que queremos lanzar
// mediante el id

- (IBAction)showPlaylistDetail:(id)sender {
    
    [self performSegueWithIdentifier:@"showPlaylistDetail" sender:sender];
    
    
}

@end
