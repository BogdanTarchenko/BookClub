//
//  UIScreen+Extensions.swift
//  BookClub
//
//  Created by Богдан Тарченко on 20.03.2025.
//

import UIKit

extension UIScreen {
    static var isSmallDevice: Bool {
        main.bounds.height < 700
    }
}
