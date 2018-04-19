Pod::Spec.new do |tapGLKit|
    
    tapGLKit.platform = :ios
    tapGLKit.ios.deployment_target = '8.0'
    tapGLKit.name = 'TapGLKit'
    tapGLKit.summary = 'Kit with GL views.'
    tapGLKit.requires_arc = true
    tapGLKit.version = '1.0'
    tapGLKit.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.1' }
    tapGLKit.license = { :type => 'MIT', :file => 'LICENSE' }
    tapGLKit.author = { 'Tap Payments' => 'hello@tap.company' }
    tapGLKit.homepage = 'https://github.com/Tap-Payments/TapGLKit-iOS'
    tapGLKit.source = { :git => 'https://github.com/Tap-Payments/TapGLKit-iOS.git', :tag => tapGLKit.version.to_s }
    tapGLKit.default_subspec = 'Core', 'AnimatedView', 'TapActivityIndicatorView', 'ArrowView', 'LinearGradientView', 'RadialGradientView', 'QuadGradientView'
    
    tapGLKit.subspec 'Core' do |core|
        
        core.dependency 'TapAdditionsKit/CoreGraphics/CGPoint'
        core.dependency 'TapAdditionsKit/CoreGraphics/CGSize'
        core.dependency 'TapAdditionsKit/SwiftStandartLibrary/MemoryLayout'
        core.dependency 'TapAdditionsKit/SwiftStandartLibrary/String'
        core.dependency 'TapAdditionsKit/UIKit/UIColor'
        core.dependency 'TapAdditionsKit/UIKit/UIView'
        
        core.source_files = 'TapGLKit/Source/Core/*.{swift}'
        
    end
    
    tapGLKit.subspec 'AnimatedView' do |animatedView|
        
        animatedView.dependency 'TapAdditionsKit/SwiftStandartLibrary/Comparable'
        animatedView.dependency 'TapGLKit/Core'
        
        animatedView.source_files = 'TapGLKit/Source/AnimatedView/*.{swift}'
        
    end
    
    tapGLKit.subspec 'TapActivityIndicatorView' do |activityIndicator|
        
        activityIndicator.source_files = 'TapGLKit/Source/TapActivityIndicatorView/*.{swift}'
        activityIndicator.dependency 'TapGLKit/AnimatedView'
        
    end
    
    tapGLKit.subspec 'ArrowView' do |arrowView|
        
        arrowView.dependency 'TapAdditionsKit/CoreGraphics/CGRect'
        arrowView.dependency 'TapAdditionsKit/Tap/Triangle'
        arrowView.dependency 'TapGLKit/AnimatedView'
        
        arrowView.source_files = 'TapGLKit/Source/ArrowView/*.{swift}'
        
    end
    
    tapGLKit.subspec 'LinearGradientView' do |linearGradientView|
        
        linearGradientView.source_files = 'TapGLKit/Source/LinearGradientView/*.{swift}'
        linearGradientView.dependency 'TapGLKit/Core'
        
    end
    
    tapGLKit.subspec 'RadialGradientView' do |radialGradientView|
    
        radialGradientView.source_files = 'TapGLKit/Source/RadialGradientView/*.{swift}'
        radialGradientView.dependency 'TapGLKit/Core'
    
    end
    
    tapGLKit.subspec 'QuadGradientView' do |quadGradientView|
        
        quadGradientView.source_files = 'TapGLKit/Source/QuadGradientView/*.{swift}'
        quadGradientView.dependency 'TapGLKit/Core'
        
    end
    
end
