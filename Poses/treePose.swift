//
//  treePose.swift
//  catRelaxtion
//
//  Created by tamera middlebrooks on 5/21/24.
//
import SwiftUI


extension View {
    func embededInScrollViewTreePose(alignment: Alignment = .center) -> some View {
        GeometryReader { geometry in
            ScrollView {
                self.frame(
                    minWidth: geometry.size.width,
                    minHeight: geometry.size.height,
                    maxHeight: .infinity,
                    alignment: alignment
                )
            }
        }
    }
}


struct treePose: View {
    
    @Environment(\.colorScheme) var colorScheme

    
    var body: some View {

        ZStack {
            Color.ourPalete
                    .ignoresSafeArea()
            ScrollView {
                
                VStack {
                    }
                    Image("treePoseCat")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 260, height: 250)

                        .padding(.top, 30)
                   
                Text("Tree Pose")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding(.bottom, 15)
//                    .foregroundColor(.black)
                
        
                Text("""
        1. Stand tall with your feet together and your arms at your sides.
        2. Shift your weight onto your left foot, grounding it firmly into the floor.
        3. Bend your right knee and place the sole of your right foot on the inside of your left thigh or calf (avoid the knee).
        4. Bring your hands together in front of your chest in a prayer position (Anjali Mudra).
        5. Find a focal point to help maintain your balance (it's okay if you stumble!)
        6. Hold the pose for a few deep breaths.
        7. To come out, gently lower your right foot to the floor and return to standing.
        """)
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true)

//                .foregroundColor(.black)
//                .multilineTextAlignment(.center)
//                   .lineLimit(nil)
                
                Text("Don't forget to breathe!")
//                    .foregroundColor(.black)
                    .font(.caption)
                    .padding(.top, 15)
            }
            
        }

    }
}


#Preview {
    lotusPose()
}

#Preview {
    treePose()
}
