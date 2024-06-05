//
//  FriendsViewController.swift
//  BubbleClone
//
//  Created by 김민택 on 6/4/24.
//

import UIKit

class FriendsViewController: UITableViewController {

    private enum Section: CaseIterable {
        case myProfile
        case myFriends
        case recommendFridends
    }

    private var dataSource: UITableViewDiffableDataSource<Section, UUID>!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(FriendsTableViewCell.self, forCellReuseIdentifier: FriendsTableViewCell.identifier)
        dataSource = UITableViewDiffableDataSource<Section, UUID>(tableView: tableView, cellProvider: { tableView, indexPath, itemIdentifier in
            let cell = tableView.dequeueReusableCell(withIdentifier: FriendsTableViewCell.identifier, for: indexPath)
            return cell
        })
        tableView.dataSource = dataSource

        var snapshot = NSDiffableDataSourceSnapshot<Section, UUID>()
        snapshot.appendSections(Section.allCases)
        snapshot.appendItems([UUID()], toSection: .myProfile)
        snapshot.appendItems([UUID(), UUID()], toSection: .myFriends)
        snapshot.appendItems([UUID(), UUID()], toSection: .recommendFridends)
        dataSource.apply(snapshot)
    }
}

extension FriendsViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let profileView = UINavigationController(rootViewController: ProfileViewController())
        profileView.modalPresentationStyle = .fullScreen
        tableView.deselectRow(at: indexPath, animated: true)
        present(profileView, animated: true)
    }
}
