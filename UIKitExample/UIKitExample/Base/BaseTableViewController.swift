//
//  BaseTableViewController.swift
//  UIKitExample
//
//  Created by AngaoTu on 2022/1/6.
//

import UIKit

class BaseTableViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initView()
    }
    
    // MARK: - 公有属性
    lazy var tableView: UITableView = {
        let temp = UITableView(frame: .zero, style: .grouped)
        temp.delegate = self
        temp.dataSource = self
        temp.rowHeight = 44
        temp.register(SimpleTextTableViewCell.self, forCellReuseIdentifier: "SimpleTextTableViewCell")
        return temp
    }()
    
    var dataList: [Any] = []
    
    // MARK: - 公有方法
    func initView() {
        view.backgroundColor = .white
        view.addSubview(tableView)
        tableView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
    }
}

extension BaseTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

/// 全局函数
func ATLog<T>(_ message:T, file:String = #file, funcName:String = #function, lineNum:Int = #line) {
    
    #if DEBUG
    
    let file = (file as NSString).lastPathComponent;
    print("\n============🚩UIKitExample==========📄file:\(file)============\n ❗️func: \(funcName) \n\n \(message) \n==============================================\n");
    
    #endif
}
