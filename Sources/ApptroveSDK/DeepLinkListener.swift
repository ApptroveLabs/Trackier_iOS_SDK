//
//  DeepLinkListener.swift
//  apptrove-ios-sdk
//
//  Updated by Satyam Jha on 04/02/26.
//

import Foundation

public protocol DeepLinkListener {
    func onDeepLinking(result: DeepLink) -> Void
}
