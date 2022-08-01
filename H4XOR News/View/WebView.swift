//
//  WebView.swift
//  H4XOR News
//
//  Created by Marcin Mazur on 01/08/2022.
//

import Foundation
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let urlString: String?

//    creating webview component
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
//                updating by uiView.load
                uiView.load(request)
            }
        }
    }
}
