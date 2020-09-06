//
//  Categories.swift
//  BlurMovies
//
//  Created by Umut Sever on 6.09.2020.
//  Copyright © 2020 Umut Sever. All rights reserved.
//

import Foundation


//MARK: CATEGORIES
var Genres = [
    "28":"Action".localized, //Terminatör *
    "12":"Adventure".localized, //Jumanji *
    "18":"Drama".localized, // green mile *
    "14":"Fantasy".localized, //lotr *
    "27":"Horror".localized, // freddy *
    "9648":"Mystery".localized, // usual suspest *
    "10749":"Romance".localized, // titanic *
    "878":"Sci-Fi".localized, // star wars *
]

struct GenreArray {
    var id: String
    var name: String
}
//"53":"Thriller", // silence of the lambs
//"16":"Animation", // wall - e
//   "35":"Comedy", // charlie chaplin






//MARK: GET REQUESTS STRUCTS

struct Players: Decodable {
    var cast: [Cast]
    var crew: [Crew]
}

struct Crew: Decodable {
    var job: String
    var name: String
    var profile_path: String?
}

struct Cast: Decodable {
    var name: String
    var profile_path: String?
}


struct Root: Decodable {
       var results: [Result]
       var total_pages: Int
       
   }
   
   struct Result: Decodable {
       var title: String
       var id: Int
       var poster_path: String?
       var overview: String
        var backdrop_path: String?
   }


struct Crewing {
    var name: String
    var image: String
}

struct Casting {
    var name: String
    var image: String
}

struct Movies {
    var title: String
    var poster: String
    var overview: String
    var id: Int
}

struct ScoreStruct {
    var genre: String
    var dif: String
    var score: Int
}



