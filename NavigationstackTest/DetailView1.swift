//
//  DetailView1.swift
//  NavigationstackTest
//
//  Created by 서세린 on 4/18/25.
//

import SwiftUI

struct DetailView1: View {
    @Binding var path: NavigationPath
    
    var body: some View {
        VStack(spacing: 20) {
            Text("1번 뷰 입니다.") // 지금 여긴 1번 화면이에요
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 50)
            
            // 3번 화면으로 이동하는 버튼
            Button {
                path.append("3") // 경로에 "3"을 추가해서 3번 화면으로 이동!
            } label: {
                Text("3번 뷰로 이동하기")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.horizontal)
//                    .padding()
            }
        }
    }
}

//#Preview {
//    DetailView1()
//}
