Pod::Spec.new do |s|
  s.name         = "SalesforceHybridSDK"
  s.version      = "7.2.0"
  s.summary      = "Salesforce Mobile SDK for iOS"
  s.homepage     = "https://github.com/forcedotcom/SalesforceMobileSDK-iOS-Hybrid"
  s.license      = { :type => "Salesforce.com Mobile SDK License", :file => "LICENSE.md" }
  s.author       = { "Bharath Hariharan" => "bhariharan@salesforce.com" }
  s.platform     = :ios, "11.0"
  s.source       = { :git => "https://github.com/huchen0526/SalesforceMobileSDK-iOS-Hybrid.git",
                     :tag => "v#{s.version}",
                     :submodules => true }
  s.requires_arc = true
  s.default_subspec  = 'SalesforceHybridSDK'
  s.subspec 'SalesforceHybridSDK' do |sdkhybrid|
      sdkhybrid.dependency 'SmartSync'
      sdkhybrid.source_files = 'libs/SalesforceHybridSDK/SalesforceHybridSDK/Classes/**/*.{h,m}', 'libs/SalesforceHybridSDK/SalesforceHybridSDK/SalesforceHybridSDK.h'
      sdkhybrid.public_header_files = 'libs/SalesforceHybridSDK/SalesforceHybridSDK/Classes/Plugins/SFAdditions/CDVPlugin+SFAdditions.h', 'libs/SalesforceHybridSDK/SalesforceHybridSDK/Classes/Plugins/SFAccountManagerPlugin/SFAccountManagerPlugin.h', 'libs/SalesforceHybridSDK/SalesforceHybridSDK/Classes/Plugins/SFForcePlugin/SFForcePlugin.h', 'libs/SalesforceHybridSDK/SalesforceHybridSDK/Classes/SFHybridViewConfig.h', 'libs/SalesforceHybridSDK/SalesforceHybridSDK/Classes/SFHybridViewController.h', 'libs/SalesforceHybridSDK/SalesforceHybridSDK/Classes/SFLocalhostSubstitutionCache.h', 'libs/SalesforceHybridSDK/SalesforceHybridSDK/Classes/Plugins/SFNetworkPlugin/SFNetworkPlugin.h', 'libs/SalesforceHybridSDK/SalesforceHybridSDK/Classes/SFSDKHybridLogger.h', 'libs/SalesforceHybridSDK/SalesforceHybridSDK/Classes/Plugins/SDKInfo/SFSDKInfoPlugin.h', 'libs/SalesforceHybridSDK/SalesforceHybridSDK/Classes/Plugins/SFSmartStore/SFSmartStorePlugin.h', 'libs/SalesforceHybridSDK/SalesforceHybridSDK/Classes/Plugins/SFSmartSyncPlugin/SFSmartSyncPlugin.h', 'libs/SalesforceHybridSDK/SalesforceHybridSDK/SalesforceHybridSDK.h', 'libs/SalesforceHybridSDK/SalesforceHybridSDK/Classes/SalesforceHybridSDKManager.h', 'libs/SalesforceHybridSDK/SalesforceHybridSDK/Classes/Plugins/SFOAuthPlugin/SalesforceOAuthPlugin.h'
      sdkhybrid.prefix_header_contents = ''
      sdkhybrid.requires_arc = true
  end
end
