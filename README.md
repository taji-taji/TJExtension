# TJExtension

Useful extensions for UIKit framework.

- TJColorExtensions
- TJViewExtensions
- TJLabelExtensions

## TJColorExtensions

### Initializers

- `convenience init(hex: Int, alpha: CGFloat)`
- `convenience init(intRed: Int, green: Int, blue: Int, alpha: CGFloat)`

### Methods

- `func setAlpha(alpha: CGFloat) -> UIColor`

### Usage

```swift
let redColor = UIColor.init(hex: 0xFF0000, alpha: 1.0)
let transparentRedColor = redColor.setAlpha(alpha: 0.6)

let greenColor = UIColor(intRed: 0, green: 255, blue: 0, alpha: 1.0)
let transparentGreenColor = greenColor.setAlpha(alpha: 0.3)
```

## TJViewExtensins

### Methods

- `func border(borderWidth borderWidth: CGFloat, borderColor: UIColor?, borderRadius: CGFloat?)`
- `func border(positions: [BorderPosition], borderWidth: CGFloat, borderColor: UIColor?)`

### Inspectable Variables

- `var borderWidth: CGFloat`
- `var borderColor: UIColor?`
- `var cornerRadius: CGFloat`

![TJViewExtensions1](https://raw.githubusercontent.com/wiki/taji-taji/TJExtension/images/TJViewExtensions1.png)

### Usage

```swift
let borderedView = UIView(frame: CGRectMake(0.0, 0.0, 200, 50))
borderedView.border([.Top, .Right], borderWidth: 3.5, borderColor: borderColor)
```


## TJLabelExtensions

### Inspectable Variables

- `var underline: Bool`

![TJLabelExtensions1](https://raw.githubusercontent.com/wiki/taji-taji/TJExtension/images/TJLableExtensions1.png)
