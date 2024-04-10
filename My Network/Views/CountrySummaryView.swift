//
//  CountrySummary.swift
//  My Network
//
//  Created by Moamen Hassaballah on 06/04/2024.
//

import SwiftUI

struct CountrySummaryView: View {
    
    @EnvironmentObject var deviceManager: DeviceManager
    
    var country: CountryModel = DemoModels().country
    
    var body: some View {
        ScrollView(.vertical){
            VStack(spacing: 10){
                //Header
                CountryHeader(country: country)
                
                Spacer()
                
                //Details
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], alignment: .leading, spacing: 40, content: {
                    
                    //Capital City
                    InfoItemView(image: "location", title: "Capital City", content: country.capital.first ?? "")
                    //Area
                    InfoItemView(image: "square.resize", title: "Area", content: "\(country.area) km")
                    //Currency
                    InfoItemView(image: "dollarsign", title: "Currency", content: country.currencies.first?.value.name ?? "")
                    //Population
                    InfoItemView(image: "person.2", title: "Population", content: country.population.formattedPopulation())
                    
                    
                })
                
                Spacer()
                
                NetworkAboutView(aboutText: country.about)
                    
                Spacer()
                
                LeadershipView(leadershipList: country.leadership)
                
                Spacer()
                
                NavigationLink(destination: ProfileDetailsView(country: country)) {
                    Text("View Full Profile")
                        .padding()
                        .background{
                            RoundedRectangle(cornerRadius: 10)
                                .stroke()
                        }
                }
                .foregroundStyle(.white)
                
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .background{
                if deviceManager.isiPad(){
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.mDarkGreen)
                }else{
                    Color.mDarkGreen
                }
            }
        }
        .scrollIndicators(.hidden)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
        
       
        
    }
}

#Preview {
    CountrySummaryView()
        .environmentObject(DeviceManager())
}
