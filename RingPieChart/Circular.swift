//
//  circular.swift
//  bezierPath
//
//  Created by Jawad Ali on 18/02/2020.
//  Copyright © 2020 Jawad Ali. All rights reserved.
//

import UIKit

public class Circular: UIView {

 //   MARK:- Private Variable
    private let fillLayer = CAShapeLayer()
    
    private var _percentages: [Double]
    
    private var _colors: [UIColor]
    
    private var isAnimationOn = true
    
    private var _lineWidth = CGFloat( 10.0)
    
    
    //   MARK:- Public Variable
    public var lineWidth: CGFloat {
        get {
            return _lineWidth
        }
        set(newValue) {
            _lineWidth = newValue
            setNeedsDisplay()
        }
    }
    
    //MARK:- draw
    
    override public func draw(_ rect: CGRect) {
        
        var startAngle = -90.0
        
        for i in 0..<_percentages.count {
            
            let endAngle = startAngle + ( _percentages[i] * 3.6 ) - 4
            
            let shapeLayer =   self.addArac(with: _colors[i], in: rect, startAngle: startAngle, endAngle: endAngle)
            startAngle = (endAngle + 4 )
            
            if isAnimationOn {
                oppacityAnimation(index: Double(i), shape: shapeLayer)
            }
        }
        
    }
    
    
    //MARK:- inializer
    
   public init(percentages:[Double],colors:[UIColor],animated:Bool = false) {
        
        self._percentages = percentages
        self._colors = colors
        self.isAnimationOn = animated
        super.init(frame:CGRect.zero)
        self.backgroundColor = .clear
    }
    
    required init?(coder: NSCoder) {
        // super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //MARK:- Animations Functions
    private  func oppacityAnimation(index:Double,shape:CAShapeLayer) {
        shape.opacity = 0
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5 + Double(index)/2.5 ) {
            shape.opacity = 1
            let animation = CABasicAnimation(keyPath: "opacity")
            animation.fromValue = 0
            animation.toValue = 1
            animation.duration = 1
            shape.add(animation, forKey: nil)
        }
    }
    
    private func transformAnimation(index:Double,shape:CAShapeLayer){
        shape.opacity = 0
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5 + Double(index)/2.5 ) {
            shape.opacity = 1
            let animation = CABasicAnimation(keyPath: "transform")
            animation.fromValue = CATransform3DMakeScale(0, 0, 1)
            animation.toValue = CATransform3DIdentity
            animation.duration = 0.4
            shape.add(animation, forKey: nil)
        }
    }
    
    //MARK:- Drawing Code
    
   private func addArac(with color:UIColor ,in rect:CGRect, startAngle:Double , endAngle:Double)-> CAShapeLayer {
        
        let center = CGPoint(x: rect.maxX / 2, y: rect.maxY / 2)
        
        let longestSide = rect.height < rect.width ? rect.height : rect.width
        
        let lineWidth = CGFloat(self._lineWidth / 20)
        
        let smallCircleRadious = (longestSide / (2 + lineWidth))
        
        let startAngle = CGFloat(startAngle)
        
        let endAngle = CGFloat(endAngle)
        
        let outerRadious =  (longestSide / 2)
        
        let midPoint = (longestSide / (2 + lineWidth/2.7))
        
        let path = UIBezierPath()
        
        let  x3 = center.x  + (outerRadious) * CGFloat(cos(startAngle.deg2rad()))
        let  y3 = center.y  + (outerRadious) * CGFloat(sin(startAngle.deg2rad()))
        
        
        let  x4 = center.x  + (smallCircleRadious) * CGFloat(cos(startAngle.deg2rad()))
        let  y4 = center.y  + (smallCircleRadious) * CGFloat(sin(startAngle.deg2rad()))
        
        
        let  x5 = center.x  + (midPoint) * CGFloat(cos((startAngle + self._lineWidth * 0.5).deg2rad()))
        let  y5 = center.y  + (midPoint) * CGFloat(sin((startAngle +  self._lineWidth * 0.5).deg2rad()))
        
        path.move(to: CGPoint(x:x4,y:y4))
        path.addQuadCurve(to: CGPoint(x:x3,y:y3), controlPoint: CGPoint(x:x5,y:y5))
        
        
        
        path.addArc(withCenter:center, radius:outerRadious, startAngle: startAngle.deg2rad()  , endAngle: endAngle.deg2rad(), clockwise: true)
        
        let  x1 = center.x  + (outerRadious) * CGFloat(cos(endAngle.deg2rad()))
        let  y1 = center.y  + (outerRadious) * CGFloat(sin(endAngle.deg2rad()))
        
        let  x6 = center.x  + (midPoint) * CGFloat(cos((endAngle + self._lineWidth * 0.6).deg2rad()))
        let  y6 = center.y  + (midPoint) * CGFloat(sin((endAngle + self._lineWidth * 0.6).deg2rad()))
        
        let  x2 = center.x  + (smallCircleRadious) * CGFloat(cos(endAngle.deg2rad()))
        let  y2 = center.y  + (smallCircleRadious) * CGFloat(sin(endAngle.deg2rad()))
        
        
        path.move(to: CGPoint(x:x1,y:y1))
        path.addQuadCurve(to: CGPoint(x:x2,y:y2), controlPoint: CGPoint(x:x6,y:y6))
        path.addArc(withCenter:center, radius: smallCircleRadious, startAngle:  endAngle.deg2rad(), endAngle: startAngle.deg2rad(), clockwise: false)
        
        
        let shape = CAShapeLayer()
        shape.frame = bounds
        shape.lineCap = .round
        shape.fillColor = color.cgColor
        shape.path = path.cgPath
        layer.addSublayer(shape)
        
        return shape
        
    }
}
extension CGFloat {
    func deg2rad() -> CGFloat {
        return self * .pi / 180
    }
}
