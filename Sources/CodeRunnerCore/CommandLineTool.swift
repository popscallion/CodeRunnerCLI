//
//  CodeRunnerCLI
//
//  Copyright (c) Mateusz Zając 2017
//  Licensed under the MIT license. See LICENSE file.
//

import Foundation
import Files
import ShellOut

@available(OSX 10.11, *)
public final class CommandLineTool {
    private let fileSystem = FileSystem()
    private let arguments: [String]
    private var path: String { return arguments[1] }
    public init(arguments: [String] = CommandLine.arguments) {
        self.arguments = arguments
    }
    
    public func run() throws {
        do {
            if arguments.count == 1 {
                throw CLTError.missingPath
            }
            let createdFilePath = try fileSystem.createItem(at: path)
            try shellOut(to: "open", arguments: ["-a CodeRunner", createdFilePath])
        }
    }
}
