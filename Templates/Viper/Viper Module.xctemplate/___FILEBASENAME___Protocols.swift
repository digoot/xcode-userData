//___FILEHEADER___

import UIKit
import RxSwift

// MARK: Protocols for presenter

protocol PresenterToView___VARIABLE_moduleName___Protocol: class {
    var presenter : ViewToPresenter___VARIABLE_moduleName___Protocol? { get set }
}

protocol PresenterToInteractor___VARIABLE_moduleName___Protocol : class {
    
}

protocol PresenterToRouter___VARIABLE_moduleName___Protocol : class {
    
}

// MARK: Protocols for View

protocol ViewToPresenter___VARIABLE_moduleName___Protocol : class {
    var router: PresenterToRouter___VARIABLE_moduleName___Protocol? { get set }
    var interactor: PresenterToInteractor___VARIABLE_moduleName___Protocol? { get set }
    var view: PresenterToView___VARIABLE_moduleName___Protocol? { get set }
    func viewIsReady()
}
