project 'Critical.X.xcodeproj'

# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'Critical.X' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Critical.X
pod 'TextFieldEffects'
pod 'AKLabel'

pod 'McPicker'
pod 'LTMorphingLabel'
pod 'DatePickerDialog'
pod 'SCLAlertView'
pod 'lottie-ios'
pod 'EasyPeasy'
pod 'SteviaLayout'


pod ‘TTSegmentedControl’
  target 'Critical.XTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'Critical.XUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end
post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['ENABLE_BITCODE'] = 'NO'
      config.build_settings['ARCHS'] = 'arm64'
    end
  end
end