Pod::Spec.new do |s|
    s.name             = 'AromaTrackingSDK'
    s.version          = '1.0.1'
    s.summary          = 'AromaTracking SDK for iOS'
    s.description      = 'AromaTracking SDK provides tracking functionality for aroma devices.'
    s.homepage         = 'https://github.com/Coffee-IT-Development/aroma-tracking-xcframeworks'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Coffee IT Development' => 'support@coffee-it.com' }
    s.source           = { :http => 'https://github.com/Coffee-IT-Development/aroma-tracking-xcframeworks/raw/refs/heads/main/v1.0.1/AromaTrackingSDK.xcframework.zip' }
    s.vendored_frameworks = 'AromaTrackingSDK.xcframework'  # Make sure this path is correct inside the ZIP file
    s.platform         = :ios, '14.3'
    s.requires_arc     = true
  end
  