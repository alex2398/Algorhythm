//
//  Playlist.m
//  Algorhythm
//
//  Created by Alex Valladares on 03/08/15.
//  Copyright (c) 2015 Alex Valladares. All rights reserved.
//

#import "Playlist.h"
#import "MusicLibrary.h"

@implementation Playlist

// Creamos el init con un argumento (index)

- (instancetype) initWithIndex: (NSUInteger)index {
    self = [super init];
    if (self) {
        
        // Creamos un objeto MusicLibrary
        MusicLibrary *musicLibrary = [[MusicLibrary alloc]init];
        // Creamos una variable local para el array de musica
        NSArray *library = musicLibrary.library;
        
        // Dentro de esa libreria seleccionamos el diccionario segun el indice
        NSDictionary *playlistDictionary = library[index];
        
        // Asignamos los valores a nuestras variables
        // Recordar que para asignar en un metodo siempre usamos self, salvo
        // en metodos inicializadores, que usamos _
        
        // Las propiedades titulo y descripcion son NSString, que los obtenemos directamente
        // con el metodo objectForKey
        
        _playlistTitle = [playlistDictionary objectForKey: kTitle];
        _playlistDescription = [playlistDictionary objectForKey:kDescription];
        
        // Los iconos son imagenes, así que tenemos que obtener el string del nombre
        // e instanciar una UIImage con el metodo imageNamed y el string obtenido del diccionario
        
        NSString *iconName = [playlistDictionary objectForKey:kIcon];
        _playlistIcon = [UIImage imageNamed:iconName];
        
        NSString *largeIconName = [playlistDictionary objectForKey:kLargeIcon];
        _playlistIconLarge = [UIImage imageNamed:largeIconName];
        
        // Para la lista de artistas(array) instanciamos un NSArray con el metodo arrayWithArray
        // obteniendola del diccionario
        
        _playlistArtists = [NSArray arrayWithArray:[playlistDictionary objectForKey:kArtists]];
        
        // Por último creamos un método rgbColorFromDictionary para obtener el color de fondo,
        // pasando como parametro el diccionario de color (kBackground)
        
        NSDictionary *background = [playlistDictionary objectForKey:kBackgroundColor];
        _playlistColor = [self rgbColorFromDictionary:background];
        
        
    }
    
    return self;
}

- (UIColor *) rgbColorFromDictionary: (NSDictionary *) colorDictionary  {
    CGFloat red = [[colorDictionary valueForKey:@"red"] doubleValue];
    CGFloat green = [[colorDictionary valueForKey:@"green"] doubleValue];
    CGFloat blue = [[colorDictionary valueForKey:@"blue"] doubleValue];
    CGFloat alpha = [[colorDictionary valueForKey:@"alpha"] doubleValue];
    
    
    UIColor *color = [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
    
    return color;
}

@end
