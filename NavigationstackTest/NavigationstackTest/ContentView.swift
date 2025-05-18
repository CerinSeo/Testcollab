//
//  ContentView.swift
//  NavigationstackTest
//
//  Created by 서세린 on 4/18/25.
//

import SwiftUI

struct ContentView: View {
    // 화면 이동 경로를 저장하는 상자라고 생각하면 돼요!
    @State var path = NavigationPath()
    
    var body: some View {
        // 화면들을 쌓아 올릴 수 있는 Stack을 만들어요!
        NavigationStack(path: $path) {
            VStack(spacing: 20) {
                Text("여기는 루트입니다") // 제일 첫 화면이에요!
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 50)
                
                // 1번 화면으로 이동하는 버튼
                Button(action: {
                    path.append("1") // 경로에 "1"을 추가하면 1번 화면으로 이동해요!
                }) {
                    Text("1번으로 이동하기")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(.horizontal)
                }
                
                // 2번 화면으로 이동하는 버튼
                Button(action: {
                    path.append("2") // 경로에 "2"를 추가하면 2번 화면으로 이동해요!
                }) {
                    Text("2번으로 이동하기")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(.horizontal)
                }
            }
            // 화면을 어떤 값으로 이동할지 정해줘요
            .navigationDestination(for: String.self) { value in
                // 만약 경로에 "1"이 들어오면 1번 화면을 보여줘요
                switch value {
                case "1":
                    DetailView1(path: $path)
                case "2":
                    DetailView2(path: $path)
                case "3":
                    DetailView3(path: $path)
                case "4":
                    DetailView4(path: $path)
                default:
                    EmptyView() // 아무 것도 없는 화면이에요
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
