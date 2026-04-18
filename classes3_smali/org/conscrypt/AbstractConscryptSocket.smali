.class abstract Lorg/conscrypt/AbstractConscryptSocket;
.super Ljavax/net/ssl/SSLSocket;
.source "AbstractConscryptSocket.java"


# instance fields
.field private final autoClose:Z

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/net/ssl/HandshakeCompletedListener;",
            ">;"
        }
    .end annotation
.end field

.field private peerHostname:Ljava/lang/String;

.field private final peerInfoProvider:Lorg/conscrypt/PeerInfoProvider;

.field private final peerPort:I

.field private readTimeoutMilliseconds:I

.field final socket:Ljava/net/Socket;


# direct methods
.method constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    .line 61
    new-instance v0, Lorg/conscrypt/AbstractConscryptSocket$1;

    invoke-direct {v0, p0}, Lorg/conscrypt/AbstractConscryptSocket$1;-><init>(Lorg/conscrypt/AbstractConscryptSocket;)V

    iput-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerInfoProvider:Lorg/conscrypt/PeerInfoProvider;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->listeners:Ljava/util/List;

    .line 89
    iput-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    const/4 v0, -0x1

    .line 91
    iput v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerPort:I

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->autoClose:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/lang/String;I)V

    .line 61
    new-instance v0, Lorg/conscrypt/AbstractConscryptSocket$1;

    invoke-direct {v0, p0}, Lorg/conscrypt/AbstractConscryptSocket$1;-><init>(Lorg/conscrypt/AbstractConscryptSocket;)V

    iput-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerInfoProvider:Lorg/conscrypt/PeerInfoProvider;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->listeners:Ljava/util/List;

    .line 97
    iput-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    .line 98
    iput-object p1, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    .line 99
    iput p2, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerPort:I

    const/4 p1, 0x0

    .line 100
    iput-boolean p1, p0, Lorg/conscrypt/AbstractConscryptSocket;->autoClose:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    .line 61
    new-instance p3, Lorg/conscrypt/AbstractConscryptSocket$1;

    invoke-direct {p3, p0}, Lorg/conscrypt/AbstractConscryptSocket$1;-><init>(Lorg/conscrypt/AbstractConscryptSocket;)V

    iput-object p3, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerInfoProvider:Lorg/conscrypt/PeerInfoProvider;

    .line 78
    new-instance p3, Ljava/util/ArrayList;

    const/4 p4, 0x2

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p3, p0, Lorg/conscrypt/AbstractConscryptSocket;->listeners:Ljava/util/List;

    .line 114
    iput-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    .line 115
    iput-object p1, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    .line 116
    iput p2, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerPort:I

    const/4 p1, 0x0

    .line 117
    iput-boolean p1, p0, Lorg/conscrypt/AbstractConscryptSocket;->autoClose:Z

    return-void
.end method

.method constructor <init>(Ljava/net/InetAddress;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/net/InetAddress;I)V

    .line 61
    new-instance p1, Lorg/conscrypt/AbstractConscryptSocket$1;

    invoke-direct {p1, p0}, Lorg/conscrypt/AbstractConscryptSocket$1;-><init>(Lorg/conscrypt/AbstractConscryptSocket;)V

    iput-object p1, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerInfoProvider:Lorg/conscrypt/PeerInfoProvider;

    .line 78
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/conscrypt/AbstractConscryptSocket;->listeners:Ljava/util/List;

    .line 105
    iput-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    const/4 p1, 0x0

    .line 106
    iput-object p1, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    const/4 p1, -0x1

    .line 107
    iput p1, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerPort:I

    const/4 p1, 0x0

    .line 108
    iput-boolean p1, p0, Lorg/conscrypt/AbstractConscryptSocket;->autoClose:Z

    return-void
.end method

