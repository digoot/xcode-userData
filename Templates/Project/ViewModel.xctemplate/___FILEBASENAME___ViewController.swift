//___FILEHEADER___

import UIKit

class ___VARIABLE_productName___ViewController: UIViewController {
    // MARK: - ViewTraits

    private enum ViewTraits {
        <#traits#>
    }

    // MARK: - Variables

    // MARK: - Init

    init(<#dependencies#>) {
        <#dependencies#>
    }

    @available(*, unavailable)
    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Override

    override func viewDidLoad() {
        super.viewDidLoad()
        viewSetup()
        bind()
    }
}

private extension ___VARIABLE_productName___ViewController {
    func viewSetup() {
        <#setup#>
    }

    func bind() {
        <#bindings#>
    }

    <#private methods#>
}
