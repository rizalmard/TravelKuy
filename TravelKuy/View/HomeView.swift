//
//  HomeView.swift
//  TravelKuy
//
//  Created by Rizal Muhammad on 26/11/22.
//

import SwiftUI

struct HomeView: View {
    // MARK: - PROPERTIES
    @State private var isShowingAlert: Bool = false
    @State private var isShowingDetailSheet: Bool = false
    
    // MARK: - BODY
    var body: some View {
        ZStack() {
            Image("go-to-beach")
                .resizable()
                .scaledToFill()
                .overlay {
                    Color(.black)
                        .opacity(0.5)
                }
                .ignoresSafeArea()
                
            
            VStack {
                headerView
                    .padding(20)
                
                Text("Start your\nAdventure\nand Go\nTravel now")
                    .font(.system(size: 40, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(20)
                    .offset(x: -55, y: 0)
                
                Text("Discover local destinations beauty with\nBluesky and travel with pride.")
                    .font(.system(.headline, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .offset(x: 5, y: 0)
                Spacer()
                
            }//: VStack
        }//: ZStack
    }
}

// MARK: - PREVIEW
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

// MARK: - EXTENSION
extension HomeView {
    private var headerView: some View {
        HStack(alignment: .center, spacing: 95) {
            Button {
                isShowingAlert = true
            } label: {
                Label {
                } icon: {
                    Color.primary
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                        .opacity(0.1)
                        .overlay {
                            Image(systemName: "cloud.sun.fill")
                                .symbolRenderingMode(.multicolor)
                                .foregroundColor(.white)
                        }
                }
            }
            .foregroundColor(.white)
            .alert("Not yet available",
                   isPresented: $isShowingAlert) {
                Button {} label: {
                    Text("OK")
                }
            } message: {
                Text("Currently on active development")
            }
            
            Text("Travel")
                .font(.system(.headline, design: .rounded))
                .foregroundColor(.white)
            
            Color.primary
                .frame(width: 40, height: 40)
                .clipShape(Circle())
                .opacity(0.1)
                .overlay {
                    Image(systemName: "cart.badge.plus")
                        .symbolRenderingMode(.multicolor)
                        .foregroundColor(.white)
                }
                .onTapGesture {
                    isShowingDetailSheet.toggle()
                }
                .sheet(isPresented: $isShowingDetailSheet) {
                    DetailSheetView()
                        .presentationDetents([.medium, .height(380)])
                        .presentationDragIndicator(.visible)
                        .padding(10)
                }
        }//: HStack
    }
    
}
