//
//  Store.swift
//  TestReSwift
//
//  Created by Suren Rodrigo on 8/30/19.
//  Copyright © 2019 Suren Rodrigo. All rights reserved.
//

import ReSwift

class TestReSwift {
    var store: Store<AppState>;
     init() {
        let sideEffects = injectService(service: RemoteDataService(), receivers: dataServiceSideEffects)
        let middleware = createMiddleware(items: sideEffects)
        store = Store<AppState>(reducer: appReducer, state: nil, middleware: [middleware])
    }
}

