//
//  DetailSheetView.swift
//  TravelKuy
//
//  Created by Rizal Muhammad on 29/11/22.
//

import SwiftUI

struct DetailSheetView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center) {
                Text("Pink Beach, Flores")
                    .font(.system(size: 22, design: .rounded))
                    .fontWeight(.bold)
                
                Spacer()
                
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                        .fontWeight(.bold)
                    
                    Text("4.8")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                }
            }//: HStack
            .padding(12)
            
            HStack() {
                CategoryItemView(title: "Walk", icon: "figure.walk.motion", color: .green, bgColor: Color("BrokenWhite"))
                
                CategoryItemView(title: "Food", icon: "fork.knife.circle.fill", color: .orange, bgColor: Color("BrokenWhite"))
                
                CategoryItemView(title: "Stay", icon: "house.fill", color: .blue, bgColor: Color("BrokenWhite"))
                
                CategoryItemView(title: "Ride", icon: "sailboat.fill", color: .indigo, bgColor: Color("BrokenWhite"))
                
            }//: HSTACK
            .padding(12)
            
            
            VStack(alignment: .leading, spacing: 10) {
                Text("About Destination")
                    .font(.system(size: 18 , design: .rounded))
                    .fontWeight(.bold)
                Text("Pink Beach, or Pantai Merah, as it aptly named, is one of seven pink beaches on the planet.\nThis was awesome")
                    .font(.system(size: 17, design: .rounded))
                    .fontWeight(.regular)
            }//: VStack
            .padding(12)
            
            HStack {
                Text("$81,39")
                    .font(.system(size: 22, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                
                Spacer()
                
                Link(destination: URL(string: "https://github.com/rizalmard")!) {
                    HStack(spacing: 15) {
                        Image(systemName: "bag")
                            .resizable()
                            .frame(width: 23, height: 25)
                        
                        Text("Join Tour")
                            .font(.system(size: 25, design: .rounded))
                            .fontWeight(.regular)
                    }//: HStack
                    .frame(width: 200, height: 70)
                    .foregroundColor(.white)
                    .background{
                        LinearGradient(colors: [.purple, .blue], startPoint: .leading, endPoint: .trailing)
                    }
                    .cornerRadius(40)
                }
            }//: HStack
            .padding(12)
            Spacer()
        }//: VStack
        
        
        
    }
}

struct DetailSheetView_Previews: PreviewProvider {
    static var previews: some View {
        DetailSheetView()
    }
}

struct CategoryItemView: View {
    var title: String
    var icon: String
    var color: Color
    var bgColor: Color
    
    var body: some View {
        HStack(alignment: .center, spacing: 50) {
            VStack(alignment: .center, spacing: 10) {
                Image(systemName: icon)
                    .symbolRenderingMode(.multicolor)
                    .font(.system(size: 24))
                    .foregroundColor(color)
                
                Text(title)
                    .foregroundColor(.black)
            }
            
        } //: HSTACK
        .frame(width: 50, height: 50)
        .padding()
        .background(bgColor)
        .cornerRadius(15)
    }
}
