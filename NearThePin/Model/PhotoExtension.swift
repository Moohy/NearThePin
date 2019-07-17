import UIKit

extension Photo {
    func set(image: UIImage){
        self.image = image.pngData()
    }
    
    func getImage() -> UIImage?{
        return (image == nil) ? nil : UIImage(data: image!)
    }
    
    public override func awakeFromInsert() {
        super.awakeFromInsert()
        creationImage = Date()
    }
}
