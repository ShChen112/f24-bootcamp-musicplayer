//
//  ContentView.swift
//  Spofity Recreation
//
//  Created by Sherry Chen on 9/24/24.
//

import SwiftUI

struct ContentView: View {
    @State private var sliderValue: Double = .zero
    @State private var isPlaying: Bool = false
    @State private var isRandom: Bool = false
    @State private var isLoop: Bool = false
    @State private var isLike: Bool = false
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color("brown"), Color("medb"), Color("darkb")]), startPoint: .top, endPoint: .bottom)
            VStack{
                
                HStack{
                    Image(.downarrow)
                        .foregroundStyle(.white)
                    Spacer()
                    Text("Liked Songs")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                    Spacer()
                    Image(systemName:"ellipsis")
                        .foregroundStyle(.white)
                }
                HStack{
                    Image(.taylor)
                        .resizable()
                        .scaledToFit()
                        .padding(.top, 40)
                        .padding(.bottom, 20)
                }
                ZStack{
                    Text("Wildest Dreams")
                        .font(.title)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom)
                        .foregroundStyle(.white)
                    Button(action: {self.isLike.toggle()}) {
                        if self.isLike == true {
                            Image(systemName:"heart.fill")
                                .font(.title)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .foregroundStyle(.green)
                        } else {
                            Image(systemName:"heart")
                                .font(.title)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .foregroundStyle(.white)
                        }
                    }
                        
                    
                    
                    Text("Taylor Swift")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 50)
                        .foregroundStyle(.white)
                        .opacity(0.8)
                }
                Slider(value: $sliderValue, in: 0...4.5)
                    .accentColor(.white)
                    .onAppear {
                        let progressCircleConfig = UIImage.SymbolConfiguration(scale: .small)
                        UISlider.appearance().setThumbImage(UIImage(systemName: "circle.fill",
                        withConfiguration: progressCircleConfig),for: .normal)
                                }
                ZStack{
                    Text("\(sliderValue, specifier: "%.2f")")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.footnote)
                        .foregroundStyle(.white)
                    Text("\(sliderValue-4.5, specifier: "%.2f")")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .font(.footnote)
                        .foregroundStyle(.white)
                }
                HStack{
                    Button(action: {self.isRandom.toggle()}) {
                        if self.isRandom == true {
                            VStack{
                                Image(.random)
                                    .frame(width: 28.0, height: 30.0)
                                    .foregroundStyle(.green)
                                Color(.green)
                                    .clipShape(Circle())
                                    .frame(width: 5.0, height: 5.0)
                                    .padding(.top, -8)
                                }
                        } else {
                            Image(.random)
                                .frame(width: 28.0, height: 30.0)
                                .foregroundStyle(.white)

                        }
                    }
                    Spacer()
                    Image(systemName:"backward.end.fill")
                        .font(.system(size:35))
                        .foregroundStyle(.white)
                    Spacer()
                    Button(action: {self.isPlaying.toggle()}) {
                        Image(systemName: self.isPlaying == true ? "pause.circle.fill" : "play.circle.fill")
                            .font(.system(size:75))
                            .foregroundStyle(.white)
                    }
                    Spacer()
                    Image(systemName:"forward.end.fill")
                        .font(.system(size:35))
                        .foregroundStyle(.white)
                    Spacer()
                    Button(action: {self.isLoop.toggle()}) {
                        if self.isLoop == true {
                            VStack{
                                Image(.loop)
                                    .frame(width: 28.0, height: 30.0)
                                    .foregroundStyle(.green)
                                Color(.green)
                                    .clipShape(Circle())
                                    .frame(width: 5.0, height: 5.0)
                                    .padding(.top, -8)
                                }
                            
                        } else {
                            Image(.loop)
                                .frame(width: 28.0, height: 30.0)
                                .foregroundStyle(.white)
                        }
                        
                    }
                }
                HStack{
                    Image(systemName:"tv.and.hifispeaker.fill")
                        .frame(width: 28.0, height: 30.0)
                        .padding(.leading, 5)
                        .padding(.top, -10)
                        .foregroundStyle(.white)
                    Image("playlist")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 26.0, height: 28.0)
                        .padding(.leading, 295)
                        .padding(.top, -10)
                        .foregroundStyle(.white)
                    Spacer()
                }
            }
            .padding()
        }
        
        .edgesIgnoringSafeArea(.all)
                
    }
}

#Preview {
    ContentView()
}
