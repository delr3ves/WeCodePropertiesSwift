platform :ios, '12.0'

target 'WeCodePropertiesSwift' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for WeCodePropertiesSwift
end

target 'WeCodePropertiesSwiftTests' do
    inherit! :search_paths
    # Pods for testing
    pod 'SwiftCheck', '~> 0.11.0'
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '4.2'
        end
    end
  end
