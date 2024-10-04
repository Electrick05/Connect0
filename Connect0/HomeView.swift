import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView() {
            VStack(alignment: .leading) {
                ForEach(0..<100) {
                    Text("Row \($0)")
                }
            }
            .frame(maxWidth: .infinity)
            .frame(maxHeight: .infinity)
        }
    }
    
    //    var body: some View {
    //
    //        ZStack {
    //            Circle()
    //                .frame(width: 200, height: 200)
    //                .foregroundColor(.black)
    //            Text("1")
    //                .foregroundColor(.white)
    //                .font(.system(size: 70, weight: .bold))
    //        }
    //    }
    //}
    
    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
        }
    }
}
