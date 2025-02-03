//
//  View+FirstAppearTask.swift
//  InstantSystemTest
//
//  Created by Yahya BOURABA on 03/02/2025.
//

import SwiftUI

// Define a view modifier that performs an asynchronous action when a view first appears
struct FirstAppearTask: ViewModifier {
    public let action: () async -> ()
    @State private var hasAppeared = false
    func body(content: Content) -> some View {
        content.task {
            guard !hasAppeared else { return }
            hasAppeared = true
            await action()
        }
    }
}

extension View {
  func onFirstAppearTask(_ action: @escaping () async -> ()) -> some View {
    modifier(FirstAppearTask(action: action))
  }
}
