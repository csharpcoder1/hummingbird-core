/// Address to bind server to
public enum HBBindAddress {
    /// bind address define by host and port
    case hostname(_ host: String = "127.0.0.1", port: Int = 8080)
    /// bind address defined by unxi domain socket
    case unixDomainSocket(path: String)

    /// if address is hostname and port return port
    public var port: Int? {
        guard case .hostname(_, let port) = self else { return nil }
        return port
    }

    /// if address is hostname and port return hostname
    public var host: String? {
        guard case .hostname(let host, _) = self else { return nil }
        return host
    }

    /// if address is unix domain socket return unix domain socket path
    public var unixDomainSocketPath: String? {
        guard case .unixDomainSocket(let path) = self else { return nil }
        return path
    }
}
