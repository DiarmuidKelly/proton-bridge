// Copyright (c) 2021 Proton Technologies AG
//
// This file is part of ProtonMail Bridge.
//
// ProtonMail Bridge is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// ProtonMail Bridge is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with ProtonMail Bridge.  If not, see <https://www.gnu.org/licenses/>.

import QtQuick 2.13
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12

import Proton 4.0

Rectangle {
    property var colorScheme
    color: colorScheme.background_norm
    clip: true

    ColumnLayout {
        anchors.fill: parent
        property var colorScheme: parent.colorScheme

        spacing: 5

        Buttons {
            Layout.fillWidth: true
            Layout.margins: 20
        }

        TextFields {
            Layout.fillWidth: true
            Layout.margins: 20
        }

        TextAreas {
            Layout.fillWidth: true
            Layout.margins: 20
        }

        CheckBoxes {
            Layout.fillWidth: true
            Layout.margins: 20
        }

        RadioButtons {
            Layout.fillWidth: true
            Layout.margins: 20
        }

        Switches {
            Layout.fillWidth: true
            Layout.margins: 20
        }
    }
}
