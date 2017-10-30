//
//  SCNHelper.swift
//
//  Created by Christopher Figueroa on 10/30/17.
//  Copyright © 2017 kinifi. All rights reserved.
//

import Foundation
import UIKit
import SceneKit

public class SCNHelper {
    
    
    //creates a cube and returns it as an SCNNode
    static func CreateCube(width:CGFloat, height:CGFloat, length:CGFloat, chamferRadius:CGFloat) -> SCNNode {
        //create a box
        let boxGeometry = SCNBox(width: 0.004, height: 0.004, length: 0.004, chamferRadius: 0)
        let boxNode = SCNNode(geometry: boxGeometry)
        return boxNode
    }
    
    //creates a particle system with the given nameand return the SCNParticle System
    func createParticleSystem(particleNameWithoutExtension:String, subDirectory:String, color: UIColor, geometry: SCNGeometry) -> SCNParticleSystem {
        
        let trail:SCNParticleSystem
        
        if subDirectory == "" {
            let inDirectory:String? = nil
            trail = SCNParticleSystem(named: particleNameWithoutExtension + ".scnp", inDirectory: inDirectory)!
        } else {
            trail = SCNParticleSystem(named: particleNameWithoutExtension + ".scnp", inDirectory: subDirectory)!
        }

        trail.particleColor = color
        trail.emitterShape = geometry
        return trail
        
    }
    
    
}
