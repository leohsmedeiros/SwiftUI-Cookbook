//
//  NumberListView.swift
//  DisplayingItemsInList
//
//  Created by Leonardo Medeiros on 05/01/23.
//

import SwiftUI

struct NumberListView: View {
    @StateObject private var numberListVM = NumberListViewModel()
    @State private var currentPage: Int = 1
    
    var body: some View {
        List(numberListVM.numbers, id: \.self) { number in
            Text("\(number)")
                .onAppear {
                    if numberListVM.shouldLoadData(id: number) {
                        currentPage += 1
                        numberListVM.populateDate(page: currentPage)
                    }
                }
        }.onAppear {
            numberListVM.populateDate(page: 1)
        }
    }
}

struct NumberListView_Previews: PreviewProvider {
    static var previews: some View {
        NumberListView()
    }
}
