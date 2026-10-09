import UIKit

// MARK: -

public extension Date {

    static func dateFormatter(with format: String) -> DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter
    }

}

// MARK: -

public extension UIColor {

    // MARK: Colors in cache

    private static var colorsInCache: [String: UIColor] = [:]
    static func rgbaCache(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ a: CGFloat = 1.0) -> UIColor {
        let key = "\(r)\(g)\(b)\(a)"
        guard let cashedColor = colorsInCache[key] else {
            if colorsInCache.count > 100 {
                colorsInCache = [:]
            }
            let color = rgba(r, g, b, a)
            colorsInCache[key] = color
            return color
        }
        return cashedColor
    }

    static func rgba(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ a: CGFloat = 1.0) -> UIColor {
        UIColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
    }

    // MARK: Dark mode colors

    static var custom_background: UIColor { UIColor(named: "Background")! }
    static var custom_disabledButton: UIColor { UIColor(named: "Disabled Button")! }
    static var custom_focusedInputShadow: UIColor { UIColor(named: "Focused Input Shadow")! }
    static var custom_focusedInput: UIColor { UIColor(named: "Focused Input")! }
    static var custom_link: UIColor { UIColor(named: "Link")! }
    static var custom_navigation: UIColor { UIColor(named: "Navigation")! }
    static var custom_primaryButton: UIColor { UIColor(named: "Primary Button")! }
    static var custom_secondaryBackground: UIColor { UIColor(named: "Secondary Background")! }
    static var custom_subtitle: UIColor { UIColor(named: "Subtitle")! }
    static var custom_textDisabledButton: UIColor { UIColor(named: "Text Disabled Button")! }
    static var custom_title: UIColor { UIColor(named: "Title")! }

}

// MARK: -

public extension UIView {

    // MARK: Storyboard properties

    @IBInspectable var cornerRadius: CGFloat {
        get { layer.cornerRadius }
        set { layer.cornerRadius = newValue }
    }

    @IBInspectable var borderWigth: CGFloat {
        get { layer.borderWidth }
        set { layer.borderWidth = newValue }
    }

    @IBInspectable var borderColor: UIColor? {
        get { UIColor(cgColor: layer.borderColor!) }
        set { layer.borderColor = newValue?.cgColor }
    }

    @IBInspectable var shadowWigth: CGFloat {
        get { layer.shadowRadius }
        set { layer.shadowRadius = newValue }
    }

    @IBInspectable var shadowColor: UIColor? {
        get { UIColor(cgColor: layer.shadowColor!) }
        set { layer.shadowColor = newValue?.cgColor }
    }

    @IBInspectable var shadowOpacity: CGFloat {
        get { CGFloat(layer.shadowOpacity) }
        set { layer.shadowOpacity = Float(newValue) }
    }
}

// MARK: -

public extension UIViewController {

    static func create() -> Self {
        UIStoryboard(name: String(describing: Self.self),
                     bundle: Bundle(for: Self.self))
        .instantiateViewController(withIdentifier: String(describing: Self.self)) as! Self
    }
}
