//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Дамир Лутфуллин on 01.03.2020.
//  Copyright © 2020 Damir Lutfullin. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landmark: Landmark
    
    var body: some View {
        VStack {
            HStack  {
                landmark.image
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 1))
                    .shadow(radius: 10)
                Spacer()
                Text(landmark.name)
                    .font(.title)
                Spacer()
                
                if landmark.isFavorite {
                    Image(systemName: "star.fill")
                        .imageScale(.medium)
                        .foregroundColor(.yellow)
                }
            }.padding()
        }
        
    }
    
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarkData[1])
    }
}
