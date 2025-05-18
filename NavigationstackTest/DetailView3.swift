//
//  DetailView3.swift
//  NavigationstackTest
//
//  Created by 서세린 on 4/18/25.
//

import SwiftUI

struct DetailView3: View {
    @Binding var path: NavigationPath
    
    var body: some View {
        Text("3번 뷰입니다.") // 여긴 3번 화면이에요!
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding(.top, 50)
        
        // 루트(처음 화면)으로 돌아가기
        Button {
            path.removeLast(path.count) // 저장된 경로들을 전부 없애요! = 처음 화면으로!
        } label: {
            Text("루트로 이동하기")
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
//    DetailView3()
//}
