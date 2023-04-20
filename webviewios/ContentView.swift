//
//  ContentView.swift
//  webviewios
//
//  Created by Pushpendra Khandelwal on 20/04/23.
//

import SwiftUI
import WebKit

struct ContentView: View {
    let url = URL(string: "https://global.transak.com")!
    @State private var showWebView = false

    var body: some View {
        VStack {
            Button("Open URL") {
                showWebView = true
            }
        }
        .sheet(isPresented: $showWebView) {
            WebView(url: url)
        }
    }
}

struct WebView: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}


