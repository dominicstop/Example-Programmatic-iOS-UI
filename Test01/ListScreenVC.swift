//
//  ViewController.swift
//  Test01
//
//  Created by Dominic Go on 8/27/20.
//  Copyright © 2020 Dominic Go. All rights reserved.
//

import UIKit

enum PageItems: String, CaseIterable {
  
  case BlueScreen;
  case LayoutBoxHalfH;
  case LayoutBoxHalfV;
  case LayoutBoxHalfStackH;
  case LayoutBoxHalfStackV;
  case LayoutBoxThirdsStripesStackH;
  case LayoutBoxThirdsStripesStackV;
  case LayoutBoxThirdsStackCollage1;
  case LayoutBoxThirdsStackCollage2;
  
  var title: String {
    switch self {
      case .BlueScreen         : return "Blue Screen";
      case .LayoutBoxHalfH     : return "Layout Boxes 1/2 Horizontal";
      case .LayoutBoxHalfV     : return "Layout Boxes 1/2 Verical";
      case .LayoutBoxHalfStackH: return "Layout Boxes 1/2 Stack Horizontal";
      case .LayoutBoxHalfStackV: return "Layout Boxes 1/2 Stack Verical";
      
      case .LayoutBoxThirdsStripesStackH: return "Layout Boxes 1/3 Stripes Stack Horizontal";
      case .LayoutBoxThirdsStripesStackV: return "Layout Boxes 1/3 Stripes Stack Verical";
      case .LayoutBoxThirdsStackCollage1: return "Layout Boxes 1/3 Collage #1";
      case .LayoutBoxThirdsStackCollage2: return "Layout Boxes 1/3 Collage #2";
    };
  };
};

class ListScreenVC: UIViewController {
  
  let tableView = UITableView();
  var safeArea: UILayoutGuide!;
  
  fileprivate let listItems = PageItems.allCases;

  override func loadView() {
    super.loadView();
    
    self.safeArea = self.view.layoutMarginsGuide;
    
    self.view.backgroundColor = .white;
    self.setupTableView();
  };
  
  func setupTableView() {
    self.view.addSubview(tableView);
    
    self.tableView.delegate   = self;
    self.tableView.dataSource = self;
    
    self.tableView.translatesAutoresizingMaskIntoConstraints = false;
    
    // fill entire screen
    NSLayoutConstraint.activate([
      self.tableView.topAnchor   .constraint(equalTo: self.safeArea.topAnchor   ),
      self.tableView.bottomAnchor.constraint(equalTo: self.safeArea.bottomAnchor),
      self.tableView.leftAnchor  .constraint(equalTo: self.view.leftAnchor ),
      self.tableView.rightAnchor .constraint(equalTo: self.view.rightAnchor)
    ]);
    
    self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "ScreenItemCell");
  };
};

extension ListScreenVC: UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.listItems.count;
  };
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "ScreenItemCell", for: indexPath);
    let listItem = self.listItems[indexPath.row];
    
    cell.textLabel?.text = listItem.title;
    return cell;
  };
  
};

extension ListScreenVC: UITableViewDelegate {
  
  // row item selected
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let selectedItem = self.listItems[indexPath.row];
    
    let vc: UIViewController = {
      switch selectedItem {
        case .BlueScreen         : return TestBlueScreen();
        case .LayoutBoxHalfH     : return LayoutBoxHalfHorizontalVC();
        case .LayoutBoxHalfV     : return LayoutBoxHalfVerticalVC();
        case .LayoutBoxHalfStackH: return LayoutBoxHalfStackHorizontal();
        case .LayoutBoxHalfStackV: return LayoutBoxHalfStackVertical();
        
        case .LayoutBoxThirdsStripesStackH: return LayoutBoxThirdsStackStripesHorizontal();
        case .LayoutBoxThirdsStripesStackV: return LayoutBoxThirdsStackStripesVertical();
        case .LayoutBoxThirdsStackCollage1: return LayoutBoxThirdsStackCollage1();
        case .LayoutBoxThirdsStackCollage2: return LayoutBoxThirdsStackCollage2();
      };
    }();
    
    vc.title = selectedItem.title;
    
    self.navigationController?.pushViewController(vc, animated: true);
    self.tableView.deselectRow(at: indexPath, animated: true);
  };
};



