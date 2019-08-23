//
//  pageViewController.swift
//  x
//
//  Created by AnhDCT on 7/16/19.
//  Copyright © 2019 AnhDCT. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController,UIPageViewControllerDataSource,UIPageViewControllerDelegate {
   
    

    lazy var pages:[UIViewController] = {
        let page1 = PViewController(nameAnimal: "Hổ", information: " Hổ là một loại thú dữ ăn thịt sống, chúng dễ nhận biết nhất với các sọc vằn dọc sẫm màu trên bộ lông màu đỏ cam với phần bụng dưới sáng hơn", nameImg: "ho")
      
        let page2 = PViewController(nameAnimal: "Khỉ", information:"Khỉ là một những loài động vật thuộc lớp thú, bộ linh trưởng. Khỉ có ba nhóm lớn, là khỉ Tân Thế giới, khỉ Cựu Thế giới, khỉ không đuôi (Ape). Có khoảng 264 loài khỉ đã bị tuyệt chủng." , nameImg: "khi")
      
        let page3 = PViewController(nameAnimal: "Rắn", information: "Rắn hổ mang chúa hay thường gọi là Rắn hổ mây (danh pháp hai phần: Ophiophagus hannah) là loài rắn thuộc họ Elapidae (họ Rắn hổ) phân bố chủ yếu trong các vùng rừng nhiệt đới trải dài từ Ấn Độ đến Đông Nam Á. Đây là loài rắn độc dài nhất thế giới, với chiều dài tối đa ghi nhận được trong tự nhiên là khoảng 7 m", nameImg: "ran")
       
        let page4 = PViewController(nameAnimal: "Ngựa", information: "Ngựa (danh pháp hai phần: Equus caballus) là một loài động vật có vú trong họ Equidae, bộ Perissodactyla. Loài này được Linnaeus mô tả năm 1758,và là một trong số 8 phân loài còn sinh tồn cho tới ngày nay của họ Equidae.", nameImg: "ngua")
       
        let page5 = PViewController(nameAnimal: "Gấu Bắc Cực", information: "Gấu trắng Bắc Cực (danh pháp hai phần: Ursus maritimus) là một loài động vật có vú lớn của bộ Ăn thịt (Carnivora), họ Gấu (Ursidae). Chúng là loài động vật sống gần địa cực tìm thấy xung quanh Bắc Băng Dương và chúng là loài động vật ăn thịt lớn nhất trên đất liền.", nameImg: "img3")
        
        return [page1,page2,page3,page4,page5]
    }()
    override func viewDidLoad() {
        super.viewDidLoad()

        self.dataSource = self
        self.delegate = self
    
        setViewControllers([pages[0]], direction: .forward, animated: false, completion: nil)
        // Do any additional setup after loading the view.
    }
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let currentIndex = pages.firstIndex(of: viewController) ?? 0
        if currentIndex <= 0 {return nil
        }
        return pages[currentIndex - 1]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let currentIndex = pages.firstIndex(of: viewController) ?? 0
        if currentIndex >= pages.count - 1 {
            return nil
        }
        return pages[currentIndex + 1]
    }


}
