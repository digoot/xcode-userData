//___FILEHEADER___

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: PresenterToRouter___VARIABLE_moduleName___Protocol {
    
    // MARK: Variables
    
    static var storyboard: UIStoryboard {
        let storyboard = StoryboardManager.shared.<# StoryboardManager variable #>
        return storyboard
    }
    
    // MARK: Navigation functions
    
    static func navigateTo___VARIABLE_moduleName___(viewController: UIViewController?) {
        guard let navigator = viewController?.navigationController else { return }
        guard let scene: UIViewController = create___VARIABLE_moduleName___Scene(parent: viewController) else { return }
        viewController?.show(scene, sender: navigator)
    }
    
    // MARK: Scene creation functions
    
    static func create___VARIABLE_moduleName___Scene(parent: UIViewController?) -> UIViewController? {
        let navigatorIdentifier: String = "___VARIABLE_moduleName___NavigationController"
        guard let navigator = storyboard.instantiateViewController(withIdentifier: navigatorIdentifier) as? UINavigationController else { return nil }
        guard let view = navigator.children.first as? ___VARIABLE_moduleName___ViewController else { return nil }
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
