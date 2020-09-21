//
//  LayoutBoxThirdsVC.swift
//  Test01
//
//  Created by Dominic Go on 9/1/20.
//  Copyright © 2020 Dominic Go. All rights reserved.
//

import UIKit

// layout 3 boxes horizontally as stripes equally using uistackview
class LayoutBoxThirdsStackStripesHorizontal: UIViewController {
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
    
    let view3: UIView = {
      let view = UIView();
      view.backgroundColor = .yellow;
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
      stack.addArrangedSubview(view3);
      
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

// layout 3 boxes vertically as stripes equally using uistackview
class LayoutBoxThirdsStackStripesVertical: UIViewController {
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
    
    let view3: UIView = {
      let view = UIView();
      view.backgroundColor = .yellow;
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
      stack.addArrangedSubview(view3);
      
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

// layout 2 boxes in top, 1 box on bottom equally using uistackview
class LayoutBoxThirdsStackCollage1: UIViewController {
  
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
    
    let view3: UIView = {
      let view = UIView();
      view.backgroundColor = .yellow;
      return view;
    }();
    
    // top half, split half horizontal
    let stackViewB: UIStackView = {
      let stack = UIStackView();
      
      stack.axis = .horizontal;
      stack.distribution = .fillEqually;
      stack.alignment = .fill;
      stack.spacing = 5;
      
      stack.addArrangedSubview(view1);
      stack.addArrangedSubview(view2);
      
      return stack;
    }();
    
    // split half vertically
    let stackViewA: UIStackView = {
      let stack = UIStackView();
      
      stack.axis = .vertical;
      stack.distribution = .fillEqually;
      stack.alignment = .fill;
      stack.spacing = 5;
      
      stack.addArrangedSubview(stackViewB);
      stack.addArrangedSubview(view3);
      
      return stack;
    }();
    
    self.view.addSubview(stackViewA);
    stackViewA.translatesAutoresizingMaskIntoConstraints = false;
    
    // fill entire screen
    NSLayoutConstraint.activate([
      stackViewA.topAnchor   .constraint(equalTo: self.view.topAnchor   ),
      stackViewA.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
      stackViewA.leftAnchor  .constraint(equalTo: self.view.leftAnchor  ),
      stackViewA.rightAnchor .constraint(equalTo: self.view.rightAnchor ),
      stackViewA.widthAnchor .constraint(equalTo: self.view.widthAnchor ),
      stackViewA.heightAnchor.constraint(equalTo: self.view.heightAnchor)
    ]);
  };
};

// layout 2 boxes in bottom, 1 box on top equally using uistackview
class LayoutBoxThirdsStackCollage2: UIViewController {
  
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
    
    let view3: UIView = {
      let view = UIView();
      view.backgroundColor = .yellow;
      return view;
    }();
    
    // top half, split half horizontal
    let stackViewB: UIStackView = {
      let stack = UIStackView();
      
      stack.axis = .horizontal;
      stack.distribution = .fillEqually;
      stack.alignment = .fill;
      stack.spacing = 5;
      
      stack.addArrangedSubview(view1);
      stack.addArrangedSubview(view2);
      
      return stack;
    }();
    
    // split half vertically
    let stackViewA: UIStackView = {
      let stack = UIStackView();
      
      stack.axis = .vertical;
      stack.distribution = .fillEqually;
      stack.alignment = .fill;
      stack.spacing = 5;
      
      stack.addArrangedSubview(view3);
      stack.addArrangedSubview(stackViewB);
      
      return stack;
    }();
    
    self.view.addSubview(stackViewA);
    stackViewA.translatesAutoresizingMaskIntoConstraints = false;
    
    // fill entire screen
    NSLayoutConstraint.activate([
      stackViewA.topAnchor   .constraint(equalTo: self.view.topAnchor   ),
      stackViewA.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
      stackViewA.leftAnchor  .constraint(equalTo: self.view.leftAnchor  ),
      stackViewA.rightAnchor .constraint(equalTo: self.view.rightAnchor ),
      stackViewA.widthAnchor .constraint(equalTo: self.view.widthAnchor ),
      stackViewA.heightAnchor.constraint(equalTo: self.view.heightAnchor)
    ]);
  };
};
