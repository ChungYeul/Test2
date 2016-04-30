//
//  ListViewController.swift
//  MyMovieChart
//
//  Created by In Chung Yeul on 2016. 4. 12..
//  Copyright © 2016년 inchung. All rights reserved.
//

import Foundation
import UIKit

class ListViewController : UITableViewController {
    // 여기에 클래스 내용을 작성합니다.
    
    // 테이블 뷰를 구성할 리스트 데이터를 담을 배열 변수( = [MovieVO]())
    var list = Array<MovieVO>()
    
    override func viewDidLoad() {
        // 첫번째 행
        var mvo = MovieVO()
        mvo.title = "Dark Knight"
        mvo.description = "배트맨 비긴즈의 속편"
        mvo.opendate = "2008-08-06"
        mvo.rating = 8.95
        mvo.thumbnail = "darkknight.png"
        // 배열에 추가
        self.list.append(mvo)
        
        // 두번째 행
        mvo = MovieVO()
        mvo.title = "Avengers"
        mvo.description = "영웅들이 총집합하는 히어로물"
        mvo.opendate = "2012-04-11"
        mvo.rating = 8.74
        mvo.thumbnail = "avengers.png"
        // 배열에 추가
        self.list.append(mvo)
        
        // 세번째 행
        mvo = MovieVO()
        mvo.title = "Thor"
        mvo.description = "뇌신 토르의 정의사회 구현하기"
        mvo.opendate = "2011-04-18"
        mvo.rating = 7.31
        mvo.thumbnail = "thor.png"
        // 배열에 추가
        self.list.append(mvo)
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.list.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // 주어진 행에 맞는 데이터 소스를 가져옴
        let row = self.list[indexPath.row]
        /*
        // ListCell이라는 이름을 가지는 프로토타입 셀을 스토리보드로부터 가져옴
        let cell = tableView.dequeueReusableCellWithIdentifier("ListCell")!
        
        /*
        cell.textLabel?.text = row.title
        cell.detailTextLabel?.text = row.description
         */
        
        /*
        // 스토리보드의 객체를 읽어옴
        // 영화제목이 표시될 레이블을 title 변수로 받음
        let title = cell.viewWithTag(101) as? UILabel
        
        // 영화요약이 표시될 레이블을 desc 변수로 받음
        let desc = cell.viewWithTag(102) as? UILabel
        
        // 영화 개봉일이 표시될 레이블을 opendate 변수로 받음
        let opendate = cell.viewWithTag(103) as? UILabel
        
        // 영화 별점이 표시될 레이블을 rating 변수로 받음
        let rating = cell.viewWithTag(104) as? UILabel
        
        // 데이터 소스에 저장된 값을 각 레이블 변수에 할당
        title?.text = row.title
        desc?.text = row.description
        opendate?.text = row.opendate
        rating?.text = "\(row.rating!)"
        */
        */
        
        // /*
        let cell = tableView.dequeueReusableCellWithIdentifier("ListCell") as! MovieCell
        
        // 데이터 소스에 저장된 값을 각 레이블 변수에 할당
        cell.title?.text = row.title
        cell.desc?.text = row.description
        cell.opendate?.text = row.opendate
        cell.rating?.text = "\(row.rating!)"
        cell.thumbnail.image = UIImage(named: row.thumbnail!);
        // */
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        NSLog("Touch Table Row at %d", indexPath.row)
    }
}