import Leaf
import Vapor

// configures your application
public func configure(_ app: Application) throws {
    app.http.server.configuration.supportPipelining = true
    app.http.server.configuration.requestDecompression = .enabled
    app.http.server.configuration.responseCompression = .enabled
    app.views.use(.leaf)
    try routes(app)
}
