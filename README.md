# isport-sdk-ios-release

<b>Installation</b>

WISDK is available through CocoaPods. To install it, simply add the following line to your Podfile: 

```sh
$ pod 'ISPORTSDK', 'X.X.X'
```
where X.X.X is your preferred version.

```
Latest released version to to CocoaPods is 1.5.2
```

<b>Usage</b>

Swift Code

```swift

class ViewController: UIViewController, ISportDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let data = ISportData(
            matchId: "",
            token: "eyJhbGciOiJSUzI1NiJ9.eyJzdWIiOiI5IiwiZXhwIjoxNjk2OTkwNzQ0LCJ1c2VySWQiOiI5IiwiZnVsbE5hbWUiOiJTaW5oIiwiYXZhdGFyVXJsIjoiIn0.UPYF9J66p3FpnEI-XBW9LBYW52YCAtf1SFozrA_b5p9_q4YXfIjTGRvf-uOFEKdYvmeFZJ56hV1zbokgX41qDy0nnFHrWiW_E8IpLX_2P7LKStKO4-aOFOH8C3NDopBqJFONJo39V74M0OjtRShGkLiov14cmwIPkIaxRUkHGJQ",
            type: ISportData.ViewType.HOME, env: ISportData.Environment.DEV,
            paramDeepLink: "screen=profile&type=month"
        )


        ISportManager.shared().addISportView(container: containerView, data: data, isportDelegate: self)
    }

    //Mark: ISportDelegate start
    func onStartLiveDetail(channelId: String) {
        self.showToastFaded(message: "onStartLiveDetail \(channelId)")
    }
    
    func onExchangeLoyalty(packageId: String, point: UInt32) {
        self.showToastFaded(message: "onExchangeLoyalty \(packageId) \(point)")
        
        let isSuccess = true
        
        if(isSuccess) {
            ISportManager.shared().onUserExchangeLoyaltySuccess()
        } else {
//            ISportManager.shared().onUserExchangeLoyaltyFailed()
        }
    }
    
    func onPurchase(packageId: String) {
        self.showToastFaded(message: "onExchangeLoyalty \(packageId)")
        
        let isSuccess = true
        
        if(isSuccess) {
            ISportManager.shared().onUserPurchaseSuccess()
        } else {
//            ISportManager.shared().onUserPurchaseFailed()
        }
    }
    
    func onLogin() {
        self.showToastFaded(message: "onLogin")
    }
    
    func onDismiss() {
        self.showToastFaded(message: "onDismiss")
    }
    
    func onError() {
        self.showToastFaded(message: "onError")
    }
    
    func onTimeout() {
        self.showToastFaded(message: "onTimeout")
    }
    //Mark: ISportDelegate end
}


```

