//
//  NoItemsView.swift
//  TodoList
//
//  Created by Enes Eken on 13.05.2024.
//

import SwiftUI

struct NoItemsView: View {
    
    @State var animate: Bool = false
//    let secondaryAccentColor = Color("SecondaryAccentColor")

    var body: some View {
        ScrollView {
            VStack(spacing: 5) {
                Text("There are no items!")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 10)

                Text("No items found. Add one and start managing your tasks. 🚀")
                NavigationLink("Add Something 🥳", destination: AddView())
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding()
                    .frame(height: 55)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/ .infinity/*@END_MENU_TOKEN@*/)
                    .background(animate ? .pink : .accentColor)
                    .cornerRadius(10)
                    .padding(.vertical, 20)
                    .padding(.horizontal, animate ? 30 : 50)
                    .scaleEffect(animate ? 1.1 : 1.0)
                    .offset(y: animate ? -7 : 0)
                    .shadow(color: animate ? .pink.opacity(0.7) : .accentColor.opacity(0.7), radius: animate ? 30 : 10, x: 0, y: animate ? 50 : 30)
            }
            .frame(maxWidth: 400)
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear(perform: addAnimation)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }

    func addAnimation() {
        guard !animate else { return }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(
                .easeInOut(duration: 1.0)
                    .repeatForever()) {
                animate.toggle()
            }
        }
    }
}

#Preview {
    NavigationStack {
        NoItemsView()
            .navigationTitle("No Items Found 🚀")
    }
}
