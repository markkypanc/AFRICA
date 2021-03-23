//
//  VideoModel.swift
//  Africa
//
//  Created by Mark Rachapoom on 21/3/21.
//

import Foundation

struct Video: Codable, Identifiable {
    var id: String
    let name: String
    let headline: String
    
    //Computed Properties
    var thumbnail: String {
        return  "video-\(id)"
    }
}
