//
//  AppState.swift
//  ios-udf-boilerplate
//
//  Created by Suren Rodrigo on 8/10/19.
//  Copyright © 2019 Suren Rodrigo. All rights reserved.
//

import ReSwift

struct AppState: StateType {
    let systemStateUpdateTracker: [String : BaseAction]
    init(systemStateUpdateTracker: [String: BaseAction] = [:]) {
        self.systemStateUpdateTracker = systemStateUpdateTracker
    }
    
    func copy(systemStateUpdateTracker: [String: BaseAction]? = nil) -> AppState {
        return AppState(systemStateUpdateTracker: systemStateUpdateTracker ?? self.systemStateUpdateTracker)
    }
}
