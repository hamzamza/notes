//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var dices : [String] = ["DiceOne","DiceTwo","DiceThree","DiceFour", "DiceFive" ,"DiceSix"]
    @IBOutlet weak var SecodnDeck: UIImageView!
    @IBOutlet weak var FirstDeck: UIImageView!
  
    @IBAction func refetch(_ sender: Any) {
        FirstDeck.image = UIImage(named: dices.randomElement() ?? "DiceOne")
        SecodnDeck.image = UIImage(named: dices.randomElement() ?? "DiceOne")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let numbers = [45, 73, 195, 53]
        let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
        print((0..<6).map{ number in  number })
          let password = (0..<6).map { _ in alphabet.randomElement()! }.joined()
          print(password)
          
        let computedNumbers = numbers.enumerated().map { (index, num) -> Double in
            if index < numbers.count - 1 {
                return Double(num * numbers[index + 1] )
            } else {
                return Double(num * numbers[0])
            }
        }

        print(computedNumbers)
            
            print(computedNumbers)
        FirstDeck.image = UIImage(named: dices.randomElement() ?? "DiceOne")
        SecodnDeck.image = UIImage(named: dices.randomElement() ?? "DiceOne")
    }

}

