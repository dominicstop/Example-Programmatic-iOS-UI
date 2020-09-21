//
//  LayoutBoxHalfScreenVC.swift
//  Test01
//
//  Created by Dominic Go on 8/31/20.
//  Copyright © 2020 Dominic Go. All rights reserved.
//

import UIKit

// layout two boxes horizontally that is equally split in half using autolayout
class LayoutBoxHalfHorizontalVC: UIViewController {
  
  override func loadView() {
    super.loadView();
    
    self.view.backgroundColor = .systemBackground;
    
    let halfLeft: UIView = {
      let view = UIView();
      view.backgroundColor = .blue;
      return view;
    }();

    let halfRight: UIView = {
      let view = UIView();
      view.backgroundColor = .red;
      return view;
    }();
    
    self.view.addSubview(halfLeft);
    self.view.addSubview(halfRight);
    
    // Enable Autolayout for subviews
    halfLeft .translatesAutoresizingMaskIntoConstraints = false;
    halfRight.translatesAutoresizingMaskIntoConstraints = false;
    
    let layoutGuide = self.view.safeAreaLayoutGuide;
    
    NSLayoutConstraint.activate([
      // set halfLeft views constraints ----------------------------------------------------------------------------
      halfLeft.topAnchor    .constraint(equalTo: layoutGuide.topAnchor    ), // Pin top of view to the top of parent
      halfLeft.leadingAnchor.constraint(equalTo: layoutGuide.leadingAnchor), // Pin left of view to the left of parent
      halfLeft.heightAnchor .constraint(equalTo: self.view.heightAnchor   ), // set view's height equal to parent height
      // Set the width of the view. The multiplier indicates that it should be half of the screen.
      halfLeft.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.5),
      
      // set halfRight views constraints -----------------------------------------------------------------------------
      halfRight.topAnchor     .constraint(equalTo: layoutGuide.topAnchor     ), // Pin top of view to the top of parent
      halfRight.trailingAnchor.constraint(equalTo: layoutGuide.trailingAnchor), // Pin right of view to the right of parent
      halfRight.heightAnchor  .constraint(equalTo: self.view.heightAnchor    ), // set view's height equal to parent height
      // Set the width of the view. The multiplier indicates that it should be half of the screen.
      halfRight.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.5),
    ]);
    
  };
};

// layout two boxes vertically that is equally split in half using autolayout
class LayoutBoxHalfVerticalVC: UIViewController {
  
  override func loadView() {
    super.loadView();
    
    self.view.backgroundColor = .systemBackground;
    
    let halfTop: UIView = {
      let view = UIView();
      view.backgroundColor = .blue;
      return view;
    }();

    let halfBottom: UIView = {
      let view = UIView();
      view.backgroundColor = .red;
      return view;
    }();
    
    self.view.addSubview(halfTop);
    self.view.addSubview(halfBottom);
    
    // Enable Autolayout for subviews
    halfTop   .translatesAutoresizingMaskIntoConstraints = false;
    halfBottom.translatesAutoresizingMaskIntoConstraints = false;
    
    let layoutGuide = self.view.safeAreaLayoutGuide;
    
    NSLayoutConstraint.activate([
      // set halfLeft views constraints ----------------------------------------------------------------------------
      halfTop.topAnchor     .constraint(equalTo: layoutGuide.topAnchor     ), // Pin top of view to the top of parent
      halfTop.leadingAnchor .constraint(equalTo: layoutGuide.leadingAnchor ), // Pin left of view to the left of parent
      halfTop.trailingAnchor.constraint(equalTo: layoutGuide.trailingAnchor), // Pin right of view to the right of parent
      halfTop.widthAnchor   .constraint(equalTo: self.view.widthAnchor     ), // set view's width equal to parent width
      // Set the height of the view. The multiplier indicates that it should be half of the parent.
      halfTop.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.5),
      
      // set halfRight views constraints -------------------------------------------------------------------------------
      halfBottom.bottomAnchor  .constraint(equalTo: layoutGuide.bottomAnchor  ), // Pin top of view to the top of parent
      halfBottom.leadingAnchor .constraint(equalTo: layoutGuide.leadingAnchor ), // Pin left of view to the left of parent
      halfBottom.trailingAnchor.constraint(equalTo: layoutGuide.trailingAnchor), // Pin right of view to the right of parent
      halfBottom.widthAnchor   .constraint(equalTo: self.view.widthAnchor     ), // set view's width equal to parent width
      // Set the width of the view. The multiplier indicates that it should be half of the screen.
      halfBottom.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.5),
    ]);
    
  };
};


// layout two boxes horizontally that is equally split in half using uistackview
class LayoutBoxHalfStackHorizontal: UIViewController {
  override func loadView() {
    super.loadView();
    
    self.view.backgroundColor = .systemBackground;
    
    let view1: UIView = {
      let view = UIView();
      view.backgroundColor = .blue;
      return view;
    }();

    let view2: UIView = {
      let view = UIView();
      view.backgroundColor = .red;
      return view;
    }();
    
    let stackView: UIStackView = {
      let stack = UIStackView();
      
      stack.axis = .horizontal;
      stack.distribution = .fillEqually;
      stack.alignment = .fill;
      stack.spacing = 5;
      
      stack.addArrangedSubview(view1);
      stack.addArrangedSubview(view2);
      
      return stack;
    }();
    
    self.view.addSubview(stackView);
    stackView.translatesAutoresizingMaskIntoConstraints = false;
    
    // fill entire screen
    NSLayoutConstraint.activate([
      stackView.topAnchor   .constraint(equalTo: self.view.topAnchor   ),
      stackView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
      stackView.leftAnchor  .constraint(equalTo: self.view.leftAnchor  ),
      stackView.rightAnchor .constraint(equalTo: self.view.rightAnchor ),
      stackView.widthAnchor .constraint(equalTo: self.view.widthAnchor ),
      stackView.heightAnchor.constraint(equalTo: self.view.heightAnchor)
    ]);
  };
};

// layout two boxes vertically that is equally split in half using uistackview
class LayoutBoxHalfStackVertical: UIViewController {
  override func loadView() {
    super.loadView();
    
    self.view.backgroundColor = .systemBackground;
    
    let view1: UIView = {
      let view = UIView();
      view.backgroundColor = .blue;
      return view;
    }();

    let view2: UIView = {
      let view = UIView();
      view.backgroundColor = .red;
      return view;
    }();
    
    let stackView: UIStackView = {
      let stack = UIStackView();
      
      stack.axis = .vertical;
      stack.distribution = .fillEqually;
      stack.alignment = .fill;
      stack.spacing = 5;
      
      stack.addArrangedSubview(view1);
      stack.addArrangedSubview(view2);
      
      return stack;
    }();
    
    self.view.addSubview(stackView);
    stackView.translatesAutoresizingMaskIntoConstraints = false;
    
    // fill entire screen
    NSLayoutConstraint.activate([
      stackView.topAnchor   .constraint(equalTo: self.view.topAnchor   ),
      stackView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
      stackView.leftAnchor  .constraint(equalTo: self.view.leftAnchor  ),
      stackView.rightAnchor .constraint(equalTo: self.view.rightAnchor ),
      stackView.widthAnchor .constraint(equalTo: self.view.widthAnchor ),
      stackView.heightAnchor.constraint(equalTo: self.view.heightAnchor)
    ]);
  };
};
