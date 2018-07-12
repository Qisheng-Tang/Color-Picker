//Created by Qisheng Tang


import UIKit

class ColorPickerViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

     @IBOutlet weak var ColorNameLabel: UILabel!
    
     @IBOutlet weak var picker: UIPickerView!
    var pickercolors = [
                Color(name: "red", uiColor: UIColor.red),
                Color(name: "orange", uiColor: UIColor.orange),
                Color(name: "yellow", uiColor: UIColor.yellow),
                Color(name: "green", uiColor: UIColor.green),
                Color(name: "blue", uiColor: UIColor.blue),
                Color(name: "purple", uiColor: UIColor.purple)
                ]
    
    var color: Color?
    
    var index = 0
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickercolors.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        ColorNameLabel.text=pickercolors[row].name
        self.title=pickercolors[row].name
        index=index+1
        return pickercolors[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        ColorNameLabel.text=pickercolors[row].name
        self.view.backgroundColor=pickercolors[row].uiColor
        index=index+1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.picker.delegate=self
        self.picker.dataSource = self
        if (index==0)
        {
            self.view.backgroundColor=UIColor.red
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
