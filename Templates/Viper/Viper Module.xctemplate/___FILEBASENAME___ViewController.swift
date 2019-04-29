//___FILEHEADER___

import UIKit

class ___FILEBASENAME___: UIViewController {
    
    var presenter: ViewToPresenter___VARIABLE_moduleName___Protocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewIsReady()
    }
    
}

extension ___FILEBASENAME___: PresenterToView___VARIABLE_moduleName___Protocol {
    
    
    
}
