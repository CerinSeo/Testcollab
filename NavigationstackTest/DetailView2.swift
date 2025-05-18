//
//  DetailView2.swift
//  NavigationstackTest
//
//  Created by 서세린 on 4/18/25.
//

import SwiftUI

struct DetailView2: View {
    @Binding var path: NavigationPath
    
    var body: some View {
        VStack(spacing: 20) {
            Text("2번 뷰입니다.") // 지금 여긴 2번 화면이에요
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 50)
            
            // 4번 화면으로 이동하는 버튼
            Button {
                path.append("4") // 경로에 "4"를 추가해서 4번 화면으로 이동!
            } label: {
                Text("4번 뷰로 이동하기")
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
}

//#Preview {
//    DetailView2()
//}
