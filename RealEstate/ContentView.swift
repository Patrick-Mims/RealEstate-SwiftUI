/*
    ContentView
 */
import SwiftUI

struct ContentView: View {
    var body: some View {
        let photos = [
            "sfsu01",
            "sfsu02",
            "sfsu03",
            "sfsu04",
            "sfsu05"
        ]
        
        let college = [
            "College of Business",
            "College of Fine Arts",
            "J. Paul Leonard Library",
            "School of Humanities",
            "Cesar Chavez Student Center"
        ]
        
        let url = [
            "cob.sfsu.edu",
            "art.sfsu.edu",
            "library.sfsu.edu",
            "humanities.sfsu.edu",
            "sfsustudentcenter.sfsu.edu"
        ]
        
        let phone = [
            "(415)338-1276",
            "(415)338-2176",
            "(415)338-1854",
            "(415)338-1830",
            "(415)338-1112"
        ]
        
        Text("SFSU Campus Real Estate")
            .padding()
            .font(.callout)
        ZStack {
            LinearGradient(colors: [.yellow, .purple], startPoint: .top, endPoint: .center)
            VStack {
                ForEach (0..<photos.count, id: \.self) { index in
                    HStack {
                        Image("\(photos[index])")
                            .resizable()
                            .frame(width: 120, height: 100)
                            .scaledToFill()
                            .cornerRadius(10)
                        VStack {
                            Text("\(college[index])")
                                .fontWeight(.medium)
                                .frame(width: 210, alignment: .topLeading)
                            Text("\(url[index])")
                                .frame(width: 210, alignment: .topLeading)
                            Text("\(phone[index])")
                                .frame(width: 210, alignment: .topLeading)
                        }
                        .foregroundColor(.black)
                    }
                    if(index < photos.count - 1) { // do not add a divider under the last HStack
                        Divider()
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
