//
//  DetailViewController.swift
//  StarWarTrek
//
//  Created by Joyce Matos on 10/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var starWarsImageView: UIImageView!
    @IBOutlet weak var starTrekImageView: UIImageView!
    
    var starWarsImage: UIImage!
    var starTrekImage: UIImage!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        starWarsImageView.image = starWarsImage
        starTrekImageView.image = starTrekImage
        
        let starWarsGesture = UIPanGestureRecognizer(target: self, action: #selector(panGesture(_:)))
        let starTrekGesture = UIPanGestureRecognizer(target: self, action: #selector(panGesture(_:)))

        
        starWarsImageView.addGestureRecognizer(starWarsGesture)
        starTrekImageView.addGestureRecognizer(starTrekGesture)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func panGesture(_ sender: UIPanGestureRecognizer) {
        
        let point = sender.location(in: view)
        let draggedView = sender.view!
        draggedView.center = point
        
    }
    
//    func starTrekPanGesture(_ sender: UIPanGestureRecognizer) {
//        
//        let point = sender.location(in: view)
//        starTrekImageView.center = point
//        
//    }
    
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
