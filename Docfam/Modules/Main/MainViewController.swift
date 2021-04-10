import UIKit
import RxSwift
import RxCocoa
import Swinject

final class MainViewController: UITabBarController {

    private let bag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let coordinator = AuthorizationCoordinator(presenter: self)
//        let identifier = UUID()
//        var childCoordinators = [UUID: Any]()
//        childCoordinators[identifier] = coordinator
        coordinator.open()
//            .do { _ in childCoordinators[identifier] = nil }
            .subscribe()
            .disposed(by: bag)
    }
}
