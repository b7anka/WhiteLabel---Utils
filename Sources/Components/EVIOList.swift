//
//  EVIOList.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 30/05/2022.
//

import SwiftUI

public struct EVIOList<Data, Row: View>: UIViewRepresentable {
    
    @Binding private var data: [Data]
    private let content: (Data) -> Row
    private let padding: UIEdgeInsets
    private let cellSpacing: CGFloat
    private var shouldBounce: Bool
    private var scrollViewDidEndDragging: ((UIScrollView, Bool) -> Void)?
    private var scrollViewDidEndDecelerating: ((UIScrollView) -> Void)?
    private var tableViewWillDisplayCell: ((IndexPath) -> Void)?
    
    public init(_ data: Binding<[Data]>, _ padding: UIEdgeInsets = UIEdgeInsets(top: .zero, left: .zero, bottom: 40, right: .zero), _ shouldBounce: Bool = false, _ cellSpacing: CGFloat = 10, scrollViewDidEndDragging: ((UIScrollView, Bool) -> Void)?, scrollViewDidEndDecelerating: ((UIScrollView) -> Void)?, tableViewWillDisplayCell: ((IndexPath) -> Void)?, _ content: @escaping (Data) -> Row) {
        self.shouldBounce = shouldBounce
        self.tableViewWillDisplayCell = tableViewWillDisplayCell
        self.scrollViewDidEndDragging = scrollViewDidEndDragging
        self.scrollViewDidEndDecelerating = scrollViewDidEndDecelerating
        self.padding = padding
        self.cellSpacing = cellSpacing
        self._data = data
        self.content = content
    }
    
    public func makeUIView(context: Context) -> UITableView {
        let tableView = UITableView()
        tableView.backgroundColor = .clear
        tableView.allowsMultipleSelection = false
        tableView.allowsMultipleSelectionDuringEditing = false
        tableView.separatorStyle = .none
        tableView.showsVerticalScrollIndicator = false
        tableView.showsHorizontalScrollIndicator = false
        tableView.contentInsetAdjustmentBehavior = .never
        tableView.bounces = self.shouldBounce
        tableView.allowsSelection = false
        tableView.contentInset = self.padding
        tableView.sectionFooterHeight = .zero
        if #available(iOS 15.0, *) {
            tableView.sectionHeaderTopPadding = .zero
        }
        tableView.register(HostingCell<Row>.self, forCellReuseIdentifier: "Cell")
        tableView.delegate = context.coordinator
        tableView.dataSource = context.coordinator
        return tableView
    }
    
    public func updateUIView(_ uiView: UITableView, context: Context) {
        context.coordinator.data = self.data
        uiView.reloadData()
    }
    
    public func makeCoordinator() -> EVIOListCoordinator {
        return EVIOListCoordinator(self.data, self.cellSpacing, self.scrollViewDidEndDragging, self.scrollViewDidEndDecelerating, self.tableViewWillDisplayCell, self.content)
    }
    
    public class EVIOListCoordinator: NSObject, UITableViewDataSource, UITableViewDelegate {
        
        private var scrollViewDidEndDragging: ((UIScrollView, Bool) -> Void)?
        private var scrollViewDidEndDecelerating: ((UIScrollView) -> Void)?
        private var tableViewWillDisplayCell: ((IndexPath) -> Void)?
        private let cellSpacing: CGFloat
        private let content: (Data) -> Row
        public var data: [Data]
        
        public init(_ data: [Data], _ cellSpacing: CGFloat, _ scrollViewDidEndDragging: ((UIScrollView, Bool) -> Void)?, _ scrollViewDidEndDecelerating: ((UIScrollView) -> Void)?, _ tableViewWillDisplayCell: ((IndexPath) -> Void)?, _ content: @escaping (Data) -> Row) {
            self.tableViewWillDisplayCell = tableViewWillDisplayCell
            self.scrollViewDidEndDragging = scrollViewDidEndDragging
            self.scrollViewDidEndDecelerating = scrollViewDidEndDecelerating
            self.cellSpacing = cellSpacing
            self.data = data
            self.content = content
        }
        
        public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            1
        }
        
        public func numberOfSections(in tableView: UITableView) -> Int {
            self.data.count
        }
        
        public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? HostingCell<Row> else {
                return UITableViewCell()
            }
            let data = self.data[indexPath.section]
            let view = self.content(data)
            tableViewCell.backgroundColor = .clear
            tableViewCell.setup(with: view)
            return tableViewCell
        }
        
        public func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
            let headerView = UIView()
            headerView.backgroundColor = .clear
            return headerView
        }
        
        public func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
            return self.cellSpacing
        }
        
        public func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
            if let tableViewWillDisplayCell = self.tableViewWillDisplayCell {
                tableViewWillDisplayCell(indexPath)
            }
        }
        
        public func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
            if let scrollViewDidEndDecelerating = self.scrollViewDidEndDecelerating {
                scrollViewDidEndDecelerating(scrollView)
            }
        }
        
        public func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
            if let scrollViewDidEndDragging = self.scrollViewDidEndDragging {
                scrollViewDidEndDragging(scrollView, decelerate)
            }
        }
    }
    
}

private class HostingCell<Content: View>: UITableViewCell {
    
    var host: UIHostingController<Content>?
    
    func setup(with view: Content) {
        if host == nil {
            let controller = UIHostingController(rootView: view)
            host = controller
            
            guard let content = controller.view else { return }
            content.translatesAutoresizingMaskIntoConstraints = false
            contentView.addSubview(content)
            
            content.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
            content.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
            content.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
            content.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        } else {
            host?.rootView = view
        }
        
        setNeedsLayout()
    }
}
