//
//  MigrationTests.swift
//  MullvadVPNUITests
//
//  Created by Niklas Berglund on 2024-03-15.
//  Copyright © 2024 Mullvad VPN AB. All rights reserved.
//

import Foundation
import XCTest

class MigrationTests: BaseUITestCase {
    let wireGuardPort = "4001"

    override func setUp() {
        super.setUp()

        agreeToTermsOfServiceIfShown()

        // Relaunch app so that tests start from a deterministic state
        app.terminate()
        app.launch()
    }

    func testChangeSettings() {
        login(accountNumber: hasTimeAccountNumber)

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
