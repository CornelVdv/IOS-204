//
//  List.swift
//  Shaken not stirred
//
//  Created by student on 2022/10/12.
//

import SwiftUI

struct List: View {
    var cities: [City] = Martini_List
    var body: some View {
        ZStack(){
            
            VStack(){
                Image(".Logo")
                    .resizable()
                    .scaledToFit()
                
                VStack{
                    Text("Martini name")
                    Image("")
                        .resizable()
                        .scaledToFit()
                }
                HStack{
                    VStack{
                        Text("10min")
                            .font(.largeTitle)
                        Text("Time")
                    }
                    VStack{
                        Text("2")
                            .font(.largeTitle)
                        Text("Servings")
                    }
                    VStack{
                        Text("38%")
                            .font(.largeTitle)
                        Text("ABV")
                    }
                    
                }
                VStack{
                    Text("Ingredience")
                        .font(.largeTitle)
                    Text("")
                         }
                VStack{
                    Text("Recipe")
                        .font(.largeTitle)
                    Text("")
                         }
                Spacer()
                TabView {
                        Text("Home Screen")
                            .tabItem {
                                Image("home")
                                Text("Home")
                        }
                        Text("Explore Screen")
                            .tabItem {
                                Image("exploreActive")
                                Text("Explore")
                        }
                        Text("Active Screen")
                            .tabItem {
                                Image("favourite")
                                Text("Recipe")
                        }
                        Text("Settings Screen")
                            .tabItem {
                                Image("settings")
                                Text("Settings")
                    }                    }
                .background(Color.LightGreen)            }
        }
    }
}

struct List_Previews: PreviewProvider {
    static var previews: some View {
        List()
    }
}

struct DropdownOption: Hashable {
    let key: String
    let value: String

    public static func == (lhs: DropdownOption, rhs: DropdownOption) -> Bool {
        return lhs.key == rhs.key
    }
}

struct DropdownRow: View {
    var option: DropdownOption
    var onOptionSelected: ((_ option: DropdownOption) -> Void)?

    var body: some View {
        Button(action: {
            if let onOptionSelected = self.onOptionSelected {
                onOptionSelected(self.option)
            }
        }) {
            HStack {
                Text(self.option.value)
                    .font(.system(size: 14))
                    .foregroundColor(Color.black)
                Spacer()
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 5)
    }
}

struct Dropdown: View {
    var options: [DropdownOption]
    var onOptionSelected: ((_ option: DropdownOption) -> Void)?

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                ForEach(self.options, id: \.self) { option in
                    DropdownRow(option: option, onOptionSelected: self.onOptionSelected)
                }
            }
        }
        .frame(minHeight: CGFloat(options.count) * 30, maxHeight: 250)
        .padding(.vertical, 5)
        .background(Color.white)
        .cornerRadius(5)
        .overlay(
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color.gray, lineWidth: 1)
        )
    }
}

struct DropdownSelector: View {
    @State private var shouldShowDropdown = false
    @State private var selectedOption: DropdownOption? = nil
    var placeholder: String
    var options: [DropdownOption]
    var onOptionSelected: ((_ option: DropdownOption) -> Void)?
    private let buttonHeight: CGFloat = 45

    var body: some View {
        Button(action: {
            self.shouldShowDropdown.toggle()
        }) {
            HStack {
                Text(selectedOption == nil ? placeholder : selectedOption!.value)
                    .font(.system(size: 14))
                    .foregroundColor(selectedOption == nil ? Color.gray: Color.black)

                Spacer()

                Image(systemName: self.shouldShowDropdown ? "arrowtriangle.up.fill" : "arrowtriangle.down.fill")
                    .resizable()
                    .frame(width: 9, height: 5)
                    .font(Font.system(size: 9, weight: .medium))
                    .foregroundColor(Color.black)
            }
        }
        .padding(.horizontal)
        .cornerRadius(5)
        .frame(width: .infinity, height: self.buttonHeight)
        .overlay(
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color.gray, lineWidth: 1)
        )
        .overlay(
            VStack {
                if self.shouldShowDropdown {
                    Spacer(minLength: buttonHeight + 10)
                    Dropdown(options: self.options, onOptionSelected: { option in
                        shouldShowDropdown = false
                        selectedOption = option
                        self.onOptionSelected?(option)
                    })
                }
            }, alignment: .topLeading
        )
        .background(
            RoundedRectangle(cornerRadius: 5).fill(Color.white)
        )
    }
}

struct DropdownSelector_Previews: PreviewProvider {
    static var uniqueKey: String {
        UUID().uuidString
    }

    static let options: [DropdownOption] = [
        DropdownOption(key: uniqueKey, value: "Sunday"),
        DropdownOption(key: uniqueKey, value: "Monday"),
        DropdownOption(key: uniqueKey, value: "Tuesday"),
        DropdownOption(key: uniqueKey, value: "Wednesday"),
        DropdownOption(key: uniqueKey, value: "Thursday"),
        DropdownOption(key: uniqueKey, value: "Friday"),
        DropdownOption(key: uniqueKey, value: "Saturday")
    ]


    static var previews: some View {
        Group {
            DropdownSelector(
                placeholder: "Day of the week",
                options: options,
                onOptionSelected: { option in
                    print(option)
            })
            .padding(.horizontal)
        }
    }
}
