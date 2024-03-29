//
//  NavigationView.swift
//  TraceAction
//
//  Created by Leo Khramov on 12/7/23.
//

import Foundation
import SwiftUI

struct MainNavigationView: View {
    @StateObject var flow = NavigationFlow.shared
    
    var body: some View {
        NavigationStack(path: $flow.path) {
            ZStack {
                MainView().traceDefaults()
            }.navigationDestination(for: NavigationParams.self) { dest in
                NavigationFactory.shared.viewForDest(param: dest)
            }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    MainNavigationView().traceDefaults()
}
