//
//  ViewController.swift
//  Food
//
//  Created by xiuer on 16/9/19.
//  Copyright © 2016年 xiuer. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
      // var url:NSURL=NSURL.init(fileReferenceLiteral: "http://apis.baidu.com/tngou/cook/list")
        let urlString = "http://apis.baidu.com/tngou/cook/list"
        //let url=NSURL(string: urlString)
        
         print(urlString)
        if  let url=NSURL(string: urlString){
             let  request = NSMutableURLRequest(URL: url)
            request.HTTPMethod="GET"
            NSURLSession.sharedSession().dataTaskWithRequest(request){(data: NSData?, resp: NSURLResponse?, error: NSError?) in
                print("test")
                print(resp)
                
            
            }
        }
       
        
        
        
        
 //
//        
//      var request:NSURLRequest = NSURLRequest.init(URL: url);
//        
//        
//        var response:NSURLResponse=NSURLResponse.init()
      
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

