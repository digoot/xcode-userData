//___FILEHEADER___

import Foundation

class ___FILEBASENAME___: PresenterToRouter___VARIABLE_moduleName___Protocol {
    
    static var storyboard: UIStoryboard {
        let storyboard = StoryboardManager.shared.loginScreenStoryboard
        return storyboard
    }
    
    static func create___VARIABLE_moduleName___Scene(parent: UIViewController?) -> UIViewController? {
        let navigatorIdentifier: String = "___VARIABLE_moduleName___Scene"
        guard let view = storyboard.instantiateViewController(withIdentifier: navigatorIdentifier) as? ___VARIABLE_moduleName___ViewController else { return nil }
        let presenter: ViewToPresenter___VARIABLE_moduleName___Protocol = ___VARIABLE_moduleName___Presenter()
        let interactor: PresenterToInteractor___VARIABLE_moduleName___Protocol = ___VARIABLE_moduleName___Interactor()
        let router: PresenterToRouter___VARIABLE_moduleName___Protocol = ___VARIABLE_moduleName___Router()
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        return view
    }
    
}
