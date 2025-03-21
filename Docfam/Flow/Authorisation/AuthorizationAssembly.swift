import RxSwift
import RxCocoa
import Swinject

final class AuthorizationAssembly: Assembly {

    public func assemble(container: Container) {
        container.register(AuthorizationViewController.self) { resolver in
            let controller = AuthorizationViewController.create()
            controller.viewModel = resolver.resolve(AuthorizationViewModel.self)
            return controller
        }

        container.register(AuthorizationViewModel.self) { resolver in
            AuthorizationViewModel()
        }
    }
}
