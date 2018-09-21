TapAdditionsKitDependencyVersion = '1.1' unless defined? TapAdditionsKitDependencyVersion

Pod::Spec.new do |tapGLKit|
    
    tapGLKit.platform               = :ios
    tapGLKit.ios.deployment_target  = '8.0'
    tapGLKit.swift_version          = '4.2'
    tapGLKit.name                   = 'TapGLKit'
    tapGLKit.summary                = 'Kit with GL views.'
    tapGLKit.requires_arc           = true
    tapGLKit.version                = '1.0.1'
    tapGLKit.license                = { :type => 'MIT', :file => 'LICENSE' }
    tapGLKit.author                 = { 'Tap Payments' => 'hello@tap.company' }
    tapGLKit.homepage               = 'https://github.com/Tap-Payments/TapGLKit-iOS'
    tapGLKit.source                 = { :git => 'https://github.com/Tap-Payments/TapGLKit-iOS.git', :tag => tapGLKit.version.to_s }
    tapGLKit.default_subspec        = 'Core', 'AnimatedView', 'TapActivityIndicatorView', 'ArrowView', 'LinearGradientView', 'RadialGradientView', 'QuadGradientView'
    
    tapGLKit.subspec 'Core' do |core|
        
        core.dependency 'TapAdditionsKit/CoreGraphics/CGPoint',                 TapAdditionsKitDependencyVersion
        core.dependency 'TapAdditionsKit/CoreGraphics/CGSize',                  TapAdditionsKitDependencyVersion
        core.dependency 'TapAdditionsKit/SwiftStandartLibrary/MemoryLayout',    TapAdditionsKitDependencyVersion
        core.dependency 'TapAdditionsKit/SwiftStandartLibrary/String',          TapAdditionsKitDependencyVersion
        core.dependency 'TapAdditionsKit/UIKit/UIColor',                        TapAdditionsKitDependencyVersion
        core.dependency 'TapAdditionsKit/UIKit/UIView',                         TapAdditionsKitDependencyVersion
        
        core.source_files = 'TapGLKit/Source/Core/*.{swift}'
        
    end
    
    tapGLKit.subspec 'AnimatedView' do |animatedView|
        
        animatedView.dependency 'TapAdditionsKit/SwiftStandartLibrary/Comparable',  TapAdditionsKitDependencyVersion
        animatedView.dependency 'TapGLKit/Core'
        
        animatedView.source_files = 'TapGLKit/Source/AnimatedView/*.{swift}'
        
    end
    
    tapGLKit.subspec 'TapActivityIndicatorView' do |activityIndicator|
        
        activityIndicator.dependency 'TapGLKit/AnimatedView'
        
        activityIndicator.source_files = 'TapGLKit/Source/TapActivityIndicatorView/*.{swift}'
        
    end
    
    tapGLKit.subspec 'ArrowView' do |arrowView|
        
        arrowView.dependency 'TapAdditionsKit/CoreGraphics/CGRect', TapAdditionsKitDependencyVersion
        arrowView.dependency 'TapAdditionsKit/Tap/Triangle',        TapAdditionsKitDependencyVersion
        arrowView.dependency 'TapGLKit/AnimatedView'
        
        arrowView.source_files = 'TapGLKit/Source/ArrowView/*.{swift}'
        
    end
    
    tapGLKit.subspec 'LinearGradientView' do |linearGradientView|
        
        linearGradientView.dependency 'TapGLKit/Core'
        
        linearGradientView.source_files = 'TapGLKit/Source/LinearGradientView/*.{swift}'
        
    end
    
    tapGLKit.subspec 'RadialGradientView' do |radialGradientView|
    
        radialGradientView.dependency 'TapGLKit/Core'
    
        radialGradientView.source_files = 'TapGLKit/Source/RadialGradientView/*.{swift}'
    
    end
    
    tapGLKit.subspec 'QuadGradientView' do |quadGradientView|
        
        quadGradientView.dependency 'TapGLKit/Core'
        
        quadGradientView.source_files = 'TapGLKit/Source/QuadGradientView/*.{swift}'
        
    end
    
end
