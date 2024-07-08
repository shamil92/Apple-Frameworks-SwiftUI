//
//  FrameWorkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Шамиль Каммаев on 07/07/2024.
//

import SwiftUI

final class FrameWorkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowDetailView = true
        }
    }
    
    @Published var isShowDetailView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
