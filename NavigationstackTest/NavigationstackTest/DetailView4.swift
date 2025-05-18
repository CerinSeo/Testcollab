//
//  DetailView4.swift
//  NavigationstackTest
//
//  Created by 서세린 on 4/18/25.
//

import SwiftUI

struct DetailView4: View {
    @Binding var path: NavigationPath
    
    var body: some View {
        Text("4번 뷰 입니다.") // 여긴 4번 화면이에요!
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding(.top, 50)
        
        // 한 단계만 뒤로 가기
        Button {
            path.removeLast() // 마지막으로 쌓인 화면 하나만 지워요!
        } label: {
            Text("뒤로 가기 없이 뒤로가기?")
                .font(.title2)
                .fontWeight(.semibold)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.purple)
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding(.horizontal)
        }
    }
}
//#Preview {
//    DetailView4()
//}
