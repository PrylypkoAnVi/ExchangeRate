//
//  CurrentDateViewControllerDelegate.swift
//  ExchangeRate
//
//  Created by Anastasia on 29.10.2022.
//

import UIKit

extension CurrentDateViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        model.refreshData(for: .distantPast)
        print(model.collectionModelData.map({$0.currency}).count)
        return model.collectionModelData.map{$0.currency}.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? CurrentDateTableViewCell else {
            return UITableViewCell()
        }
//        cell.setData(model.collectionModelData[indexPath.row])
//        cell.currencyLabel?.text = model.collectionModelData[indexPath.row].currency
//        cell.valueLabel?.text = String(model.collectionModelData[indexPath.row].saleRateNB)
        cell.textLabel?.text = model.collectionModelData[indexPath.row].currency
        return cell
    }
    
}
