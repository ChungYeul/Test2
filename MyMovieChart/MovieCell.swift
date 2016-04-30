//
//  MovieCell.swift
//  MyMovieChart
//
//  Created by In Chung Yeul on 2016. 4. 12..
//  Copyright © 2016년 inchung. All rights reserved.
//

import Foundation
import UIKit

class MovieCell : UITableViewCell {
    @IBOutlet var title: UILabel!
    
    @IBOutlet var opendate: UILabel!
    
    @IBOutlet var desc: UILabel!
    
    @IBOutlet var rating: UILabel!
    
    @IBOutlet var thumbnail: UIImageView!
}