//
//  Typography.swift
//

import SwiftUI

extension Text {

    func h1() -> Text {
        self.font(Font.system(size: 32).weight(.semibold))
            .tracking(0.4)
    }

    func h2() -> Text {
        self.font(Font.system(size: 24).weight(.semibold))
            .tracking(0.4)
    }

    func h3() -> Text {
        self.font(Font.system(size: 18).weight(.semibold))
            .tracking(0.4)
    }

    func h4() -> Text {
        self.font(Font.system(size: 16).weight(.semibold))
            .tracking(0.4)
    }
    
    func subtitle1() -> Text {
        self.font(Font.system(size: 16).weight(.semibold))
            .tracking(0.25)
    }
    
    func subtitle2() -> Text {
        self.font(Font.system(size: 14).weight(.semibold))
            .tracking(0.25)
    }

    func body1() -> Text {
        self.font(Font.system(size: 16))
            .tracking(0.2)
    }

    func body2() -> Text {
        self.font(Font.system(size: 14))
            .tracking(0.2)
    }
    
    func button() -> Text {
        self.font(Font.system(size: 16).weight(.semibold))
    }
}

struct Typography_Previews: PreviewProvider {
    static var previews: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Typography Preview, h1").h1()
            Text("Typography Preview, h2").h2()
            Text("Typography Preview, h3").h3()
            Text("Typography Preview, h4").h4()
            Text("Typography Preview, subtitle1").subtitle1()
            Text("Typography Preview, subtitle2").subtitle2()
            Text("Typography Preview, body1").body1()
            Text("Typography Preview, body2").body2()
        }
    }
}
