//
//  PlaylistDetailViewController.m
//  Algorhythm
//
//  Created by Alex Valladares on 03/08/15.
//  Copyright (c) 2015 Alex Valladares. All rights reserved.
//

#import "PlaylistDetailViewController.h"
#import "Playlist.h"

@interface PlaylistDetailViewController ()

@end

@implementation PlaylistDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Si no pasamos un playlist nulo, asignamos las variables de la vista a las del objeto creado
    // De este modo, cuando pasemos el objeto playlist mediante segue, estarán asociadas en la vista detalle.
    
    
    if (self.playlist) {
        self.playlistCoverImage.image = self.playlist.playlistIconLarge;
        self.playlistCoverImage.backgroundColor = self.playlist.playlistColor;
        self.playlistTitle.text = self.playlist.playlistTitle;
        self.playlistDescription.text = self.playlist.playlistDescription;
        
        self.playlistArtist0.text = self.playlist.playlistArtists[0];
        self.playlistArtist1.text = self.playlist.playlistArtists[1];
        self.playlistArtist2.text = self.playlist.playlistArtists[2];
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}



@end
