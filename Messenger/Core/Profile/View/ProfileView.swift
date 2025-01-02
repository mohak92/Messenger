//
//  ProfileView.swift
//  Messenger
//
//  Created by Mohak Tamhane on 12/30/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            VStack {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundStyle(Color(.systemGray4))
                
                Text("Bruce Wayne")
                    .font(.title2)
                    .fontWeight(.semibold)
                    
                List {
                    Section {
                        ForEach(SettingsOptionsViewModel.allCases) { option in
                            HStack {
                                Image(systemName: option.imaageName)
                                    .resizable()
                                    .frame(width: 24, height: 24)
                                    .foregroundStyle(option.imageBackgroundColor)
                                
                                Text(option.title)
                                    .font(.subheadline)
                            }
                            
                        }
                    }
                    
                    Section {
                        Button("Log Out") {
                            
                        }
                        
                        Button("Delete Account") {
                            
                        }
                    }
                    .foregroundStyle(Color(.red))
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
