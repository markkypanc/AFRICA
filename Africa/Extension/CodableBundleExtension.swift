//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Mark Rachapoom on 19/3/21.
//

import Foundation

extension Bundle {
    func decode<T: Decodable>(_ file: String) -> T { // Generics
        // Locate JSON file
        guard let url = url(forResource: file, withExtension: nil) else {
            fatalError("Fail to locate \(file) in bundle")
        }
        
        // Create the properties for data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Fail to load \(file) from bundle")
        }
        
        // Create decoder
        let decoder = JSONDecoder()
        
        // Decode
        guard let safeData = try? decoder.decode(T.self, from: data) else {
            fatalError("Fail to decode \(file) in bundle")
        }
        
        // Ready to use
        return safeData
    }
}
