import nuklear

internal final class NuklearContext {
    private var context: nk_context?
    private let frame: Frame
    
    internal convenience init(frame: Frame) {
        var context = nk_context()
        var font = nk_user_font()
    
        nk_init_default(&context,
                        &font)
        
        self.init(context: context,
                  frame: frame)
    }
    
    init(context: nk_context,
         frame: Frame) {
        self.context = context
        self.frame = frame
    }
    
    private func beginContext(_ title: String,
                              _ context: UnsafeMutablePointer <nk_context>) {
        let _ = title.withCString { pointer in
            nk_begin(context,
                     pointer,
                     self.frame.rect,
                     nk_flags())
        }
    }
    
    private func endContext(_ context: UnsafeMutablePointer <nk_context>) {
        nk_end(context)
    }
    
    public func contextDraw(with views: [View]) {
        guard var context = self.context else {
            preconditionFailure("NuklearContext not iniitalizted")
        }
        
        beginContext("swiftNuklear",
                     &context)
        views.forEach { $0.draw() }
        endContext(&context)
    }
}
