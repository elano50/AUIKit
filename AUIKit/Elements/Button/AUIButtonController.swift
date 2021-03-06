//
//  AUIElementButtonController.swift
//  Level
//
//  Created by Ihor Myroniuk on 11/2/18.
//  Copyright © 2018 Brander. All rights reserved.
//

import Foundation

public protocol AUIButtonController {
  
  // MARK: Button
  
  var button: UIButton? { get set }
  
  // MARK: Title
  
  var title: String? { get set }
  var normalTitle: String? { get set }
  
  // MARK: Image
  
  var image: UIImage? { get set }
  var normalImage: UIImage? { get set }
  
}
