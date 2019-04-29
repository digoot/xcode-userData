//___FILEHEADER___

import Foundation
import RxSwift

// MARK: Protocols for presenter

protocol PresenterToView___VARIABLE_moduleName___Protocol: class {
    // view
    var presenter : ViewToPresenter___VARIABLE_moduleName___Protocol? { get set }
}

protocol PresenterToInteractor___VARIABLE_moduleName___Protocol : class {
    // interactor
}

protocol PresenterToRouter___VARIABLE_moduleName___Protocol : class {
    // router
}

// MARK: Protocols for View

protocol ViewToPresenter___VARIABLE_moduleName___Protocol : class {
    // presenter
    var router: PresenterToRouter___VARIABLE_moduleName___Protocol? { get set }
    var interactor: PresenterToInteractor___VARIABLE_moduleName___Protocol? { get set }
    var view: PresenterToView___VARIABLE_moduleName___Protocol? { get set }
    func viewIsReady()
}
