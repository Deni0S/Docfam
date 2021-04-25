import RxSwift
import RxCocoa
import Swinject

final class AuthorizationCoordinator {
    
    // MARK: - Private Properties
    
    private let presenter: UIViewController
    private let disposeBag = DisposeBag()
    
    // MARK: - Initializers
    
    init(_ presenter: UIViewController) {
        self.presenter = presenter
    }
    
    // MARK: - Public Methods
    
    func coordinate() -> Observable<Void> {
        let viewController = createAssemblerController() as! AuthorizationViewController
        
        viewController.output.success
            .drive(success())
            .disposed(by: disposeBag)
        
        presenter.present(viewController, animated: true)
        
        return viewController.rx.deallocated
    }
    
}

// MARK: - Private Methods

private extension AuthorizationCoordinator {
    
    func createAssemblerController() -> UIViewController {
        Assembler([AuthorizationAssembly()])
            .resolver
            .resolve(AuthorizationViewController.self)!
    }
    
    func success() -> Binder<Void> {
        Binder(self) { (target, _) in
//            target.presenter.dismiss(animated: true)
        }
    }
    
}
