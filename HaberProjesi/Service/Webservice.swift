//
//  Webservice.swift
//  HaberProjesi
//
//  Created by Sueda Beyza Özcan on 2.08.2024.
//

import Foundation
class Webservice {
    //gelemem ihtimailine karşı opsiyonel yaptık
    func haberleriIndir(url: URL, completion: @escaping ([News]?) -> ()){
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error{
                print(error.localizedDescription)
                completion(nil)
            }else if let data = data {
               let haberlerDizisi = try? JSONDecoder().decode([News].self, from: data)
                if let haberlerDizisi = haberlerDizisi{completion(haberlerDizisi)}
            }
        }.resume()
    }
}
