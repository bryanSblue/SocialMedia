//
//  NewPostForm.swift
//  Socialmedia
//
//  Created by MAC on 09/07/22.
//

import SwiftUI

struct NewPostForm: View {
    typealias CreateAction = (Post) -> Void
    let createAction = CreateAction
    @State private var post = Post(title: "", content: "", authorName: "")
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Titulo de tu post", text: $title)
                    TextField("Autor", text: $authorName)
                }
                Section("Contenido") {
                    TextEditor(text: $content)
                        .multilineTextAlignment(.leading)
                }
                Button(action: createPost) {
                    Text("Di algo")
                }
                .font(.headline)
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .padding()
                .listRowBackground(Color.accentColor)
            }
            onSubmit(createPost)
                .navigationTitle("Nuevo Post")
        }
    }
    private func createPost() {
        createAction(post)
        dismiss()
    }
}

struct NewPostForm_Previews: PreviewProvider {
    static var previews: some View {
        NewPostForm(createAction: { _ in })
    }
}
