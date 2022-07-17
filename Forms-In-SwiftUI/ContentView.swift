//
//  ContentView.swift
//  Forms-In-SwiftUI
//
//  Created by Mitya Kim on 7/17/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var scheduled: Bool = false
    @State private var manuallyEnabledTomorrow: Bool = false
    @State private var colorTemperature: CGFloat = 0.5
    
    var body: some View {
        
        NavigationView {
            
            Form {
                
                Section {
                    Toggle(isOn: $scheduled) {
                        Text("Scheduled")
                    }
                    
                    HStack {
                        
                        VStack {
                            Text("From")
                            Text("To")
                        }
                        
                        Spacer()
                        
                        
                        NavigationLink {
                            
                        } label: {
                            VStack {
                                Text("Sanset").foregroundColor(.blue)
                                Text("Sunrise").foregroundColor(.blue)
                            }
                        }.fixedSize()

                        
                        
                    }
                    
                } header: {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ")
                }
                Section {
                    Toggle(isOn: $manuallyEnabledTomorrow) {
                        Text("Manually Enable Until Tomorrow")
                    }
                } header: {
                    Text("")
                }
                
                Section {
                    
                    HStack {
                        
                        Text("Less Warm")
                        Slider(value: $colorTemperature)
                        Text("More Warm")
                    }
                    
                    
                } header: {
                    Text("Color Temperature")
                }



            }
        }
           
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
