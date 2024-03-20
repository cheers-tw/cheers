//
//  AddFriendView.swift
//  cheers
//
//  Created by Dong on 2024/3/20.
//

import SwiftUI

struct AddFriendView: View {
    @State var searchId = ""
    
    var body: some View {
        NavigationStack {
            HStack {
                DismissButton()
                Text("添加好友")
                Spacer()
            }
            .padding()
            .fontWeight(.medium)
            .background(Color(UIColor.systemGray6), ignoresSafeAreaEdges: .top)
            
            HStack {
                GrayTextField("輸入使用者 id", text: $searchId)
                    .font(.footnote)
                Button(action: {}) {
                    Image(systemName: "qrcode.viewfinder")
                        .font(.title)
                        .foregroundStyle(.black)
                }
            }
            .padding()
            
            Spacer()
            
            VStack{
                AsyncImage(url: URL(string: "")) { phase in
                    switch phase {
                        case .success(let image):
                            image
                                .resizable()
                        default:
                            Rectangle()
                                .fill(Color(UIColor.systemGray5))
                                .overlay {
                                    Image(systemName: "exclamationmark.triangle.fill")
                                        .font(.title)
                                        .foregroundStyle(.gray)
                                }
                    }
                }
                .scaledToFill()
                .background(Color(UIColor.systemGray5))
                .clipShape(RoundedRectangle(cornerRadius: 12))
                
                Text("@user_id")
                    .fontWeight(.semibold)
                    .padding(8)
                    .frame(maxWidth: .infinity)
                    .background(Color(UIColor.systemGray5))
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
            .frame(width: 200, height: 200)
            
            Spacer()
            Spacer()
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    AddFriendView()
}