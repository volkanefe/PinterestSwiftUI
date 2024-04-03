//
//  ImageModel.swift
//  PinterestSwiftUI
//
//  Created by VOLKAN EFE on 3.04.2024.
//

import SwiftUI

struct ImageModel: Codable, Identifiable {

    var id:String
    var download_url:String
    var onHover:Bool? // optional not for json...
}
