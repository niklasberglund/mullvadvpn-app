//
//  MigrationTests.swift
//  MullvadVPNUITests
//
//  Created by Niklas Berglund on 2024-03-15.
//  Copyright © 2024 Mullvad VPN AB. All rights reserved.
//

import Foundation
import XCTest

class MigrationTests: LoggedInWithTimeUITestCase {
    let wireGuardPort = "4001"

    func testChangeSettings() {
        HeaderBar(app)
            .tapSettingsButton()

        SettingsPage(app)
            .tapVPNSettingsCell()

        VPNSettingsPage(app)
            .tapWireGuardPortsExpandButton()
            .tapCustomWireGuardPortTextField()
            .enterText(wireGuardPort)
            .dismissKeyboard()
            .tapWireGuardPortsExpandButton()
            .tapWireGuardObfuscationExpandButton()
            .tapWireGuardObfuscationValueOnCell()
            .tapWireGuardObfuscationExpandButton()
            .tapUDPOverTCPPortExpandButton()
            .tapUDPOverTCPPort80Cell()
            .tapUDPOverTCPPortExpandButton()
            .tapQuantumResistantTunnelExpandButton()
            .tapQuantumResistantTunnelOffCell()

    }

    func testVerifySettingsStillChanged() {
        HeaderBar(app)
            .tapSettingsButton()

        SettingsPage(app)
            .tapVPNSettingsCell()

        VPNSettingsPage(app)
            .tapWireGuardPortsExpandButton()
            .verifyCustomWireGuardPortSelected(portNumber: wireGuardPort)
    }
}
