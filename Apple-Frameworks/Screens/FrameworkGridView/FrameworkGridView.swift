//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Шамиль Каммаев on 07/07/2024.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameWorkGridViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(MockData.frameworks, id: \.id) { framework in
                    NavigationLink(destination: FrameworkDetailView(
                                                framework: framework,
                                                isShowingDetailView: $viewModel.isShowDetailView
                    )) {
                        FrameworkTitleView(framework: framework)
                       }
                    }
                }
            .navigationTitle("🍎 Frameworks")
        }
        .tint(Color(.label))
    }
}

#Preview {
    FrameworkGridView()
}
