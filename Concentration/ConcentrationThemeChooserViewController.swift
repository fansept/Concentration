//
//  ConcentrationThemeChooserViewController.swift
//  Concentration
//
//  Created by Andy Fan on 22/6/2018.
//  Copyright © 2018 algobet. All rights reserved.
//

import UIKit

class ConcentrationThemeChooserViewController: UIViewController, UISplitViewControllerDelegate {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Choose Theme" {
            if let themeName = (sender as? UIButton)?.currentTitle, let theme = themes[themeName] {
                if let cvc = segue.destination as? ConcentrationViewController {
                    cvc.theme = theme
                }
            }
        }
    }
    
    let themes = [
        "Animals": "🙀🐼🐻🐞🦖🐟🐬🐇🐷🦁🐯🦊🐰🐭🐶🐸🐵🐣🐴🦄🐝🐛🦋🐌🐜🐢🐍🐙🦐🦀🦍🐲",
        "Plants": "🌻🍄🍓🍌🥝🍉🍁🌹🌲🍎🍇🥥🥑🍆🥔🍒🍑🍍🍅🌶🥕🌽🥒🍐🌾🎄🍠🍈🥦",
        "Faces": "👻🤡🤖👹🎃👺👽😈💩👀👣👃💋👁👮‍♂️🌞🌍🌛🔥🌊☔️⚡️👍👏🤝✋👌✍🏻",
        "Toys": "⚽️🚌🛴🚘🚇✈️🚁✒️🏀🏓🚑🚲🚀🚢🚦🏰📱⏱☎️🔐🕶👞👜🏆🎻🎸🥁🎳🚜🏍🛶⛵️🚤⛩💻"
    ]
}
