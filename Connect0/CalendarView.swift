import SwiftUI

struct CalanderView: View {

    var body: some View {
        ZStack {
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(.blue)
            Text("4")
                .foregroundColor(.white)
                .font(.system(size: 70, weight: .bold))
        }
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalanderView()
    }
}
