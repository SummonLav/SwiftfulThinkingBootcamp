//
//  ActionSheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 8/23/24.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button(action: {
                    actionSheetOption = .isMyPost
                    showActionSheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
                .accentColor(.black)
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
    }
    
    func getActionSheet() -> ActionSheet {
        let shareButton: ActionSheet.Button = .default(Text("share")) {
            // add code to share post
        }
        let reportButton: ActionSheet.Button = .destructive(Text("report")) {
            // add code to report post
        }
        let deleteButton: ActionSheet.Button = .destructive(Text("delete")) {
            // add code to delete post
        }
        let cancelButton: ActionSheet.Button = .cancel()
        
        switch actionSheetOption {
        case .isMyPost:
            return ActionSheet(
                title: Text("What would you like to do?"),
                message: nil,
                 buttons: [shareButton, reportButton, deleteButton, cancelButton]
            )
        case .isOtherPost:
            return ActionSheet(
                title: Text("What would you like to do?"),
                message: nil,
                buttons: [shareButton, reportButton, cancelButton])
        }
        
        //        let button1: ActionSheet.Button = .default(Text("default"))
        //        let button2: ActionSheet.Button = .cancel()
        //        let button3: ActionSheet.Button = .destructive(Text("destrcutive"))
        //
        //        return ActionSheet(title: Text("This is the title"),
        //                           message: Text("This is the message"),
        //                            buttons: [button1, button1, button1, button2, button3])
    }
}

#Preview {
    ActionSheetBootcamp()
}
