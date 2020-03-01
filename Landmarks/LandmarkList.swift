//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Дамир Лутфуллин on 01.03.2020.
//  Copyright © 2020 Damir Lutfullin. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle("Landmarks", displayMode: .automatic)
        }
        .accentColor( .black)
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
