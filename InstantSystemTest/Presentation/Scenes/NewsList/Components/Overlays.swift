//
//  Overlays.swift
//  InstantSystemTest
//
//  Created by Yahya BOURABA on 03/02/2025.
//

import SwiftUI

struct LoadingOverlay: View {
    var body: some View {
        ContentUnavailableView {
            Label(title: {
                Text(Constants.Overlays.loadingTitle)
            }, icon: {
                ProgressView()
                    .tint(.lightPurple)
            })
        } description: {
            Text(Constants.Overlays.loadingMsg)
        }
    }
}

struct EmptyOverlay: View {
    public let retryAction: () async -> Void
    var body: some View {
        ContentUnavailableView(label: {
            Label(Constants.Overlays.emptyTitle, systemImage: "newspaper")
        }, description: {
            Text(Constants.Overlays.emptyMsg)
        }, actions: {
            Button {
                Task(priority: .userInitiated) {
                    await retryAction()
                }
            } label: {
                Text(Constants.Overlays.reload)
            }
            .buttonStyle(.bordered)
            .tint(.lightPurple)
        })
    }
}

struct ErrorOverlay: View {
    public let error: NetworkError
    public let retryAction: () async -> Void
    var body: some View {
        ContentUnavailableView(label: {
            Label(error.description, systemImage: "exclamationmark.triangle")
        }, description: {
            Text(error.recoverySuggestion)
        }, actions: {
            Button {
                Task(priority: .userInitiated) {
                    await retryAction()
                }
            } label: {
                Text(Constants.Overlays.reload)
            }
            .buttonStyle(.bordered)
            .tint(.lightPurple)
        })
    }
}
