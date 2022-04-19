//
//  View2Controller.swift
//  MakeTableView
//
//  Created by 오국원 on 2022/04/19.
//

import UIKit

class View2Controller: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super .viewDidLoad()
        tableView.delegate = self//필수
        tableView.dataSource = self//필수
    }
    
    //부모에서 자식으로 형변환이 필요했음 왜냐하면 MyTableViewCell의 자식 클래스의 myLabel에 접근하기 위해서
    //dequeueReuseableCell로 사용할 것
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath) as? MyTableViewCell
        cell?.myLabel.text = indexPath.description
        return cell!
    }
    
    //한 섹션에 있는 row 개수
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    //섹션의 개수
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    //didSelectRowAt cell이 클릭됐을 때 반응하는 함수
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
}

