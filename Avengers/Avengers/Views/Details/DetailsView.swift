    //
    //  DetailsView.swift
    //  Avengers
    //
    //  Created by Yan Akhrameev on 04/10/21.
    //

    import SwiftUI

    struct DetailsView: View {
        
        @Environment(\.presentationMode) var presentationMode
        var item: Avenger
        
        @State private var favoriteStatus: Bool = false
        
        var body: some View {
            GeometryReader { view in
                ZStack {
                    Image(item.image)
                        .resizable()
                        .frame(minWidth: 0, maxWidth: view.size.width, minHeight: 0, maxHeight: 500)
                        .aspectRatio(contentMode: .fill)
                        .edgesIgnoringSafeArea(.top)
                    VStack {
                            HStack {
                                Button {
                                    self.presentationMode.wrappedValue.dismiss()
                                } label: {
                                    Image(systemName: "chevron.backward")
                                        .resizable()
                                        .frame(width: 20, height: 25)
                                        .padding()
                                }
                                Spacer()
                                Button {
                                    //open camera resource
                                } label: {
                                    Image(systemName: "cube")
                                        .resizable()
                                        .frame(width: 25, height: 25)
                                        .padding()
                                }
                                Button {
                                    // resize image
                                } label: {
                                    Image(systemName: "arrow.up.left.and.arrow.down.right")
                                        .resizable()
                                        .frame(width: 25, height: 25)
                                        .padding()
                                }
                                

                            }
                            .frame(minWidth: 0, maxWidth: view.size.width, alignment: .trailing)
                            Spacer()
                            Button {
                                self.favoriteStatus.toggle()
                            } label: {
                                if favoriteStatus {
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width: 25, height: 25)
                                        .padding()
                                } else {
                                    Image(systemName: "star")
                                        .resizable()
                                        .frame(width: 25, height: 25)
                                        .padding()
                                }
                                
                            }
                            .frame(minWidth: 0, maxWidth: view.size.width, alignment: .trailing)
                            .offset(y: -50)
                            
                        }
                        
                    }
                .frame(height: 500)
                }
            .navigationTitle("")
            .navigationBarHidden(true)
        }
    }

    struct DetailsView_Previews: PreviewProvider {
        static var previews: some View {
            DetailsView(item: avengers[0])
        }
    }
