//
//  ContentViewModel.swift
//  ListRefreshable
//
//  Created by Ryo on 2022/11/09.
//

import Foundation

class ContentViewModel: ObservableObject {
    @Published var data = [Date()]
    
    //今の日付を配列に追加
    func addData() {
        data += [Date()]
    }
    
    //配列を削除
    func trashData() {
        data = [Date()]
    }
}
