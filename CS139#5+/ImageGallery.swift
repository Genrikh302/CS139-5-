//
//  ImageGallery.swift
//  CS139#5+
//
//  Created by Genrikh Mayorov on 20/12/2019.
//  Copyright © 2019 Genrikh Mayorov. All rights reserved.
//

import Foundation

struct ImageModel: Codable {
    var url: URL
    var aspectRatio: Double
}

struct ImageGallery: Codable {
    var images = [ImageModel]()
    var json: Data? {
        return try? JSONEncoder().encode(self)
    }
    
    init?(json: Data) {
        if let newValue =
            try? JSONDecoder().decode(ImageGallery.self, from: json) {
            self = newValue
        } else {
            return nil
        }
    }
    
    init (){
        self.images = [ImageModel]()
    }
}
