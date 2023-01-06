//
//  ContentView.swift
//  FormSwiftUI
//
//  Created by Billy Tandias on 20/04/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
        
            Form{
                //Section foto profile
                Section(){
                    NavigationLink(
                        destination: About()){
                        HStack{
                            Image("appleblack")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            
                            //Nama dan Status
                            VStack(alignment:.leading){
                                Text("Billy Tandias").font(.headline)
                                Text("Beginner Programmer").font(.caption)
                            }
                        }
                        .padding(.top,10)
                        .padding(.bottom,10)
                    }
                }
                
                //Section pengaturan umum
                Section(header: Text("Pengaturan Umum")){
                    NavigationLink(destination: Star()){
                        HStack(spacing:20){
                            Image(systemName: "star.fill")
                                .frame(width:35, height:35)
                                .background(Color.orange)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            Text("Star Mesasages")
                        }
                    }
                        HStack(spacing:20){
                            NavigationLink(destination: Star()){
                            Image(systemName: "tv")
                                .frame(width:35, height:35)
                                .background(Color.green)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            Text("  Whatsapp Web")
                        }
                    }
                }
                
                Section(header: Text("Pengaturan Akun")){
                    NavigationLink(destination: Account()) {
                        HStack(spacing:20){
                            Image(systemName: "person")
                                .frame(width:35, height:35)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            Text("Account")
                        }
                    }
                    HStack(spacing:20){
                            NavigationLink(destination: ChatSetting()){
                                Image(systemName: "phone.circle")
                                    .frame(width:35, height:35)
                                    .background(Color.green)
                                    .cornerRadius(10)
                                    .foregroundColor(Color.white)
                                Text("  Chat")
                            }
                        }
                }
                
            }.navigationBarTitle("Settings")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct About : View {
    var body : some View {
        Text("Halaman About")
    }
}
struct Account : View {
    var body : some View {
        Text("Halaman Account Settings")
    }
}
struct Star : View {
    var body : some View {
        Text("Halaman Star Messages")
    }
}
struct LinkedDevice : View {
    var body : some View {
        Text("Halaman Linked Device")
    }
}
struct ChatSetting : View {
    var body : some View {
        Text("Halaman Chat Settings")
    }
}
