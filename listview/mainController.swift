//
//  mainController.swift
//  listview
//
//  Created by RaidRaddaoui on 19/06/2019.
//  Copyright © 2019 RaidRaddaoui. All rights reserved.
//

import UIKit

class mainController: UIViewController {

    let dateFormatter : DateFormatter = DateFormatter()
    let hourFormatter : DateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.gray

        hourFormatter.dateFormat = "HH:mm:ss"
        hourFormatter.timeZone = TimeZone.current
        hourFormatter.locale = Locale(identifier: "en_US_POSIX")
        
        getDates()
    }

    func getDates(){
//        let dateAffichage = Date()
//        let hourAff = hourFormatter.string(from: dateAffichage )
//        let dateAff = hourFormatter.date(from: hourAff)
//        print("dateAffichage ",dateAffichage)
//        //let dureTotal = hourFormatter.date(from:enchainement.HeureFin!)!.timeIntervalSince1970 - hourFormatter.date(from:enchainement.HeureExecution!)!.timeIntervalSince1970
//        //print("dureTotal",dureTotal)
//        let diff = (Date().timeIntervalSince1970 - dateAffichage.timeIntervalSince1970)
//        print("diff",diff)
        let dateFormatter : DateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm:ss"
        let date = Date()
        let dateString = dateFormatter.string(from: date)
        print(dateString)
        print(Date().localString(dateStyle:.none))
    }


}
extension Date {
    func localString(dateStyle: DateFormatter.Style = .medium, timeStyle: DateFormatter.Style = .medium) -> String {
        return DateFormatter.localizedString(from: self, dateStyle: dateStyle, timeStyle: timeStyle)
    }
}
