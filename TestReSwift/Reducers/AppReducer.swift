//
//  AppReducer.swift
//  ios-udf-boilerplate
//
//  Created by Suren Rodrigo on 8/15/19.
//  Copyright © 2019 Suren Rodrigo. All rights reserved.
//

import ReSwift

func  updateActionsStateStatus(state: AppState, actionId: String?, action: BaseAction) -> AppState {
    if(actionId != nil) {
        var systemStateUpdateTracker = state.systemStateUpdateTracker
        systemStateUpdateTracker[actionId!] = action
        return state.copy(systemStateUpdateTracker: systemStateUpdateTracker)
    }
    return state
}
