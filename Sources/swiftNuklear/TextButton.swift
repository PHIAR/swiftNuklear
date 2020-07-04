import nuklear

public final class TextButton: Button {
    private let title: String
    
    init(title: String) {
        self.title = title
    }
    
    public override func draw() {
        preconditionFailure("Not Implemented")
    }
}
