import UIKit
import RxSwift
import RxCocoa
import Swinject

final class MainViewController: UITabBarController {

    // MARK: - Private Properties
    
    private let bag = DisposeBag()
    
    // MARK: - Lifecycle
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        AuthorizationCoordinator(self).coordinate()
            .subscribe()
            .disposed(by: bag)
    }
    
}
