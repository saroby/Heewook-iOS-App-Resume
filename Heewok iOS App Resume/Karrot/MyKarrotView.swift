import SwiftUI
import GenesicSwiftUI

struct MyKarrotView: View {
    var body: some View {
        NavigationStack {
            List {
                Section {
                    NavigationLink {
                        
                    } label: {
                        HStack {
                            UserCircleView(size: .medium, imageURL: nil)
                            Text("치킨치")
                            Text("44.3c")
                            Spacer()
                        }
                    }
                    
                    VStack {
                        NavigationLink {
                            
                        } label: {
                            HStack {
                                Image(systemName: "carrot.fill")
                                Text("Pay")
                                Spacer()
                                Text("0원")
                            }
                        }
                        
                        HStack {
                            Button {
                                
                            } label: {
                                Text("충전")
                                    .frame(maxWidth: .infinity)
                            }
                            .buttonStyle(.bordered)
                            

                            Button {
                                
                            } label: {
                                Text("송금")
                                    .frame(maxWidth: .infinity)
                            }
                            .buttonStyle(.bordered)
                            
                        }
                    }
                }
                
                Section {
                    VStack(alignment: .leading) {
                        Text("서비스")
                        LazyVGrid(
                            columns: [
                                GridItem(.flexible(), alignment: .leading),
                                GridItem(.flexible(), alignment: .leading),
                            ],
                            spacing: 10
                        ) {
                            Label("중고거래", systemImage: "circle")
                            Label("알바", systemImage: "circle")
                            Label("부동산", systemImage: "circle")
                            Label("중고차", systemImage: "circle")
                            Label("모임", systemImage: "circle")
                            Label("스토리", systemImage: "circle")
                        }
                    }
                }
                
                Section {
                    VStack(alignment: .leading) {
                        Text("당근페이 통합")
                        
                        NavigationLink {
                            
                        } label: {
                            Label("매월 이자가 쌓이는 알뜰통장", systemImage: "circle")
                        }
                    }
                }
                
                Section {
                    VStack(alignment: .leading) {
                        Text("나의 거래")
                        NavigationLink {
                            
                        } label: {
                            Label("관심목록", systemImage: "circle")
                        }
                        NavigationLink {
                            
                        } label: {
                            Label("최근 본 게시물", systemImage: "circle")
                        }
                        NavigationLink {
                            
                        } label: {
                            Label("판매내역", systemImage: "circle")
                        }
                        NavigationLink {
                            
                        } label: {
                            Label("구매내역", systemImage: "circle")
                        }
                        NavigationLink {
                            
                        } label: {
                            Label("중고거래 가계부", systemImage: "circle")
                        }
                    }
                }
                
                Section {
                    VStack(alignment: .leading) {
                        Text("당근 소식")
                        NavigationLink {
                            
                        } label: {
                            Label("진행 중인 이벤트", systemImage: "circle")
                        }
                        NavigationLink {
                            
                        } label: {
                            Label("공지사항", systemImage: "circle")
                        }
                    }
                }
                
                Section {
                    VStack(alignment: .leading) {
                        Text("나의 활동")
                        NavigationLink {
                            
                        } label: {
                            Label("내 동네생활 글", systemImage: "circle")
                        }
                        NavigationLink {
                            
                        } label: {
                            Label("받은 쿠폰함", systemImage: "circle")
                        }
                        NavigationLink {
                            
                        } label: {
                            Label("후기 및 제안한 장소", systemImage: "circle")
                        }
                        NavigationLink {
                            
                        } label: {
                            Label("내 단골 목록", systemImage: "circle")
                        }
                    }
                }
                
                Section {
                    VStack(alignment: .leading) {
                        Text("나의 비즈니스")
                        NavigationLink {
                            
                        } label: {
                            Label("비즈프로필 관리", systemImage: "circle")
                        }
                        NavigationLink {
                            
                        } label: {
                            Label("광고", systemImage: "circle")
                        }
                    }
                }
                
                Section {
                    VStack(alignment: .leading) {
                        Text("설정")
                        NavigationLink {
                            
                        } label: {
                            Label("내 동네 설정", systemImage: "circle")
                        }
                        NavigationLink {
                            
                        } label: {
                            Label("동네 인증하기", systemImage: "circle")
                        }
                        NavigationLink {
                            
                        } label: {
                            Label("QR 코드 스캔", systemImage: "circle")
                        }
                        NavigationLink {
                            
                        } label: {
                            Label("키워드 알림 설정", systemImage: "circle")
                        }
                        NavigationLink {
                            
                        } label: {
                            Label("앱 설정", systemImage: "circle")
                        }
                    }
                }
                
                Section {
                    VStack(alignment: .leading) {
                        Text("고객지원")
                        NavigationLink {
                            
                        } label: {
                            Label("고객센터", systemImage: "circle")
                        }
                        NavigationLink {
                            
                        } label: {
                            Label("의견 남기기", systemImage: "circle")
                        }
                        NavigationLink {
                            
                        } label: {
                            Label("약관 및 정책", systemImage: "circle")
                        }
                    }
                }
            }
            .toolbarTitleDisplayMode(.inline)
            .navigationTitle("나의 당근")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "gear")
                }
            }
            .listStyle(.insetGrouped)
        }
    }
}

#Preview {
    MyKarrotView()
}
