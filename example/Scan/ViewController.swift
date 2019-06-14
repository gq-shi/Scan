//
//  ViewController.swift
//  Scan
//
//  Created by gqshi on 2019/6/14.
//  Copyright © 2019 develop. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    @IBOutlet weak var sender: UIButton!
    @IBAction func sendClick(_ sender: Any) {
        let vc = GQScanViewController(scan: nil);
        self.navigationController?.pushViewController(vc, animated: true)

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let status = AVCaptureDevice.authorizationStatus(for: .video);

    }
    


}

