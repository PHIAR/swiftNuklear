import nuklear

public final class Frame {
    public let rect: nk_rect
    
    init(x: Float,
         y: Float,
         width: Float,
         height: Float) {
        self.rect = nk_rect(x,
                            y,
                            width,
                            height)
    }
}
