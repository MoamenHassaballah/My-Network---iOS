//
//  ProfileDetailsView.swift
//  My Network
//
//  Created by Moamen Hassaballah on 07/04/2024.
//

import SwiftUI

struct ProfileDetailsView: View {
    
    @EnvironmentObject var deviceManager: DeviceManager
    
    @Environment(\.colorScheme) var colorScheme
    var country: CountryModel
    
    
    
    var body: some View {
        ScrollView{
            VStack(spacing: 20){
                VStack(alignment:.leading, spacing: 40){
                    CountryHeader(country: country)
                    
                    if deviceManager.isiPad(){
                        LazyHGrid(rows: [GridItem(.flexible())], alignment: .center, spacing: 40, content: {
                            
                            //Capital City
                            InfoItemView(image: "location", title: "Capital City", content: country.capital.first ?? "")
                            //Area
                            InfoItemView(image: "square.resize", title: "Area", content: "\(country.area) km")
                            //Currency
                            InfoItemView(image: "dollarsign", title: "Currency", content: country.currencies.first?.value.name ?? "")
                            //Population
                            InfoItemView(image: "person.2", title: "Population", content: country.population.formattedPopulation())
                            
                            
                        })
                    }else{
                        
                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], alignment: .center, spacing: 40, content: {
                            
                            //Capital City
                            InfoItemView(image: "location", title: "Capital City", content: country.capital.first ?? "")
                            //Area
                            InfoItemView(image: "square.resize", title: "Area", content: "\(country.area) km")
                            //Currency
                            InfoItemView(image: "dollarsign", title: "Currency", content: country.currencies.first?.value.name ?? "")
                            //Population
                            InfoItemView(image: "person.2", title: "Population", content: country.population.formattedPopulation())
                            
                            
                        })
                        
                    }
                    
                    
                }
                .padding()
                .background{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.mDarkGreen)
                }
                
                
                
                let layout =  deviceManager.isiPad() ?
                        AnyLayout(HStackLayout(alignment: .top)) :
                        AnyLayout(VStackLayout())
                
                layout{
                    VStack(alignment: .leading){
                        Text("Country Overview")
                        
                        NetworkAboutView(aboutText: country.about, addBackground: false)
                        
                        Spacer()
                            .frame(height: 2)
                            .background{Rectangle().fill(.white)}
                        
                        LeadershipView(orientation: 1, hasBackground: false, leadershipList: country.leadership)
                        
                    }
                    .padding()
                    .background{
                        RoundedRectangle(cornerRadius: 10)
                            .fill(colorScheme == .dark ?  .white.opacity(0.1) :  .black.opacity(0.5))
                    }
                    
                    
                    VStack {
                        VStack(alignment: .leading, spacing: 40){
                            ClimateView()
                            
                            NaturalView()
                            
                            NaturalView(isNaturalResources: false)
                            
                        }
                        .padding()
                        .background{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(colorScheme == .dark ?  .white.opacity(0.1) :  .black.opacity(0.5))
                        }
                        
                        
//                        TripView()
                    }
                }
                
            }
            
            
        }
        .padding()
        .scrollIndicators(.hidden)
        .frame(maxWidth: .infinity)
        
    }
}

#Preview {
    ProfileDetailsView(country: DemoModels().country)
        .environmentObject(DeviceManager())
}
