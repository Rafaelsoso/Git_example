//
//  ReferralCampaignForm.swift
//  sg-app-ios
//
//  Created by tuannqse03247 on 9/15/20.
//  Copyright © 2020 Social Good Foundation. All rights reserved.
//

import Foundation

struct ReferralCampaignForm {

    var referralURL: String = ""
    var currencyCode: String = "USD"
    var registrationBonusFiatAmount: Double = 0.0
    var purchaseBonusFiatAmount: Double = 0.0
    var messageTemplate: String = ""
    var referralCode: String = ""

    static func getFromReferralCampaign(referralCampaign: ReferralCampaign?) -> ReferralCampaignForm {
        var form = ReferralCampaignForm()
        form.referralURL = referralCampaign?.referralUrl ?? ""
        form.registrationBonusFiatAmount = referralCampaign?.registrationBonusFiatAmount ?? 0
        form.purchaseBonusFiatAmount = referralCampaign?.purchaseBonusFiatAmount ?? 0
        form.messageTemplate = referralCampaign?.messageTemplate ?? ""
        form.referralCode = referralCampaign?.referralCode ?? ""
        return form
    }

}
