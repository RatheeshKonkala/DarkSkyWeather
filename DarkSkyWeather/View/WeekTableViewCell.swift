//
//  WeekTableViewCell.swift
//  DarkSkyWeather
//
//  Created by Ratheesh Konkala on 12/07/17.
//  Copyright © 2017 Ratheesh Konkala. All rights reserved.
//

import UIKit

class WeekTableViewCell: UITableViewCell {
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var weekNameLabel: UILabel!
    @IBOutlet weak var summaryLabel: UILabel!
    @IBOutlet weak var maxTempLabel: UILabel!
    @IBOutlet weak var minTempLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    //Populating Data into tableviewcell
    func buildCellUI(data: DailyData) {
         DispatchQueue.main.async {[unowned self] in
            self.dayLabel.text          =   data.formattedDay
            self.weekNameLabel.text     =   data.formattedWeek
            self.summaryLabel.text      =   data.formattedSummary
            self.maxTempLabel.text      =   data.formattedMaxTemp
            self.minTempLabel.text      =   data.formattedMinTemp
        }
    }
}
