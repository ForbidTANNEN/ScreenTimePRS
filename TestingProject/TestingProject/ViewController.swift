@IBAction func clearImage(sender: UIBarButtonItem) {
    let alert = UIAlertController(title: "Clear Canvas", message: "Are you sure you want to clear the canvas?", preferredStyle: .Alert)
    let clearAction = UIAlertAction(title: "Clear", style: .Destructive) { (alert: UIAlertAction!) -> Void in
        self.canvas.image = nil
    }
    let cancelAction = UIAlertAction(title: "Cancel", style: .Default) { (alert: UIAlertAction!) -> Void in
        //print("You pressed Cancel")
    }
    
    alert.addAction(clearAction)
    alert.addAction(cancelAction)
    
    presentViewController(alert, animated: true, completion:nil)
}
