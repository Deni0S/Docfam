import RxSwift
import RxCocoa

public protocol AuthorizationModuleOutput: class {
    var success: Driver<Void> { get }
}

final class AuthorizationViewModel {
    
    // MARK: - Private Properties
    
    private let successSubject = PublishSubject<Void>()
    
    // MARK: - Public Methods
    
    func successAuthorization(code: String) {
        successSubject.onNext(())
    }
    
}

// MARK: - Private Methods

private extension AuthorizationViewModel {
    
}

// MARK: - Output

extension AuthorizationViewModel: AuthorizationModuleOutput {
    
    var success: Driver<Void> {
        successSubject
            .asDriver(onErrorDriveWith: .never())
    }
    
}
