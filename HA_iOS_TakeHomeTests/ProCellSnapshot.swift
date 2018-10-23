//
//  ProCellSnapshot.swift
//  HA_iOS_TakeHomeTests
//
//  Created by Weston Gibler on 10/22/18.
//  Copyright © 2018 Weston Gibler. All rights reserved.
//

import XCTest
import FBSnapshotTestCase

@testable import HA_iOS_TakeHome

class ProsSnapshot: FBSnapshotTestCase {

    var proVC: UIViewController!
    
    override func setUp() {
        super.setUp()

        recordMode = false
        }
    
    func testCell(withIdentifier identifier: String) {
        
        let view = ProsCell()
        FBSnapshotVerifyView(view)
        
    }
    
    func testProCell() {
        testCell(withIdentifier: "ProCell")
    }

}
