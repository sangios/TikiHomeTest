source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'

def shared_pods
    use_frameworks!
    
    pod 'Alamofire'
    pod 'ObjectMapper'
    pod 'Kingfisher'
    pod 'MBProgressHUD'
    pod 'SwiftyBeaver'
end

target 'TikiHomeTest' do
  use_frameworks!
  shared_pods
end

target 'TikiHomeTestTests' do
    shared_pods
end

target 'TikiHomeTestUITests' do
    shared_pods
end
