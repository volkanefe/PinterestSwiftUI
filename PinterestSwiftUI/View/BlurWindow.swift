//
//  BlurWindow.swift
//  PinterestSwiftUI
//
//  Created by VOLKAN EFE on 28.03.2024.
//

import SwiftUI

struct BlurWindow: NSViewRepresentable {

    func makeNSView(context: Context) -> NSVisualEffectView {

        let view = NSVisualEffectView()
        view.blendingMode = .behindWindow

        return view
    }

    func updateNSView(_ nsView: NSVisualEffectView, context: Context) {
        
    }

}

struct BlurWindow_Previews: PreviewProvider {
    static var previews: some View {
        BlurWindow()
    }
}
