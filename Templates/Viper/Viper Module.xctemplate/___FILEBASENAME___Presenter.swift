//___FILEHEADER___

import RxSwift

class ___FILEBASENAME___: ViewToPresenter___VARIABLE_moduleName___Protocol {
    
    var view: PresenterToView___VARIABLE_moduleName___Protocol?
    var interactor: PresenterToInteractor___VARIABLE_moduleName___Protocol?
    var router: PresenterToRouter___VARIABLE_moduleName___Protocol?
    
    let disposebag = DisposeBag()
    
    func viewIsReady() {}
    
}
