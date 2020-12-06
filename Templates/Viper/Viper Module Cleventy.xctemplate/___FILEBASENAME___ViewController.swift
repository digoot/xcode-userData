//___FILEHEADER___

import UIKit

class ___FILEBASENAME___: UIViewController {
    
    // MARK: - Variables
    
    var presenter: ViewToPresenter___VARIABLE_moduleName___Protocol?
    
    // MARK: - Outlets

    // MARK: - Object life cycle functions
    
    override func awakeFromNib() {
        super.awakeFromNib()
        ___VARIABLE_moduleName___Presenter.configure(forView: self)
    }
    
    // MARK: - View life cycle functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        setupView()
        presenter?.viewIsReady()
    }
    
    // MARK: - Functions
    
    func setupView() {
        <# code #>
    }
}

extension ___FILEBASENAME___: PresenterToView___VARIABLE_moduleName___Protocol {
    
}