.method constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    .line 61
    new-instance p1, Lorg/conscrypt/AbstractConscryptSocket$1;

    invoke-direct {p1, p0}, Lorg/conscrypt/AbstractConscryptSocket$1;-><init>(Lorg/conscrypt/AbstractConscryptSocket;)V

    iput-object p1, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerInfoProvider:Lorg/conscrypt/PeerInfoProvider;

    .line 78
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/conscrypt/AbstractConscryptSocket;->listeners:Ljava/util/List;

    .line 123
    iput-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    const/4 p1, 0x0

    .line 124
    iput-object p1, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    const/4 p1, -0x1

    .line 125
    iput p1, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerPort:I

    const/4 p1, 0x0

    .line 126
    iput-boolean p1, p0, Lorg/conscrypt/AbstractConscryptSocket;->autoClose:Z

    return-void
.end method

.method constructor <init>(Ljava/net/Socket;Ljava/lang/String;IZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    .line 61
    new-instance v0, Lorg/conscrypt/AbstractConscryptSocket$1;

    invoke-direct {v0, p0}, Lorg/conscrypt/AbstractConscryptSocket$1;-><init>(Lorg/conscrypt/AbstractConscryptSocket;)V

    iput-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerInfoProvider:Lorg/conscrypt/PeerInfoProvider;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->listeners:Ljava/util/List;

    const-string v0, "socket"

    .line 131
    invoke-static {p1, v0}, Lorg/conscrypt/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/Socket;

    iput-object p1, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    .line 132
    iput-object p2, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    .line 133
    iput p3, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerPort:I

    .line 134
    iput-boolean p4, p0, Lorg/conscrypt/AbstractConscryptSocket;->autoClose:Z

    return-void
.end method

.method private isDelegating()Z
    .registers 2

    .line 613
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_8

    if-eq v0, p0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method public addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .registers 4

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "Provided listener is null"

    .line 237
    invoke-static {v0, v1}, Lorg/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 238
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bind(Ljava/net/SocketAddress;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 162
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    goto :goto_f

    .line 164
    :cond_c
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->bind(Ljava/net/SocketAddress;)V

    :goto_f
    return-void
.end method

.method final checkOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 573
    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 574
    :cond_7
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 172
    iget-boolean v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->autoClose:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_21

    .line 173
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_21

    .line 176
    :cond_18
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_21

    .line 177
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->close()V

    :cond_21
    :goto_21
    return-void
.end method

.method public final connect(Ljava/net/SocketAddress;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0, p1, v0}, Lorg/conscrypt/AbstractConscryptSocket;->connect(Ljava/net/SocketAddress;I)V

    return-void
.end method

.method public final connect(Ljava/net/SocketAddress;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    if-nez v0, :cond_11

    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_11

    .line 148
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 149
    invoke-static {v0}, Lorg/conscrypt/Platform;->getHostStringFromInetSocketAddress(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    .line 152
    :cond_11
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 153
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    goto :goto_20

    .line 155
    :cond_1d
    invoke-super {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    :goto_20
    return-void
.end method

.method abstract exportKeyingMaterial(Ljava/lang/String;[BI)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method abstract getActiveSession()Ljavax/net/ssl/SSLSession;
.end method

.method abstract getAlpnSelectedProtocol()[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getApplicationProtocol()Ljava/lang/String;
.end method

.method abstract getApplicationProtocols()[Ljava/lang/String;
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method abstract getChannelId()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .registers 2

    .line 251
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 252
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lorg/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0

    .line 254
    :cond_d
    invoke-static {p0}, Lorg/conscrypt/Platform;->getFileDescriptorFromSSLSocket(Lorg/conscrypt/AbstractConscryptSocket;)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public abstract getHandshakeApplicationProtocol()Ljava/lang/String;
.end method

.method public abstract getHandshakeSession()Ljavax/net/ssl/SSLSession;
.end method

.method getHostname()Ljava/lang/String;
    .registers 2

    .line 520
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    return-object v0
.end method

.method getHostnameOrIP()Ljava/lang/String;
    .registers 2

    .line 538
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 542
    :cond_5
    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 544
    invoke-static {v0}, Lorg/conscrypt/Platform;->getOriginalHostNameFromInetAddress(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .registers 2

    .line 184
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 185
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 187
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 301
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 303
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getKeepAlive()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 397
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 398
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getKeepAlive()Z

    move-result v0

    return v0

    .line 400
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getKeepAlive()Z

    move-result v0

    return v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .registers 2

    .line 192
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 193
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 195
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .registers 2

    .line 200
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 201
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    return v0

    .line 203
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .registers 2

    .line 216
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 217
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0

    .line 219
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method getNpnSelectedProtocol()[B
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOOBInline()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 309
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    .line 311
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getPort()I
    .registers 3

    .line 224
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 225
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    return v0

    .line 228
    :cond_d
    iget v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerPort:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    return v0

    .line 232
    :cond_13
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getPort()I

    move-result v0

    return v0
.end method

.method public getReceiveBufferSize()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 380
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 381
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result v0

    return v0

    .line 383
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getReceiveBufferSize()I

    move-result v0

    return v0
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .registers 2

    .line 208
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 209
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0

    .line 211
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getReuseAddress()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 431
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 432
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getReuseAddress()Z

    move-result v0

    return v0

    .line 434
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getReuseAddress()Z

    move-result v0

    return v0
.end method

.method public getSendBufferSize()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 361
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 362
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v0

    return v0

    .line 364
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getSendBufferSize()I

    move-result v0

    return v0
.end method

.method public getSoLinger()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 342
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 343
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoLinger()I

    move-result v0

    return v0

    .line 345
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getSoLinger()I

    move-result v0

    return v0
.end method

.method public final getSoTimeout()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 271
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 272
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    return v0

    .line 274
    :cond_d
    iget v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->readTimeoutMilliseconds:I

    return v0
.end method

.method getSoWriteTimeout()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getTcpNoDelay()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 325
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 326
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTcpNoDelay()Z

    move-result v0

    return v0

    .line 328
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getTcpNoDelay()Z

    move-result v0

    return v0
.end method

.method abstract getTlsUnique()[B
.end method

.method public getTrafficClass()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 414
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 415
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTrafficClass()I

    move-result v0

    return v0

    .line 417
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getTrafficClass()I

    move-result v0

    return v0
.end method

.method public isBound()Z
    .registers 2

    .line 465
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 466
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    return v0

    .line 468
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isBound()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .registers 2

    .line 473
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 474
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    return v0

    .line 476
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .registers 2

    .line 457
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 458
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    return v0

    .line 460
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isInputShutdown()Z
    .registers 2

    .line 481
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 482
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    return v0

    .line 484
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isInputShutdown()Z

    move-result v0

    return v0
.end method

.method public isOutputShutdown()Z
    .registers 2

    .line 489
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 490
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    return v0

    .line 492
    :cond_d
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isOutputShutdown()Z

    move-result v0

    return v0
.end method

.method final notifyHandshakeCompletedListeners()V
    .registers 6

    .line 591
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->listeners:Ljava/util/List;

    if-eqz v0, :cond_36

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_36

    .line 593
    new-instance v0, Ljavax/net/ssl/HandshakeCompletedEvent;

    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getActiveSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljavax/net/ssl/HandshakeCompletedEvent;-><init>(Ljavax/net/ssl/SSLSocket;Ljavax/net/ssl/SSLSession;)V

    .line 594
    iget-object v1, p0, Lorg/conscrypt/AbstractConscryptSocket;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/HandshakeCompletedListener;

    .line 596
    :try_start_25
    invoke-interface {v2, v0}, Ljavax/net/ssl/HandshakeCompletedListener;->handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_19

    :catch_29
    move-exception v2

    .line 603
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 604
    invoke-virtual {v3}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v4

    invoke-interface {v4, v3, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_19

    :cond_36
    return-void
.end method

.method final peerInfoProvider()Lorg/conscrypt/PeerInfoProvider;
    .registers 2

    .line 579
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerInfoProvider:Lorg/conscrypt/PeerInfoProvider;

    return-object v0
.end method

.method public removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .registers 4

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "Provided listener is null"

    .line 243
    invoke-static {v0, v1}, Lorg/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 244
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    return-void

    .line 245
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Provided listener is not registered"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final sendUrgentData(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    new-instance p1, Ljava/net/SocketException;

    const-string v0, "Method sendUrgentData() is not supported."

    invoke-direct {p1, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method abstract setAlpnProtocols([B)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method abstract setAlpnProtocols([Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method abstract setApplicationProtocolSelector(Lorg/conscrypt/ApplicationProtocolSelector;)V
.end method

.method abstract setApplicationProtocolSelector(Lorg/conscrypt/ApplicationProtocolSelectorAdapter;)V
.end method

.method abstract setApplicationProtocols([Ljava/lang/String;)V
.end method

.method abstract setChannelIdEnabled(Z)V
.end method

.method abstract setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
.end method

.method setHandshakeTimeout(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 569
    new-instance p1, Ljava/net/SocketException;

    const-string v0, "Method setHandshakeTimeout() is not supported."

    invoke-direct {p1, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setHostname(Ljava/lang/String;)V
    .registers 2

    .line 529
    iput-object p1, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    return-void
.end method

.method public setKeepAlive(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 388
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 389
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setKeepAlive(Z)V

    goto :goto_f

    .line 391
    :cond_c
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setKeepAlive(Z)V

    :goto_f
    return-void
.end method

.method setNpnProtocols([B)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public final setOOBInline(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 284
    new-instance p1, Ljava/net/SocketException;

    const-string v0, "Method setOOBInline() is not supported."

    invoke-direct {p1, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPerformancePreferences(III)V
    .registers 5

    .line 497
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 498
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/Socket;->setPerformancePreferences(III)V

    goto :goto_f

    .line 500
    :cond_c
    invoke-super {p0, p1, p2, p3}, Ljavax/net/ssl/SSLSocket;->setPerformancePreferences(III)V

    :goto_f
    return-void
.end method

.method public setReceiveBufferSize(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 370
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 371
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    goto :goto_f

    .line 373
    :cond_c
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setReceiveBufferSize(I)V

    :goto_f
    return-void
.end method

.method public setReuseAddress(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 422
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 423
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReuseAddress(Z)V

    goto :goto_f

    .line 425
    :cond_c
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setReuseAddress(Z)V

    :goto_f
    return-void
.end method

.method public setSendBufferSize(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 351
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 352
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSendBufferSize(I)V

    goto :goto_f

    .line 354
    :cond_c
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setSendBufferSize(I)V

    :goto_f
    return-void
.end method

.method public setSoLinger(ZI)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 333
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 334
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1, p2}, Ljava/net/Socket;->setSoLinger(ZI)V

    goto :goto_f

    .line 336
    :cond_c
    invoke-super {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;->setSoLinger(ZI)V

    :goto_f
    return-void
.end method

.method public final setSoTimeout(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 260
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 261
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_11

    .line 263
    :cond_c
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 264
    iput p1, p0, Lorg/conscrypt/AbstractConscryptSocket;->readTimeoutMilliseconds:I

    :goto_11
    return-void
.end method

.method setSoWriteTimeout(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 554
    new-instance p1, Ljava/net/SocketException;

    const-string v0, "Method setSoWriteTimeout() is not supported."

    invoke-direct {p1, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTcpNoDelay(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 316
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 317
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    goto :goto_f

    .line 319
    :cond_c
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setTcpNoDelay(Z)V

    :goto_f
    return-void
.end method

.method public setTrafficClass(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 405
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 406
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTrafficClass(I)V

    goto :goto_f

    .line 408
    :cond_c
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setTrafficClass(I)V

    :goto_f
    return-void
.end method

.method abstract setUseSessionTickets(Z)V
.end method

.method public shutdownInput()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 440
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V

    goto :goto_f

    .line 442
    :cond_c
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->shutdownInput()V

    :goto_f
    return-void
.end method

.method public shutdownOutput()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 449
    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V

    goto :goto_f

    .line 451
    :cond_c
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->shutdownOutput()V

    :goto_f
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SSL socket over "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 507
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 508
    iget-object v1, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 510
    :cond_17
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    :goto_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
