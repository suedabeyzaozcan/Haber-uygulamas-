//
//  NewsViewModel.swift
//  HaberProjesi
//
//  Created by Sueda Beyza Özcan on 2.08.2024.
//

import Foundation

struct NewTableViewModel{
    let newsList : [News]
    func numberOfRowInSection() -> Int {
        return self.newsList.count
    }
    func newsAtIndexPath(_ index: Int) -> NewsViewModel{
        let news = self.newsList[index]
        return NewsViewModel(news: news)
    }
}

struct NewsViewModel {
    let news : News
    var title : String{
        return self.news.title
    }
    var story : String{
        return self.news.story
    }
}
