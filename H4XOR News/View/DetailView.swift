//
//  DetailView.swift
//  H4XOR News
//
//  Created by Marcin Mazur on 01/08/2022.
//

import SwiftUI

struct DetailView: View {
    let url: String?

    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com/")
    }
}


