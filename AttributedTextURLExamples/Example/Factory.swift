//
//  Factory.swift
//  AttributedTextURLExamples
//
//  Created by Jade Silveira on 17/01/21.
//

import Foundation

enum Factory {
    static func make() -> ViewController {
        let coordinator: Coordinating = Coordinator()
        let presenter: Presenting = Presenter(coordinator: coordinator)
        let viewController = ViewController(presenter: presenter)
        
        presenter.viewController = viewController
        coordinator.viewController = viewController
        
        return viewController
    }
}
