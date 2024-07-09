//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Шамиль Каммаев on 07/07/2024.
//

import SwiftUI

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isSafarViewPresenting: Bool = false
    
    var body: some View {
        VStack {            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            VStack(spacing: 20) {
                Text(framework.description)
                    .font(.body)
            }.padding()
            Spacer()
            
            Button {
                isSafarViewPresenting = true
            } label: {
                Label("Learn more", systemImage: "book.fill")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .buttonBorderShape(.capsule)
            .tint(.red)
        }
        .fullScreenCover(isPresented: $isSafarViewPresenting, content: {
            SafariView(url: (URL(string: framework.urlString) ?? URL(string: "www.apple.com"))!)
        })
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
