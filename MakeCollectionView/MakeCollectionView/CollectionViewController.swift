//
//  CollectionViewController.swift
//  MakeCollectionView
//
//  Created by 오국원 on 2022/04/19.
//

import UIKit

private let collectionCellIdentifire = "cell"
private let collectionHeaderCellIdentifier = "header"

class CollectionViewController:UICollectionViewController {
    //MARK: - Properties
    let items = ["1","2","3","4","5","6","7","8","9","10"]
    
    //MARK: -Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configures()
    }
    
    //MARK: -Configures
    func configures() {//collectionView.register가 핵심
        collectionView.register(CollectionCell.self, forCellWithReuseIdentifier: collectionCellIdentifire)
        collectionView.register(CollectionHeaderCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: collectionHeaderCellIdentifier)
    }
    
    
}

extension CollectionViewController {//아래 메서드들 중요 암기
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: collectionCellIdentifire, for: indexPath) as! CollectionCell //중요
        cell.item = items[indexPath.row]
        return cell
        
    }
    
    //collectioViewHeader 변경하는 함수
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let cell = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: collectionHeaderCellIdentifier, for: indexPath) as! CollectionHeaderCell
        
        return cell
        
        
//        if kind == UICollectionView.elementKindSectionHeader {
//            //Header
//        } else {
//            //Footer
//        }
    }
}

extension CollectionViewController:UICollectionViewDelegateFlowLayout {//cell이 한 row에 나타날 수 있는 개수에 대한 제약
    
    //MARK: -CollectionCell function
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize { //cell의 크기를 지정해주는 함수 sizeForItemAt
        return CGSize(width: (view.frame.width / 3) - 2, height: (view.frame.width / 3) - 2)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {//cell 옆 간격을 지정해 줄 수 있는 함수 minimumInteritemSpacingForSectionAt
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat { //minimumLineSpacingForSectionAt 세로 간격을 지정해주는
        return 1
    }
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
    //MARK: -CollectionHeaderCell function
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height/2)
    }
    
    
    
}
