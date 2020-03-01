//
//  UserData.swift
//  Landmarks
//
//  Created by Дамир Лутфуллин on 02.03.2020.
//  Copyright © 2020 Damir Lutfullin. All rights reserved.
//

import Foundation
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}

