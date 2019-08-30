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
    init(apiService: RemoteDataService,
         sideEffects: [(RemoteDataService) -> MiddlewareItem],
         reducers: @escaping (Action, AppState?) -> AppState) {
        let sideEffects = injectService(service: apiService, receivers: sideEffects)
        let middleware = createMiddleware(items: sideEffects)
        store = Store<AppState>(reducer: reducers, state: nil, middleware: [middleware])
    }
}

