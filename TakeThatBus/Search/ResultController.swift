//
//  ResultController.swift
//  TakeThatBus
//
//  Created by Susan Kim on 13/08/2019.
//  Copyright © 2019 Susan Kim. All rights reserved.
//

import UIKit
import LBTATools

private let cellId = "cellId"

class ResultController: UITableViewController, UISearchResultsUpdating {
    
    let locations: [Location] = [
        Location(name: "경복궁역 3호선", address: "서울 종로구 사직로 지하 130(적선동)"),
        Location(name: "경복궁", address: "서울 종로구 사직로 지하 130(적선동)"),
        Location(name: "경복궁 주차장", address: "서울 종로구 사직로 지하 130(적선동)")
    ]
    
    override func viewDidLoad() {
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(LocationSearchResultCell.self, forCellReuseIdentifier: cellId)
        
        view.backgroundColor = .orange
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Int.random(in: 0...5)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let defaultCell = UITableViewCell()
        
        if indexPath.section == 1 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? LocationSearchResultCell else { return defaultCell }
            
            let location = locations[indexPath.row % 3]
            cell.textLabel?.text = location.name
            cell.detailTextLabel?.text = location.address
            
            return cell
        }
        
        return defaultCell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == Section.recent.rawValue {
            let header = UIView(backgroundColor: .white)
            header.stack(UILabel(text: "최근 검색")).withMargins(.init(top: 16, left: 8, bottom: 16, right: 8))
            return header
        } else if section == Section.results.rawValue {
            return UIView(backgroundColor: .lightGray)
        } else {
            return nil
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == Section.recent.rawValue {
            return 40
        } else if section == Section.results.rawValue {
            return CGFloat(section * 10)
        } else {
            return 0
        }
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        tableView.reloadData()
    }
}

private enum Section: Int {
    case recent
    case results
}
