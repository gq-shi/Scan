//
//  GQScanViewController.swift
//  Scan
//
//  Created by gqshi on 2019/6/14.
//  Copyright © 2019 develop. All rights reserved.
//

import UIKit

class GQScanViewController: UIViewController {
    
    var scanManager : ScanDelegate?;
    
    init(scan:ScanDelegate?){
        scanManager = scan;
        super.init(nibName: nil, bundle: nil);
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        if scanManager == nil {
            scanManager = GScanManager(metadataTypes: nil, rect: .zero, view: self.view, complete: { (result,isLocal ) in
                for item in result {
                    print("result = \(item.result)");
                }
            });
        }
        self.view.backgroundColor = .white;
        scanManager?.startScan()
    }
}


extension GQScanViewController: ScanResultDelegate{
    func scanResult(_ result: [ScanResult], isLocal: Bool) {
        for item in result {
            print("result = \(item.result)");
        }
    }
}
