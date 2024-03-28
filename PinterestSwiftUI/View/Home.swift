//
//  Home.swift
//  PinterestSwiftUI
//
//  Created by VOLKAN EFE on 28.03.2024.
//

import SwiftUI

struct Home: View {
//    GETTING WINDOW SIZE
    var window = NSScreen.main?.visibleFrame
    @State var selected = "Home"
    @Namespace var animation

    var body: some View {

        HStack{

            HStack(spacing: 0){

                VStack(spacing: 22){

                    HStack{

                        Image("logo")
                            .resizable()
                            .aspectRatio( contentMode: .fill)
                            .frame(width: 45, height: 45)

                        Text("Pinterest")
                            .fontWeight(.semibold)
                            .foregroundColor(.black)

                        Spacer(minLength: 0)

                    }
                    .padding(.top)
                    .padding(.leading)
//                    tab button

                    TabButton(image: "house.fill", title: "Home", animation: animation, selected: $selected)

                    TabButton(image: "clock.fill", title: "Recent", animation: animation, selected: $selected)

                    TabButton(image: "person.2.fill", title: "Following", animation: animation, selected: $selected)

                    Spacer(minLength: 0)

                    Divider()
                }
            }
//            side bar default size...
            .frame(width: 220)

            Spacer()

        }
        .frame(width: window!.width / 1.5, height: window!.height - 40)
        .background(Color.white.opacity(0.6))
        .background(BlurWindow())

    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
