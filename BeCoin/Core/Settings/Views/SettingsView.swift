//
//  SettingsView.swift
//  BeCoin
//
//  Created by André Porto on 01/09/23.
//

import SwiftUI

struct SettingsView: View {
    
    let defaultURL = URL(string: "https://www.google.com.br")!
    let youtubeURL = URL(string: "https://www.youtube.com/@AndrePorto")!
    let coffeeURL = URL(string: "https://nubank.com.br/pagar/4dofs/HHrUgFW0Wv")!
    let coinGeckoURL = URL(string: "https://www.coingecko.com")!
    let portfolioURL = URL(string: "https://andreporto.vercel.app")!
    let linkedinURL = URL(string: "https://www.linkedin.com/in/andremporto/")!
    let githubURL = URL(string: "https://github.com/andremporto")!
    let instagramURL = URL(string: "https://www.instagram.com/andreporto.78")!
    let twitterURL = URL(string: "https://twitter.com/andremporto")!
    let mediumURL = URL(string: "https://medium.com/@andremporto")!
    
    var body: some View {
        NavigationView {
            List {
                appSection
                coinGeckoSection
                andreInfoSection
                applicationSection
            }
            .font(.headline)
            .tint(.blue)
            .listStyle(GroupedListStyle())
            .navigationTitle("Informações")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButton()
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}


extension SettingsView {
    
    private var appSection: some View {
        Section {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("O aplicativo iOS BeCoin é a solução perfeita para gerenciar com segurança seus ativos digitais. Com uma interface intuitiva e segura, você pode monitorar todas as suas criptomoedas com facilidade.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Mostre seu apoio pagando um café 🥰", destination: coffeeURL)
            
        } header: {
            Text("BeCoin")
        }
    }
    
    private var andreInfoSection: some View {
        Section {
            VStack(alignment: .leading) {
                Image("andre")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("Olá, eu sou o André Porto 👋🏼. Este aplicativo foi desenvolvido utilizando SwiftUI e escrito 100% em Swift. O projeto se beneficia de Arquitetura MVVM, Combine, CoreData, Multithreading, editores/assinantes e persistência de dados... Obrigado pelo apoio e por utilizar meu App ☺️")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Portfólio", destination: portfolioURL)
            Link("LinkedIn", destination: linkedinURL)
            Link("GitHub", destination: githubURL)
            Link("Medium", destination: mediumURL)
            Link("Instagram", destination: instagramURL)
            Link("Twitter", destination: twitterURL)
            Link("YouTube", destination: youtubeURL)
            
        } header: {
            Text("Developer")
        }
    }
    
    private var coinGeckoSection: some View {
        Section {
            VStack(alignment: .leading) {
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 60)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("Os dados de criptomoedas utilizados neste aplicativo provêm de uma API gratuita da CoinGecko! Os preços das moedas podem estar ligeiramente atrasados.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Visite a CoinGecko", destination: coinGeckoURL)
            
        } header: {
            Text("CoinGecko")
        }
    }
    
    private var applicationSection: some View {
        Section {
            Link("Termos de Serviço", destination: defaultURL)
            Link("Politica de Privacidade", destination: defaultURL)
            Link("Developer Website", destination: defaultURL)
            Link("Saiba mais...", destination: defaultURL)
            
        } header: {
            Text("Aplicativo")
        }
    }
    
}
