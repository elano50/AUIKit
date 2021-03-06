//
//  AUIScreenController.swift
//  AUIKit
//
//  Created by Ihor Myroniuk on 11/12/18.
//

import UIKit

open class AUIScreenController: UIViewController {
  
  // MARK: Initializers
  
  public init(view: UIView) {
    super.init(nibName: nil, bundle: nil)
    self.view = view
    setup()
  }
  
  @available(*, unavailable)
  public convenience required init?(coder aDecoder: NSCoder) { return nil }
  
  // MARK: Setup
  
  open func setup() {
    
  }
  
  // MARK: Life Cycle
  
  open var isAppeared = false
  open override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    isAppeared = true
    didSetStatusBarStyle()
  }
  
  open override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)
    isAppeared = false
  }
  
  open override var preferredStatusBarStyle: UIStatusBarStyle { return statusBarStyle }
  open var statusBarStyle: UIStatusBarStyle = .default {
    didSet { didSetStatusBarStyle() }
  }
  open func didSetStatusBarStyle() {
    guard isAppeared == true else { return }
    navigationController?.navigationBar.barStyle = (statusBarStyle == .default) ? .black : .default
    setNeedsStatusBarAppearanceUpdate()
  }
  
}

