//
//  ListBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 8/23/24.
//

import SwiftUI

struct ListBootcamp: View {
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    @State var veggies: [String] = [
        "tomato", "potato", "carrot"
    ]
    
    
    var body: some View {
        NavigationView {
            List {
                Section(
                    header:
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .font(.headline)
                        .foregroundColor(.orange)
                ) {
                    ForEach(fruits, id:\.self) {fruit in
                        Text(fruit.capitalized)
                            //.font(.caption)
                            .foregroundColor(.white)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.cyan)
                }
                
                Section(
                    header:
                        Text("Veggies")
                        .font(.headline)
                        .foregroundColor(.orange)) {
                            ForEach(veggies, id:\.self) {veg in
                                Text(veg.capitalized)
                            }
                            .onDelete(perform: delete)
                            .onMove(perform: move)
                        }
            }
            //.accentColor(.cyan)
            //.listStyle(InsetListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: Button("Add", action: {
                    fruits.append("Coconut")
                }))
        }
        .accentColor(.red)
    }
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
}


#Preview {
    ListBootcamp()
}
