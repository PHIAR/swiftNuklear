public final class ImageButton: Button {
    private let image: Image?
    
    init(image: Image) {
        self.image = image
    }
    
    public override func draw() {
        preconditionFailure("Not Implemented")
    }
}
