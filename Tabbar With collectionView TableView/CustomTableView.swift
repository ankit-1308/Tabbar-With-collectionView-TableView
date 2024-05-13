//
//  CustomTableView.swift
//  Tabbar With collectionView TableView
//
//  Created by OLX on 13/05/24.
//

import UIKit

class CustomTableView: UIViewController {
    
    
    var posts = [Post]()
    
    @IBOutlet weak var myTabelView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTabelView.dataSource = self
        myTabelView.delegate = self

        // Do any additional setup after loading the view.
  
        fetchData()
        
    }
    
    func fetchData() {
        
        let urlString = "https://jsonplaceholder.typicode.com/comments"
        guard let url = URL(string: urlString)
          else {
            print("Invalid URL")
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                print("Error fetching data")
                return
            }
            
            guard let data = data
            else {
                print("No data received")
                return
            }
            do {
                let decoder = JSONDecoder()    // -> ye function convert krta h json data ko swift object m
                let posts = try decoder.decode([Post].self, from: data)
                
                
                self.posts = posts
                
                
                DispatchQueue.main.async {
                    self.myTabelView.reloadData()
                }
            } catch let jsonError {
                print("Error decoding JSON: \(jsonError)")
            }
        }
        
        
        task.resume()
    }

}





extension CustomTableView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = myTabelView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        
        let post = posts[indexPath.row]
        
           cell.labelName.text = post.name
           cell.labelEmail.text = post.email
           cell.labelBody.text = post.body
            
        
        return cell
    }
}


extension CustomTableView:UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
