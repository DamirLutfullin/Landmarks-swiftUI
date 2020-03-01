//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Дамир Лутфуллин on 01.03.2020.
//  Copyright © 2020 Damir Lutfullin. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject var userData : UserData
    
    var body: some View {
        NavigationView {
            List {
                
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Favorites Only")
                        .font(.system(size: 25))
            
                }
                .padding(5.0)
                
                
                ForEach(userData.landmarks) { landmark in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
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
        .environmentObject(UserData())
    }
}
