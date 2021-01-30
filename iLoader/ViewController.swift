//
//  ViewController.swift
//  iLoader
//
//  Created by iMuseum on 1/29/21.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func shell(_ command: String) -> String {
        let task = Process()
        let pipe = Pipe()
        
        task.standardOutput = pipe
        task.arguments = ["-c", command]
        task.launchPath = "/bin/zsh"
        task.launch()
        
        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        let output = String(data: data, encoding: .utf8)!
        
        return output
    }
    @IBAction func FourSLoad(_ sender: NSButton) {
        shell("/Applications/iLoader.app/Contents/Resources/4s.sh")
    }
    
    @IBAction func FiveLoad(_ sender: NSButton) {
        shell("/Applications/iLoader.app/Contents/Resources/5.sh")
    }
    @IBAction func FiveCLoad(_ sender: NSButton) {
        shell("/Applications/iLoader.app/Contents/Resources/5c.sh")
    }
    @IBAction func FiveSLoad(_ sender: NSButton) {
        shell("/Applications/iLoader.app/Contents/Resources/5s.sh")
    }
    @IBAction func iPodFiveLoad(_ sender: NSButton) {
        shell("/Applications/iLoader.app/Contents/Resources/ipod5.sh")
    }
    @IBAction func iPadMiniTwoLoad(_ sender: NSButton) {
        shell("/Applications/iLoader.app/Contents/Resources/ipadmini2.sh")
    }
    @IBAction func iPadAirOneLoad(_ sender: NSButton) {
        shell("/Applications/iLoader.app/Contents/Resources/ipadair1.sh")
    }
    @IBAction func iPadFourLoad(_ sender: NSButton) {
        shell("/Applications/iLoader.app/Contents/Resources/ipad4.sh")
    }
    @IBAction func iPadMiniOneLoad(_ sender: NSButton) {
        shell("/Applications/iLoader.app/Contents/Resources/ipadmini1.sh")
    }
    @IBAction func iPadTwoLoad(_ sender: NSButton) {
        shell("/Applications/iLoader.app/Contents/Resources/ipad2.sh")
    }
    @IBAction func iPadThreeLoad(_ sender: NSButton) {
        shell("/Applications/iLoader.app/Contents/Resources/ipad3.sh")
    }
    
    
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

