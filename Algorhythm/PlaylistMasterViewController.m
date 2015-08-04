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
    
    
    // Hacemos un for para recorrer la matriz de playlists
    
    for (NSUInteger index = 0; index < self.playlistImageViews.count; index++ ) {
        
        // Para cada indice, creamos una playlist con el indice que toca (index)
        // y creamos un imageView para el contenedor de la vista tb con el indice
        Playlist *playlist = [[Playlist alloc]initWithIndex:index];
        UIImageView *playlistImageView = self.playlistImageViews[index];
        
        // Asignamos el icono y el color de fondo
        playlistImageView.image = playlist.playlistIcon;
        playlistImageView.backgroundColor = playlist.playlistColor;
        
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

// Paso de una escena a otra mediante un segue
// Primero preparamos el segue

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqual:@"showPlaylistDetail"]) {
        
        // Obtenemos la vista pulsada con el gesture, que sabemos que es un imageView
        UIImageView *playlistImageView = (UIImageView *) [sender view];
        
        // Comprobamos si la imagen pulsada está dentro de la coleccion de outlets
        if ([self.playlistImageViews containsObject:playlistImageView]) {
            
            // Si está dentro de la colección, obtenemos el indice que ocupa en el array con el método indexOfObject
            NSUInteger index = [self.playlistImageViews indexOfObject:playlistImageView];
        
            PlaylistDetailViewController *playListDetailController = (PlaylistDetailViewController *)segue.destinationViewController;
            // Aquí es donde creamos un objeto Playlist y lo asociamos al de la vista.
            playListDetailController.playlist = [[Playlist alloc]initWithIndex:index];
            
        }
    }
}

// Segundo, en el gesture que hemos creado, le decimos el segue que queremos lanzar
// mediante el id

- (IBAction)showPlaylistDetail:(id)sender {
    
    [self performSegueWithIdentifier:@"showPlaylistDetail" sender:sender];
    
    
}

@end
