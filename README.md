## Requirements
* iOS 8.0+
* Xcode 8.0+
* Swift 4.2+

## Compatibility

* Swift 3: use 1.0.0
* Swift 4: use 1.1.0
* Swift 4.2: use 1.2.0+

## Installation
### CocoaPods
if not installed yet install cocoaPods with the following command

```
$ gem install cocoapods
```

> CocoaPods 1.1.0+ is required to build CustomLoader

To integrate **CustomLoader** into your Xcode project using CocoaPods, specify it in your Podfile:

```
platform :ios, '8.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'CustomLoader', :git => 'https://github.com/Backelite/CustomLoader.git'
end

```

> This will install the latest version of CustomLoader

Apply your configuration with the following command:

```
$ pod install
```

## Usage
### Presenting a loading view
```swift
import CustomLoader

LoadingView.standardProgressBox.show(inView: view)
```

### Remove the loading view
```swift
view.removeLoadingViews(animated: true)
```

### Customizing the progress ring
```swift
public extension ProgressRingView {
    
    public static var appProgressRing: ProgressRingView {
        let view = ProgressRingView()
        view.outterColor = .red
        view.innerColor = .blue
        return view
    }
}

public extension LoadingView {

    public static var appLoadingView: LoadingView {
        return LoadingView(loaderView: ProgressRingView. appProgressRing)
    }
}

```
### Loader with your view
```swift
static var myLoader: LoadingView {
    let loaderView = UIActivityIndicatorView(activityIndicatorStyle: .gray)
    loaderView.startAnimating()
    return LoadingView(loaderView: loaderView)
}
```

### Present the customized loader
```swift
LoadingView.appLoadingView.show(inView: view)
```

or

```swift
LoadingView.myLoader.show(inView: view)
```
