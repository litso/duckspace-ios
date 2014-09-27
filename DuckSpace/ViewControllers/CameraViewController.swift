//
//  CameraViewController.swift
//  DuckSpace
//
//  Created by Robert Manson on 9/27/14.
//  Copyright (c) 2014 Robert Manson. All rights reserved.
//

import UIKit
import AVFoundation

class CameraViewController: UIViewController {
    @IBOutlet weak var cameraPreview: UIView!
    var session: AVCaptureSession?
    var previewLayer: AVCaptureVideoPreviewLayer?
    var snapper: AVCaptureStillImageOutput?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        session = AVCaptureSession()
        let camera = getCamera()
        let input:AVCaptureInput = AVCaptureDeviceInput.deviceInputWithDevice(camera, error: nil) as AVCaptureInput
        session?.addInput(input)
        
        snapper = AVCaptureStillImageOutput()
        snapper?.outputSettings = [AVVideoCodecKey: AVVideoCodecJPEG, AVVideoQualityKey: NSNumber(double: 0.6)]
        session?.addOutput(snapper)

        previewLayer = AVCaptureVideoPreviewLayer(session: session)
        let screenBounds = UIScreen.mainScreen().bounds
        previewLayer?.frame = screenBounds
        cameraPreview.layer.addSublayer(previewLayer)
        session?.startRunning()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Private
    
    private func getCamera() -> AVCaptureDevice {
        let devices = AVCaptureDevice.devicesWithMediaType(AVMediaTypeVideo)
        for device in devices {
            if device.position == AVCaptureDevicePosition.Front {
                return device as AVCaptureDevice
            }
        }
        return AVCaptureDevice.defaultDeviceWithMediaType(AVMediaTypeVideo)
    }
    

    // MARK: - Action
    
    @IBAction func takePicture(sender: UIButton) {
        println("Snap snap")
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
