//
// This source file is part of the 0x.swift open source project
// Copyright 2019 The 0x.swift Authors
// Licensed under Apache License v2.0
//
// EIP712Domain.swift
//
// Created by Igor Shmakov on 09/04/2019
//

import Foundation

struct EIP712Domain: EIP712Representable {
    
    let name: String?
    let version: String?
    let chainID: Int?
    let verifyingContract: String?
    let salt: Data?
    
    var values: [EIP712Value] {
        
        var data = [EIP712Value]()
        
        if let name = name {
            data.append(EIP712SimpleValue(
                parameter: EIP712Parameter(name: "name", type: .string),
                value: name)
            )
        }
        
        if let version = version {
            data.append(EIP712SimpleValue(
                parameter: EIP712Parameter(name: "version", type: .string),
                value: version)
            )
        }
        
        if let chainID = chainID {
            data.append(EIP712SimpleValue(
                parameter: EIP712Parameter(name: "chainId", type: .uint(len: 256)),
                value: chainID)
            )
        }
        
        if let verifyingContract = verifyingContract {
            data.append(EIP712SimpleValue(
                parameter: EIP712Parameter(name: "verifyingContract", type: .address),
                value: verifyingContract)
            )
        }
        
        if let salt = salt {
            data.append(EIP712SimpleValue(
                parameter: EIP712Parameter(name: "salt", type: .fixedBytes(len: 32)),
                value: salt)
            )
        }
        
        return data
    }
}
