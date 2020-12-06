//___FILEHEADER___

class ___FILEBASENAMEASIDENTIFIER___ {

	fileprivate var view: PresenterToView___VARIABLE_moduleName___Protocol?

	func setView(_ view: PresenterToView___VARIABLE_moduleName___Protocol) -> ___FILEBASENAMEASIDENTIFIER___ {
        self.view = view
        return self
    }
    
    func build() -> ViewToPresenter___VARIABLE_moduleName___Protocol {
        let presenter: ViewToPresenter___VARIABLE_moduleName___Protocol = ___VARIABLE_moduleName___Presenter()
        let interactor: PresenterToInteractor___VARIABLE_moduleName___Protocol = ___VARIABLE_moduleName___Interactor()
        let router: PresenterToRouter___VARIABLE_moduleName___Protocol = ___VARIABLE_moduleName___Router()
        
        presenter.interactor = interactor
        presenter.router = router
        presenter.view = self.view
        
        view?.presenter = presenter
        
        return presenter
    }
}
