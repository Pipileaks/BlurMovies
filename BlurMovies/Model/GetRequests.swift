//
//  GetRequests.swift
//  BlurMovies
//
//  Created by Umut Sever on 6.09.2020.
//  Copyright © 2020 Umut Sever. All rights reserved.
//

import Foundation


class GetRequest: StartVC {
    
    
    
    var totalPage: Int?

     func randomMovieApi (gID: String, diff:Int) {
           if let url = URL(string: "https://api.themoviedb.org/3/discover/movie?api_key=bc45a04ead6fd8e63685ebba047d9200&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false&vote_average.gte=\(diff)&vote_count.gte=200&with_genres=\(gID)"){
               let session = URLSession(configuration: .default)
               let task = session.dataTask(with: url) { (data, response, error) in
                   
                   if error != nil {
                       print(error!)
                       return
                   }
                   
                   if let safeData = data {
                       self.totalJason(Data: safeData)
                       
                   }
               }
               task.resume()
               
           }
           
       }
       
       func totalJason(Data: Data){
           let decoder = JSONDecoder()
           do {
               let decoderData = try decoder.decode(Root.self, from: Data)
               totalPage = decoderData.total_pages
               
           } catch {
               print(error)
           }
           
       }}
    

    
    
    
    
    

