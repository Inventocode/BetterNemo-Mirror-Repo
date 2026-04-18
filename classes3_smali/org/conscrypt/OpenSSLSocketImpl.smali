.class public abstract Lorg/conscrypt/OpenSSLSocketImpl;
.super Lorg/conscrypt/AbstractConscryptSocket;
.source "OpenSSLSocketImpl.java"


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/AbstractConscryptSocket;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/conscrypt/AbstractConscryptSocket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    return-void
.end method

.method constructor <init>(Ljava/net/InetAddress;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/AbstractConscryptSocket;-><init>(Ljava/net/InetAddress;I)V

    return-void
.end method

.method constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/conscrypt/AbstractConscryptSocket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    return-void
.end method

.method constructor <init>(Ljava/net/Socket;Ljava/lang/String;IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/conscrypt/AbstractConscryptSocket;-><init>(Ljava/net/Socket;Ljava/lang/String;IZ)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .registers 2

    .line 32
    invoke-super {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    return-void
.end method

.method public bridge synthetic bind(Ljava/net/SocketAddress;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-super {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->bind(Ljava/net/SocketAddress;)V

    return-void
.end method

.method public bridge synthetic close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->close()V

    return-void
.end method

.method public final getAlpnSelectedProtocol()[B
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 144
    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/SSLUtils;->toProtocolBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getChannel()Ljava/nio/channels/SocketChannel;
    .registers 2

    .line 32
    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public abstract getChannelId()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .registers 2

    .line 78
    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public abstract getHandshakeSession()Ljavax/net/ssl/SSLSession;
.end method

.method public getHostname()Ljava/lang/String;
    .registers 2

    .line 63
    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getHostname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostnameOrIP()Ljava/lang/String;
    .registers 2

    .line 73
    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getHostnameOrIP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInetAddress()Ljava/net/InetAddress;
    .registers 2

    .line 32
    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getKeepAlive()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 32
    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getKeepAlive()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/InetAddress;
    .registers 2

    .line 32
    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocalPort()I
    .registers 2

    .line 32
    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getLocalSocketAddress()Ljava/net/SocketAddress;
    .registers 2

    .line 32
    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getNpnSelectedProtocol()[B
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 117
    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getNpnSelectedProtocol()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOOBInline()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 32
    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getOOBInline()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReceiveBufferSize()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 32
    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getReceiveBufferSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getRemoteSocketAddress()Ljava/net/SocketAddress;
    .registers 2

    .line 32
    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReuseAddress()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 32
    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getReuseAddress()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getSendBufferSize()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 32
    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getSendBufferSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSoLinger()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 32
    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getSoLinger()I

    move-result v0

    return v0
.end method

.method public getSoWriteTimeout()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 88
    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getSoWriteTimeout()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTcpNoDelay()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 32
    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getTcpNoDelay()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getTrafficClass()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 32
    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getTrafficClass()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isBound()Z
    .registers 2

    .line 32
    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isBound()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isClosed()Z
    .registers 2

    .line 32
    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isClosed()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isConnected()Z
    .registers 2

    .line 32
    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isConnected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isInputShutdown()Z
    .registers 2

    .line 32
    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isInputShutdown()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOutputShutdown()Z
    .registers 2

    .line 32
    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isOutputShutdown()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .registers 2

    .line 32
    invoke-super {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    return-void
.end method

.method public final setAlpnProtocols([B)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_4

    .line 153
    sget-object p1, Lorg/conscrypt/EmptyArray;->BYTE:[B

    :cond_4
    invoke-static {p1}, Lorg/conscrypt/SSLUtils;->decodeProtocols([B)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setApplicationProtocols([Ljava/lang/String;)V

    return-void
.end method

.method public final setAlpnProtocols([Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_4

    .line 135
    sget-object p1, Lorg/conscrypt/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_4
    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setApplicationProtocols([Ljava/lang/String;)V

    return-void
.end method

.method public abstract setChannelIdEnabled(Z)V
.end method

.method public abstract setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
.end method

.method public setHandshakeTimeout(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 93
    invoke-super {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setHandshakeTimeout(I)V

    return-void
.end method

.method public setHostname(Ljava/lang/String;)V
    .registers 2

    .line 68
    invoke-super {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setHostname(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setKeepAlive(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 32
    invoke-super {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setKeepAlive(Z)V

    return-void
.end method

.method public final setNpnProtocols([B)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 126
    invoke-super {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setNpnProtocols([B)V

    return-void
.end method

.method public bridge synthetic setPerformancePreferences(III)V
    .registers 4

    .line 32
    invoke-super {p0, p1, p2, p3}, Lorg/conscrypt/AbstractConscryptSocket;->setPerformancePreferences(III)V

    return-void
.end method

.method public bridge synthetic setReceiveBufferSize(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 32
    invoke-super {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setReceiveBufferSize(I)V

    return-void
.end method

.method public bridge synthetic setReuseAddress(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 32
    invoke-super {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setReuseAddress(Z)V

    return-void
.end method

.method public bridge synthetic setSendBufferSize(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 32
    invoke-super {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setSendBufferSize(I)V

    return-void
.end method

.method public bridge synthetic setSoLinger(ZI)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 32
    invoke-super {p0, p1, p2}, Lorg/conscrypt/AbstractConscryptSocket;->setSoLinger(ZI)V

    return-void
.end method

.method public setSoWriteTimeout(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 83
    invoke-super {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setSoWriteTimeout(I)V

    return-void
.end method

.method public bridge synthetic setTcpNoDelay(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 32
    invoke-super {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setTcpNoDelay(Z)V

    return-void
.end method

.method public bridge synthetic setTrafficClass(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 32
    invoke-super {p0, p1}, Lorg/conscrypt/AbstractConscryptSocket;->setTrafficClass(I)V

    return-void
.end method

.method public abstract setUseSessionTickets(Z)V
.end method

.method public bridge synthetic shutdownInput()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->shutdownInput()V

    return-void
.end method

.method public bridge synthetic shutdownOutput()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->shutdownOutput()V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .line 32
    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptSocket;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
