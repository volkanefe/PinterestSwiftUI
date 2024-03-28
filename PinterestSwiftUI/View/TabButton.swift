//
//  TabButton.swift
//  PinterestSwiftUI
//
//  Created by VOLKAN EFE on 28.03.2024.
//

import SwiftUI

struct TabButton: View {

    var image: String
    var title: String
    var animation: Namespace.ID
    @Binding var selected: String

    var body: some View {

        Button(action: {
            withAnimation(.spring()){
                selected = title
            }
        }, label: {

            HStack{

                Image(systemName: image)
                    .font(.title2)
                    .foregroundColor(selected == title ? Color.black : black)
                    .frame(width: 25)

                Text(title)
                    .fontWeight(selected == title ? .semibold : .none)
                    .foregroundColor(selected == title ? Color.black : black)
                    .animation(.none)

                Spacer()

//                capsule...

                ZStack{

                    Capsule()
                        .fill(Color.clear)
                        .frame(width: 3, height: 18)

                    if selected == title {

                        Capsule()
                            .fill(Color.black)
                            .frame(width: 3, height: 18)
                            .matchedGeometryEffect(id: "Tab", in: animation)
                    }
                }
            }
            .padding(.horizontal)
        })
        .buttonStyle(PlainButtonStyle())
    }
}

var black = Color.black.opacity(0.5)
