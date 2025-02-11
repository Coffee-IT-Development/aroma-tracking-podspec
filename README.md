# Aroma Tracking

![Aroma Tracking](/AromaTracking.png "Aroma Tracking")

2 lines of marketing description here...


## Requirements

- Platform: iOS 14.3+
- Swift: 5.10
- An URL and Access Key you get from us, which is used when initialising the Aroma Tracking SDK.


## Getting Started

### Initialisation

Initialise an instance of `AromaTracking` with the specified subdomain and access key.

- subdomain: Subdomain for the client (e.g., `example-client.aromatracking.com`).
- accessKey: Access key used for authenticating requests to the endpoint.
- useIDFA: for using IDFA (Identifier for Advertisers) if you want retargeting. Default is false.

```swift
let aromaTracking = AromaTracking(subdomain: subdomain, accessKey: accessKey, useIDFA: useIDFA)
```

Note: if you set useIDFA to `true`, you need to add `NSUserTrackingUsageDescription` to your `Info.plist` with the reason why you want to track the user.


### Get token from Ad Services to get Search Ads Attribution data

Can only be called once. Call this on the first time the app opens.

```swift
await aromaTracking.requestAttributionToken()
```

Note: make sure when `useIDFA` is `true` to call this function after other permission requests (like allow notifications), otherwise it will not show the User Tracking permission alert. That results in the SDK not getting the IDFA. 


### Send custom event

```swift
try await aromaTracking.sendCustomEvent(name: "logged_in")
```


You can attach a receipt to an event.
```swift
try await aromaTracking.sendCustomEvent(name: "completed_in_app_purchase", attachReceipt: true)
```


### Send receipt

```swift
try await aromaTracking.sendReceipt()
```




## Privacy

If you initialised AromaTracking with IDFA (Identifier for Advertisers) you should update your Privacy Manifest accordingly. There is an [example Privacy Manifest](/PrivacyInfo.xcprivacy) in the repo.

