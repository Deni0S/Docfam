import UIKit
import RxSwift
import RxCocoa
import Swinject

final class MainViewController: UITabBarController {

    // MARK: - Private Properties

    private var isFirstStart = true
    private let disposeBag = DisposeBag()

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        if isFirstStart {
            AuthorizationCoordinator(self).coordinate()
                .subscribe()
                .disposed(by: disposeBag)
            isFirstStart = false
        }
    }
}

// MARK: - Private Methods

private extension MainViewController {

    func setupView() {
        #if DEBUG
        isFirstStart = false
        #endif
    }
}
