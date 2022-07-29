//
//  listInterface.swift
//  ListFinalFinal
//
//  Created by Cuong Nguyen Phuc on 29/07/2022.
//

import SwiftUI


var ItemList: [String] = []






struct Stuff: View {
    @State var stuff: StuffObject
    var body: some View {
    VStack(alignment: .leading){
        HStack{
            icon()
            Text(stuff.name)
                .font(.title)
        }
        HStack{
            Text(stuff.desc)
                .font(.subheadline)
            Spacer()
            Text(stuff.location)
                .font(.subheadline)
        }
    }
    .padding()
        
    }
}
    


struct Stuff_Previews: PreviewProvider {
    static var previews: some View {
//        jsonViewer()
        Stuff(stuff: stuffArray[0])
    }
}


class List{
    public var Items: [Item] = []
    public var itemType: String
    init(itemTypeIn: String){
        itemType = itemTypeIn
    }
    func addItem(Item: Item){
        Items.append(Item)
    }
    func iterator()->String{
        var ListString: String = ""
        for i in Items{
            ListString.append("\n")
            ListString.append(i.name)
        }
        return ListString
    }
    
}


struct Item {
    public var name:String
    public var address: String
    public var  desc: String
}




//struct jsonViewer : View {
//    var body: some View {
//        Text(stuffArray[0].jsonViewer())
//    }
//}

