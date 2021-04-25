import RxSwift
import RxCocoa
import AuthenticationServices

final class AuthorizationViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet private var authorizationButton: ASAuthorizationAppleIDButton!
    @IBOutlet private var confirmationLabel: UILabel!
    
    // MARK: - Public Properties
    
    var output: AuthorizationModuleOutput { viewModel }
    var viewModel: AuthorizationViewModel!
    
    // MARK: - Private Properties
    
    private var authController: ASAuthorizationController!
    private let bag = DisposeBag()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupBindings()
    }
    
}

// MARK: - Private Methods

private extension AuthorizationViewController {
    
    func setupView() {
//        let passwordProvider = ASAuthorizationPasswordProvider()
        let appleIDProvider = ASAuthorizationAppleIDProvider()
        let request = appleIDProvider.createRequest()
        request.requestedScopes = [.fullName, .email]

        authController = ASAuthorizationController(authorizationRequests: [request])
        authController.delegate = self
        authController.presentationContextProvider = self
    }
    
    func setupBindings() {
        authorizationButton.rx.controlEvent(.touchUpInside)
            .bind { [weak self] in
                self?.authController.performRequests()
            }
            .disposed(by: bag)
    }
    
}

// MARK: - ASAuthorizationProviding

extension AuthorizationViewController: ASAuthorizationControllerPresentationContextProviding {
    
    func presentationAnchor(for controller: ASAuthorizationController) -> ASPresentationAnchor {
        self.view.window!
    }
    
}

// MARK: - ASAuthorizationDelegate

extension AuthorizationViewController: ASAuthorizationControllerDelegate {
    
    func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
        guard let credential = authorization.credential as? ASAuthorizationAppleIDCredential,
              let authorizationCodeData = credential.authorizationCode,
              let authorizationCode = String(data: authorizationCodeData, encoding: .utf8) else { return }
        let email = credential.email
        let fullName = credential.fullName
        let userID = credential.user
        let userToken = credential.identityToken
        print("Credential:  email - \(email ?? ""), fullName - \(String(describing: fullName)), userID - \(userID), userToken - \(String(describing: userToken)), authorizationCode - \(authorizationCode)")
        viewModel.successAuthorization(code: authorizationCode)
    }

    func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: Error) {
      
    }
    
}
