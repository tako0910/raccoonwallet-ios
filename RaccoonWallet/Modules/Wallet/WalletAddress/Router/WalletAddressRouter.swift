//
//  WalletAddressRouter.swift
//  RaccoonWallet
//
//  Created by Taizo Kusuda on 2018/08/28.
//  Copyright © 2018年 T TECH, LIMITED LIABILITY CO. All rights reserved.
//

import Foundation
import UIKit

class WalletAddressRouter: WalletAddressWireframe {
    weak var viewController: UIViewController?
    
    static func assembleModule(_ wallet: Wallet) -> UIViewController {
        let view = R.storyboard.walletAddressStoryboard.walletAddressView()!
        let presenter = WalletAddressPresenter()
        let interactor = WalletAddressInteractor()
        let router = WalletAddressRouter()
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        presenter.wallet = wallet
        
        interactor.output = presenter
        
        router.viewController = view
        return view
    }
}

