//
//  ContentView.swift
//  FrequentlyAskedQuestion
//
//  Created by Sheraz Ahmed on 10/06/2025.
//

import SwiftUI


struct ContentView: View {
    @State private var selectedSection: FAQSection = FAQData.sections.first!
    
    
    var body: some View {
        VStack(spacing: 25){
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(FAQData.sections) { section in
                        
                        
                        
                        
                        Text(section.title)
                            .fontWeight(selectedSection == section ? .medium : .regular)
                            .padding()
                            .background(selectedSection == section ? Color(.main) : Color(.clear))
                            .foregroundStyle(selectedSection == section ? Color(.white) : Color(.main))
                            .clipShape(Capsule())
                            .overlay(
                                Capsule()
                                    .stroke(selectedSection == section ? Color(.clear) : Color(.main), lineWidth: 1)
                            )
                            .onTapGesture {
                                selectedSection = section
                            }
                        
                        
                        
                    }
                }
                
                
            }
            .scrollClipDisabled()
            
            
            
            ScrollView {
                VStack(alignment: .leading) {
                    VStack {
                        ForEach(selectedSection.faqs) { faq in
                            FAQItemView(faq: faq)
                        }
                    }
                }
            }
            
            .scrollBounceBehavior(.basedOnSize, axes: .vertical)
          }
        .padding([.horizontal, .top])

    }
}




struct FAQItemView: View {
    
    @State var faq: FAQ
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                
                
                Text(faq.question)
                    .fontWeight(.medium)
                
                
                Spacer()
                Image(systemName: "chevron.down")
                    .rotationEffect(.degrees(faq.isExpanded ? 180 : 0))
                    .animation(.easeInOut, value: faq.isExpanded)
                
            }
            
            if faq.isExpanded {
                
                Divider()
                
                Text(faq.answer)
                    .foregroundStyle(Color(.secondaryLabel))
            }
        }
        
        .contentShape(Rectangle())
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.border)
        )
        
        .onTapGesture {
            toggleFAQExpansion()
        }
    }
    
    private func toggleFAQExpansion() {
        withAnimation {
            faq.isExpanded.toggle()
        }
    }
}




#Preview {
    ContentView()
}
