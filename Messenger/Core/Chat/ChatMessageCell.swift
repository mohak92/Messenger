//
//  ChatMessageCell.swift
//  Messenger
//
//  Created by Mohak Tamhane on 1/6/25.
//

import SwiftUI

struct ChatMessageCell: View {
    
    let isFromCurrentUser: Bool
    
    var body: some View {
        HStack {
            if isFromCurrentUser {
                Spacer()
                
                Text("This is a test message for now")
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemBlue))
                    .foregroundStyle(Color(.white))
                    .clipShape(ChatBubble(isFromCurrentUser: isFromCurrentUser))
                    .frame(minWidth: UIScreen.main.bounds.width / 1.5, alignment: .trailing)
            } else {
                HStack(alignment: .bottom, spacing: 8) {
                    CircularProfileImageView(user: User.MOCK_USER, size: .xxSmall)
                    
                    Text("This is a test message for now")
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray5))
                        .foregroundStyle(Color(.black))
                        .clipShape(ChatBubble(isFromCurrentUser: isFromCurrentUser))
                        .frame(minWidth: UIScreen.main.bounds.width / 1.75, alignment: .leading)

                    Spacer()
                }
            }
        }
        .padding(.horizontal, 8)
    }
}

#Preview {
    ChatMessageCell(isFromCurrentUser: false)
}
