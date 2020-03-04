//
//  Home.swift
//  Landmarks
//
//  Created by Дамир Лутфуллин on 04.03.2020.
//  Copyright © 2020 Damir Lutfullin. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var userData : UserData
    
    var categories: [String: [Landmark]] {
        Dictionary(
            grouping: landmarkData,
            by: { $0.category.rawValue }
        )
    }
    
    
    var body: some View {
        NavigationView{
            List {
                ForEach(categories.keys.sorted(), id: \.self) { key in
                    Text(key)
                }
            }
            .navigationBarTitle(Text("Featured"))
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
