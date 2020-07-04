import nuklear

public final class TextButton: Button {
    let title: String
    
    init(title: String) {
        self.title = title
    }
    
    public override func draw() {
        preconditionFailure("Not Implemented")
    }
}
