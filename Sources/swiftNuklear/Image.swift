import Foundation

public final class Image {
    private var pointer: UnsafeRawBufferPointer?
    private var width: Float
    private var height: Float
    
    init(path: String,
         width: Float,
         height: Float) {
        let url = URL(fileURLWithPath: path)
        
        guard let data = try? Data(contentsOf: url) else {
            return
        }
        
        self.width = width
        self.height = height
        
        data.withUnsafeBytes { bufferPointer in
            self.pointer = bufferPointer
        }
    }
}
