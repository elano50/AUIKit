//
//  ContainerTableViewHeaderFooterView.swift
//  Level
//
//  Created by Ihor Myroniuk on 9/7/18.
//  Copyright © 2018 Brander. All rights reserved.
//

import UIKit

open class AUIContainerTableViewHeaderFooterView: AUITableViewHeaderFooterView {

  open var view: UIView { fatalError() }
  
  // MARK: Setup
  
  open override func setup() {
    super.setup()
    addSubview(view)
  }
  
  // MARK: AutoLayout
  
  open override func autoLayout() {
    super.autoLayout()
    /*view.snp.makeConstraints { (make) in
      make.leading.trailing.top.bottom.equalToSuperview()
    }*/
  }

}
