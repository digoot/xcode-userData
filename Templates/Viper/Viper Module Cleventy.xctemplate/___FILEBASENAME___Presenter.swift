//___FILEHEADER___

import RxSwift

class ___FILEBASENAMEASIDENTIFIER___: ViewToPresenter___VARIABLE_moduleName___Protocol {
    
    // MARK: - Variables
    
    var view: PresenterToView___VARIABLE_moduleName___Protocol?
    var interactor: PresenterToInteractor___VARIABLE_moduleName___Protocol?
    var router: PresenterToRouter___VARIABLE_moduleName___Protocol?
    
    static var sharedInstance: ViewToPresenter___VARIABLE_moduleName___Protocol?
    
    static func configure(forView view: PresenterToView___VARIABLE_moduleName___Protocol) {
        if sharedInstance == nil {
            sharedInstance = ___VARIABLE_moduleName___Builder().setView(view).build()
        } else {
            view.presenter = sharedInstance
            sharedInstance?.view = view
        }
    }

    // MARK: - Functions
    
    func viewIsReady() {}
    
    // MARK: - Data fetching
    
}
