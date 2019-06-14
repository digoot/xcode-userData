//___FILEHEADER___

import UIKit

class ___FILEBASENAME___: PresenterToRouter___VARIABLE_moduleName___Protocol {
    
    // MARK: Variables
    
    static var storyboard: UIStoryboard {
        let storyboard = StoryboardManager.shared.___VARIABLE_moduleName___Storyboard
        return storyboard
    }
    
    // MARK: Navigation functions
    
    static func navigateTo___VARIABLE_moduleName___(viewController: UIViewController?) {
        guard let scene: UINavigationController = create___VARIABLE_moduleName___Scene(parent: viewController) else { return }
        viewController?.present(scene, animated: true, completion: nil)
    }
    
    // MARK: Scene creation functions
    
    static func create___VARIABLE_moduleName___Scene(parent: UIViewController?) -> UINavigationController? {
        let navigatorIdentifier: String = "___VARIABLE_moduleName___Scene"
        guard let navigator = storyboard.instantiateViewController(withIdentifier: navigatorIdentifier) as? UINavigationController else { return nil }
        guard let view = navigator.children.first as? ___VARIABLE_moduleName___ViewController else { return nil }
        let presenter: ViewToPresenter___VARIABLE_moduleName___Protocol = ___VARIABLE_moduleName___Presenter()
        let interactor: PresenterToInteractor___VARIABLE_moduleName___Protocol = ___VARIABLE_moduleName___Interactor()
        let router: PresenterToRouter___VARIABLE_moduleName___Protocol = ___VARIABLE_moduleName___Router()
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        return navigator
    }
    
}
