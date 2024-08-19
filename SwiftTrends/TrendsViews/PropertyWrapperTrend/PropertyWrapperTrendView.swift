//
//  PropertyWrapperTrendView.swift
//  SwiftTrends
//
//  Created by Alex.personal on 18/8/24.
//

import SwiftUI
import PropertyWrapperTrend

struct PropertyWrapperTrendView: View {
    @RemoteConfig(for: .enableCart)
    private var isCartEnabled: Bool
    
    @RemoteConfig(for: .loggingLevel)
    private var loggingLevel: String
    
    var body: some View {
        VStack {
            if isCartEnabled {
                Text("cart!")
            } else {
                Text("HelloWorld")
            }
            
            Text("LoggingLevel!: \(loggingLevel)")
        }
        .padding()
    }
}

#Preview {
    PropertyWrapperTrendView()
}
