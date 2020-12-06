//___FILEHEADER___

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: PresenterToRouter___VARIABLE_moduleName___Protocol {
    
    // MARK: - Variables
    
    static var storyboard: UIStoryboard {
        let storyboard = StoryboardManager.shared.<# StoryboardManager variable #>
        return storyboard
    }
    
    // MARK: - Navigation functions
    
    // MARK: - Scene creation functions
    
    static func createScene(parent: UIViewController?) -> UIViewController? {
        return storyboard.instantiateInitialViewController()
    }
    
}
