import nuklear

public final class ViewContext {
    private let nuklearContext: NuklearContext
    private var views = [View]()
        
    public convenience init(frame: Frame) {
        self.init(context: NuklearContext(frame: frame))
    }
    
    init(context: NuklearContext) {
        self.nuklearContext = context
    }
    
    public func initiateDraw() {
        nuklearContext.contextDraw(with: self.views)
    }
    
    public func addView(view: View) {
        self.views.append(view)
    }
}
