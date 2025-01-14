//
//  CodeRunnerCLI
//
//  Copyright (c) Mateusz Zając 2017
//  Licensed under the MIT license. See LICENSE file.
//

import CodeRunnerCore

if #available(OSX 10.11, *) {
    let tool = CommandLineTool()
    do {
        try tool.run()
    } catch {
        print("An error occurred: \(error)")
    }
} else {
    print("This OS version isn't supported. Please update to >= 10.11!")
}
