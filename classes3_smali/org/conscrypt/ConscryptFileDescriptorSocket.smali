.class Lorg/conscrypt/ConscryptFileDescriptorSocket;
.super Lorg/conscrypt/OpenSSLSocketImpl;
.source "ConscryptFileDescriptorSocket.java"

# interfaces
.implements Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
.implements Lorg/conscrypt/SSLParametersImpl$AliasChooser;
.implements Lorg/conscrypt/SSLParametersImpl$PSKCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;,
        Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;
    }
.end annotation


# static fields
.field private static final DBG_STATE:Z = false


# instance fields
.field private final activeSession:Lorg/conscrypt/ActiveSession;

.field private channelIdPrivateKey:Lorg/conscrypt/OpenSSLKey;

.field private closedSession:Lorg/conscrypt/SessionSnapshot;

.field private final externalSession:Ljavax/net/ssl/SSLSession;

.field private final guard:Ljava/lang/Object;

.field private handshakeTimeoutMilliseconds:I

.field private is:Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;

.field private os:Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;

.field private final ssl:Lorg/conscrypt/NativeSsl;

.field private final sslParameters:Lorg/conscrypt/SSLParametersImpl;

.field private state:I

.field private writeTimeoutMilliseconds:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    const/4 p1, 0x0

    .line 67
    iput p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 93
    invoke-static {}, Lorg/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    move-result-object p2

    iput-object p2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    .line 109
    new-instance p2, Lorg/conscrypt/ExternalSession;

    new-instance p3, Lorg/conscrypt/ConscryptFileDescriptorSocket$1;

    invoke-direct {p3, p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket$1;-><init>(Lorg/conscrypt/ConscryptFileDescriptorSocket;)V

    invoke-direct {p2, p3}, Lorg/conscrypt/ExternalSession;-><init>(Lorg/conscrypt/ExternalSession$Provider;)V

    .line 110
    invoke-static {p2}, Lorg/conscrypt/Platform;->wrapSSLSession(Lorg/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object p2

    iput-object p2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->externalSession:Ljavax/net/ssl/SSLSession;

    .line 117
    iput p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    const/4 p1, -0x1

    .line 118
    iput p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    .line 147
    iput-object p5, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 148
    invoke-static {p5, p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->newSsl(Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptFileDescriptorSocket;)Lorg/conscrypt/NativeSsl;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 149
    new-instance p2, Lorg/conscrypt/ActiveSession;

    invoke-virtual {p5}, Lorg/conscrypt/SSLParametersImpl;->getSessionContext()Lorg/conscrypt/AbstractSessionContext;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lorg/conscrypt/ActiveSession;-><init>(Lorg/conscrypt/NativeSsl;Lorg/conscrypt/AbstractSessionContext;)V

    iput-object p2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lorg/conscrypt/ActiveSession;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILorg/conscrypt/SSLParametersImpl;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 67
    iput p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 93
    invoke-static {}, Lorg/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    move-result-object p2

    iput-object p2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    .line 109
    new-instance p2, Lorg/conscrypt/ExternalSession;

    new-instance v0, Lorg/conscrypt/ConscryptFileDescriptorSocket$1;

    invoke-direct {v0, p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket$1;-><init>(Lorg/conscrypt/ConscryptFileDescriptorSocket;)V

    invoke-direct {p2, v0}, Lorg/conscrypt/ExternalSession;-><init>(Lorg/conscrypt/ExternalSession$Provider;)V

    .line 110
    invoke-static {p2}, Lorg/conscrypt/Platform;->wrapSSLSession(Lorg/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object p2

    iput-object p2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->externalSession:Ljavax/net/ssl/SSLSession;

    .line 117
    iput p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    const/4 p1, -0x1

    .line 118
    iput p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    .line 131
    iput-object p3, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 132
    invoke-static {p3, p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->newSsl(Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptFileDescriptorSocket;)Lorg/conscrypt/NativeSsl;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 133
    new-instance p2, Lorg/conscrypt/ActiveSession;

    invoke-virtual {p3}, Lorg/conscrypt/SSLParametersImpl;->getSessionContext()Lorg/conscrypt/AbstractSessionContext;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lorg/conscrypt/ActiveSession;-><init>(Lorg/conscrypt/NativeSsl;Lorg/conscrypt/AbstractSessionContext;)V

    iput-object p2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lorg/conscrypt/ActiveSession;

    return-void
.end method

.method constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    const/4 p1, 0x0

    .line 67
    iput p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 93
    invoke-static {}, Lorg/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    move-result-object p2

    iput-object p2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    .line 109
    new-instance p2, Lorg/conscrypt/ExternalSession;

    new-instance p3, Lorg/conscrypt/ConscryptFileDescriptorSocket$1;

    invoke-direct {p3, p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket$1;-><init>(Lorg/conscrypt/ConscryptFileDescriptorSocket;)V

    invoke-direct {p2, p3}, Lorg/conscrypt/ExternalSession;-><init>(Lorg/conscrypt/ExternalSession$Provider;)V

    .line 110
    invoke-static {p2}, Lorg/conscrypt/Platform;->wrapSSLSession(Lorg/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object p2

    iput-object p2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->externalSession:Ljavax/net/ssl/SSLSession;

    .line 117
    iput p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    const/4 p1, -0x1

    .line 118
    iput p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    .line 155
    iput-object p5, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 156
    invoke-static {p5, p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->newSsl(Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptFileDescriptorSocket;)Lorg/conscrypt/NativeSsl;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 157
    new-instance p2, Lorg/conscrypt/ActiveSession;

    invoke-virtual {p5}, Lorg/conscrypt/SSLParametersImpl;->getSessionContext()Lorg/conscrypt/AbstractSessionContext;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lorg/conscrypt/ActiveSession;-><init>(Lorg/conscrypt/NativeSsl;Lorg/conscrypt/AbstractSessionContext;)V

    iput-object p2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lorg/conscrypt/ActiveSession;

    return-void
.end method

.method constructor <init>(Ljava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/InetAddress;I)V

    const/4 p1, 0x0

    .line 67
    iput p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 93
    invoke-static {}, Lorg/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    move-result-object p2

    iput-object p2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    .line 109
    new-instance p2, Lorg/conscrypt/ExternalSession;

    new-instance v0, Lorg/conscrypt/ConscryptFileDescriptorSocket$1;

    invoke-direct {v0, p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket$1;-><init>(Lorg/conscrypt/ConscryptFileDescriptorSocket;)V

    invoke-direct {p2, v0}, Lorg/conscrypt/ExternalSession;-><init>(Lorg/conscrypt/ExternalSession$Provider;)V

    .line 110
    invoke-static {p2}, Lorg/conscrypt/Platform;->wrapSSLSession(Lorg/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object p2

    iput-object p2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->externalSession:Ljavax/net/ssl/SSLSession;

    .line 117
    iput p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    const/4 p1, -0x1

    .line 118
    iput p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    .line 139
    iput-object p3, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 140
    invoke-static {p3, p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->newSsl(Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptFileDescriptorSocket;)Lorg/conscrypt/NativeSsl;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 141
    new-instance p2, Lorg/conscrypt/ActiveSession;

    invoke-virtual {p3}, Lorg/conscrypt/SSLParametersImpl;->getSessionContext()Lorg/conscrypt/AbstractSessionContext;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lorg/conscrypt/ActiveSession;-><init>(Lorg/conscrypt/NativeSsl;Lorg/conscrypt/AbstractSessionContext;)V

    iput-object p2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lorg/conscrypt/ActiveSession;

    return-void
.end method

.method constructor <init>(Ljava/net/Socket;Ljava/lang/String;IZLorg/conscrypt/SSLParametersImpl;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/Socket;Ljava/lang/String;IZ)V

    const/4 p1, 0x0

    .line 67
    iput p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 93
    invoke-static {}, Lorg/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    move-result-object p2

    iput-object p2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    .line 109
    new-instance p2, Lorg/conscrypt/ExternalSession;

    new-instance p3, Lorg/conscrypt/ConscryptFileDescriptorSocket$1;

    invoke-direct {p3, p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket$1;-><init>(Lorg/conscrypt/ConscryptFileDescriptorSocket;)V

    invoke-direct {p2, p3}, Lorg/conscrypt/ExternalSession;-><init>(Lorg/conscrypt/ExternalSession$Provider;)V

    .line 110
    invoke-static {p2}, Lorg/conscrypt/Platform;->wrapSSLSession(Lorg/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object p2

    iput-object p2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->externalSession:Ljavax/net/ssl/SSLSession;

    .line 117
    iput p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    const/4 p1, -0x1

    .line 118
    iput p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    .line 163
    iput-object p5, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 164
    invoke-static {p5, p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->newSsl(Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptFileDescriptorSocket;)Lorg/conscrypt/NativeSsl;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 165
    new-instance p2, Lorg/conscrypt/ActiveSession;

    invoke-virtual {p5}, Lorg/conscrypt/SSLParametersImpl;->getSessionContext()Lorg/conscrypt/AbstractSessionContext;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lorg/conscrypt/ActiveSession;-><init>(Lorg/conscrypt/NativeSsl;Lorg/conscrypt/AbstractSessionContext;)V

    iput-object p2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lorg/conscrypt/ActiveSession;

    return-void
.end method

.method constructor <init>(Lorg/conscrypt/SSLParametersImpl;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLSocketImpl;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 93
    invoke-static {}, Lorg/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    .line 109
    new-instance v1, Lorg/conscrypt/ExternalSession;

    new-instance v2, Lorg/conscrypt/ConscryptFileDescriptorSocket$1;

    invoke-direct {v2, p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket$1;-><init>(Lorg/conscrypt/ConscryptFileDescriptorSocket;)V

    invoke-direct {v1, v2}, Lorg/conscrypt/ExternalSession;-><init>(Lorg/conscrypt/ExternalSession$Provider;)V

    .line 110
    invoke-static {v1}, Lorg/conscrypt/Platform;->wrapSSLSession(Lorg/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v1

    iput-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->externalSession:Ljavax/net/ssl/SSLSession;

    .line 117
    iput v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    const/4 v0, -0x1

    .line 118
    iput v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    .line 123
    iput-object p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 124
    invoke-static {p1, p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->newSsl(Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptFileDescriptorSocket;)Lorg/conscrypt/NativeSsl;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 125
    new-instance v1, Lorg/conscrypt/ActiveSession;

    invoke-virtual {p1}, Lorg/conscrypt/SSLParametersImpl;->getSessionContext()Lorg/conscrypt/AbstractSessionContext;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lorg/conscrypt/ActiveSession;-><init>(Lorg/conscrypt/NativeSsl;Lorg/conscrypt/AbstractSessionContext;)V

    iput-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lorg/conscrypt/ActiveSession;

    return-void
.end method

.method static synthetic access$000(Lorg/conscrypt/ConscryptFileDescriptorSocket;)Lorg/conscrypt/ConscryptSession;
    .registers 1

    .line 61
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->provideSession()Lorg/conscrypt/ConscryptSession;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/conscrypt/ConscryptFileDescriptorSocket;)Lorg/conscrypt/NativeSsl;
    .registers 1

    .line 61
    iget-object p0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    return-object p0
.end method

.method static synthetic access$200(Lorg/conscrypt/ConscryptFileDescriptorSocket;)I
    .registers 1

    .line 61
    iget p0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    return p0
.end method

.method static synthetic access$300(Lorg/conscrypt/ConscryptFileDescriptorSocket;)I
    .registers 1

    .line 61
    iget p0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    return p0
.end method

.method static synthetic access$400(Lorg/conscrypt/ConscryptFileDescriptorSocket;)Lorg/conscrypt/ConscryptSession;
    .registers 1

    .line 61
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->provideHandshakeSession()Lorg/conscrypt/ConscryptSession;

    move-result-object p0

    return-object p0
.end method

.method private assertReadableOrWriteableState()V
    .registers 4

    .line 467
    iget v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_22

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    goto :goto_22

    .line 471
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_22
    :goto_22
    return-void
.end method

.method private clientSessionContext()Lorg/conscrypt/ClientSessionContext;
    .registers 2

    .line 1159
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getClientSessionContext()Lorg/conscrypt/ClientSessionContext;

    move-result-object v0

    return-object v0
.end method

.method private closeUnderlyingSocket()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1039
    invoke-super {p0}, Lorg/conscrypt/OpenSSLSocketImpl;->close()V

    return-void
.end method

.method private free()V
    .registers 2

    .line 1043
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lorg/conscrypt/NativeSsl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1044
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lorg/conscrypt/NativeSsl;->close()V

    .line 1045
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    invoke-static {v0}, Lorg/conscrypt/Platform;->closeGuardClose(Ljava/lang/Object;)V

    :cond_12
    return-void
.end method

.method private static newSsl(Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptFileDescriptorSocket;)Lorg/conscrypt/NativeSsl;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 170
    invoke-static {p0, p1, p1, p1}, Lorg/conscrypt/NativeSsl;->newInstance(Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;Lorg/conscrypt/SSLParametersImpl$AliasChooser;Lorg/conscrypt/SSLParametersImpl$PSKCallbacks;)Lorg/conscrypt/NativeSsl;

    move-result-object p0

    return-object p0
.end method

.method private provideHandshakeSession()Lorg/conscrypt/ConscryptSession;
    .registers 4

    .line 687
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 688
    :try_start_3
    iget v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_e

    const/4 v2, 0x5

    if-ge v1, v2, :cond_e

    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lorg/conscrypt/ActiveSession;

    goto :goto_12

    .line 689
    :cond_e
    invoke-static {}, Lorg/conscrypt/SSLNullSession;->getNullSession()Lorg/conscrypt/ConscryptSession;

    move-result-object v1

    :goto_12
    monitor-exit v0

    return-object v1

    :catchall_14
    move-exception v1

    .line 690
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private provideSession()Lorg/conscrypt/ConscryptSession;
    .registers 5

    .line 661
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 662
    :try_start_3
    iget v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_14

    .line 663
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->closedSession:Lorg/conscrypt/SessionSnapshot;

    if-eqz v1, :cond_e

    goto :goto_12

    :cond_e
    invoke-static {}, Lorg/conscrypt/SSLNullSession;->getNullSession()Lorg/conscrypt/ConscryptSession;

    move-result-object v1

    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_34

    return-object v1

    :cond_14
    const/4 v2, 0x5

    const/4 v3, 0x1

    if-lt v1, v2, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    if-nez v1, :cond_27

    .line 668
    :try_start_1d
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLSocketImpl;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 669
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->waitForHandshake()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_26} :catch_29
    .catchall {:try_start_1d .. :try_end_26} :catchall_34

    goto :goto_28

    :cond_27
    move v3, v1

    :goto_28
    move v1, v3

    .line 675
    :catch_29
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_34

    if-nez v1, :cond_31

    .line 680
    invoke-static {}, Lorg/conscrypt/SSLNullSession;->getNullSession()Lorg/conscrypt/ConscryptSession;

    move-result-object v0

    return-object v0

    .line 683
    :cond_31
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lorg/conscrypt/ActiveSession;

    return-object v0

    :catchall_34
    move-exception v1

    .line 675
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method private sessionContext()Lorg/conscrypt/AbstractSessionContext;
    .registers 2

    .line 1163
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getSessionContext()Lorg/conscrypt/AbstractSessionContext;

    move-result-object v0

    return-object v0
.end method

.method private shutdownAndFreeSslNative()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1023
    :try_start_0
    invoke-static {}, Lorg/conscrypt/Platform;->blockGuardOnNetwork()V

    .line 1024
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    iget-object v1, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-static {v1}, Lorg/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/conscrypt/NativeSsl;->shutdown(Ljava/io/FileDescriptor;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_17
    .catchall {:try_start_0 .. :try_end_e} :catchall_f

    goto :goto_17

    :catchall_f
    move-exception v0

    .line 1033
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->free()V

    .line 1034
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->closeUnderlyingSocket()V

    throw v0

    .line 1033
    :catch_17
    :goto_17
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->free()V

    .line 1034
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->closeUnderlyingSocket()V

    return-void
.end method

.method private transitionTo(I)V
    .registers 5

    const/16 v0, 0x8

    if-eq p1, v0, :cond_5

    goto :goto_1d

    .line 1169
    :cond_5
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v1}, Lorg/conscrypt/NativeSsl;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1d

    iget v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1d

    if-ge v1, v0, :cond_1d

    .line 1170
    new-instance v0, Lorg/conscrypt/SessionSnapshot;

    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lorg/conscrypt/ActiveSession;

    invoke-direct {v0, v1}, Lorg/conscrypt/SessionSnapshot;-><init>(Lorg/conscrypt/ConscryptSession;)V

    iput-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->closedSession:Lorg/conscrypt/SessionSnapshot;

    .line 1180
    :cond_1d
    :goto_1d
    iput p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    return-void
.end method

.method private waitForHandshake()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 475
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->startHandshake()V

    .line 477
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 478
    :goto_6
    :try_start_6
    iget v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_34

    const/4 v2, 0x5

    const/16 v3, 0x8

    if-eq v1, v2, :cond_28

    const/4 v2, 0x4

    if-eq v1, v2, :cond_28

    if-eq v1, v3, :cond_28

    .line 482
    :try_start_12
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_17} :catch_18
    .catchall {:try_start_12 .. :try_end_17} :catchall_34

    goto :goto_6

    :catch_18
    move-exception v1

    .line 484
    :try_start_19
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 485
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Interrupted waiting for handshake"

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_28
    if-eq v1, v3, :cond_2c

    .line 492
    monitor-exit v0

    return-void

    .line 490
    :cond_2c
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_34
    move-exception v1

    .line 492
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_19 .. :try_end_36} :catchall_34

    throw v1
.end method


# virtual methods
.method public final chooseClientAlias(Ljavax/net/ssl/X509KeyManager;[Ljavax/security/auth/x500/X500Principal;[Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1137
    invoke-interface {p1, p3, p2, p0}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final chooseClientPSKIdentity(Lorg/conscrypt/PSKKeyManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1149
    invoke-interface {p1, p2, p0}, Lorg/conscrypt/PSKKeyManager;->chooseClientKeyIdentity(Ljava/lang/String;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final chooseServerAlias(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 1131
    invoke-interface {p1, p2, v0, p0}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final chooseServerPSKIdentityHint(Lorg/conscrypt/PSKKeyManager;)Ljava/lang/String;
    .registers 2

    .line 1143
    invoke-interface {p1, p0}, Lorg/conscrypt/PSKKeyManager;->chooseServerKeyIdentityHint(Ljava/net/Socket;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final clientCertificateRequested([B[I[[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/conscrypt/NativeSsl;->chooseClientCertificate([B[I[[B)V

    return-void
.end method

.method public final clientPSKKeyRequested(Ljava/lang/String;[B[B)I
    .registers 5

    .line 321
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/conscrypt/NativeSsl;->clientPSKKeyRequested(Ljava/lang/String;[B[B)I

    move-result p1

    return p1
.end method

.method public final close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 959
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    if-nez v0, :cond_5

    return-void

    .line 965
    :cond_5
    monitor-enter v0

    .line 966
    :try_start_6
    iget v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_e

    .line 968
    monitor-exit v0

    return-void

    .line 972
    :cond_e
    invoke-direct {p0, v2}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    if-nez v1, :cond_20

    .line 978
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->free()V

    .line 979
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->closeUnderlyingSocket()V

    .line 981
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 982
    monitor-exit v0

    return-void

    :cond_20
    const/4 v2, 0x5

    if-eq v1, v2, :cond_32

    const/4 v2, 0x4

    if-eq v1, v2, :cond_32

    .line 990
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v1}, Lorg/conscrypt/NativeSsl;->interrupt()V

    .line 992
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 993
    monitor-exit v0

    return-void

    .line 996
    :cond_32
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 999
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->is:Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;

    .line 1000
    iget-object v2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->os:Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;

    .line 1001
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_6 .. :try_end_3c} :catchall_53

    if-nez v1, :cond_40

    if-eqz v2, :cond_45

    .line 1005
    :cond_40
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lorg/conscrypt/NativeSsl;->interrupt()V

    :cond_45
    if-eqz v1, :cond_4a

    .line 1012
    invoke-virtual {v1}, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->awaitPendingOps()V

    :cond_4a
    if-eqz v2, :cond_4f

    .line 1015
    invoke-virtual {v2}, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->awaitPendingOps()V

    .line 1018
    :cond_4f
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->shutdownAndFreeSslNative()V

    return-void

    :catchall_53
    move-exception v1

    .line 1001
    :try_start_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v1
.end method

.method exportKeyingMaterial(Ljava/lang/String;[BI)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 880
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 881
    :try_start_3
    iget v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_15

    const/16 v2, 0x8

    if-ne v1, v2, :cond_d

    goto :goto_15

    .line 884
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_18

    .line 885
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/conscrypt/NativeSsl;->exportKeyingMaterial(Ljava/lang/String;[BI)[B

    move-result-object p1

    return-object p1

    :cond_15
    :goto_15
    const/4 p1, 0x0

    .line 882
    :try_start_16
    monitor-exit v0

    return-object p1

    :catchall_18
    move-exception p1

    .line 884
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method protected final finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1068
    :try_start_0
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 1069
    invoke-static {v0}, Lorg/conscrypt/Platform;->closeGuardWarnIfOpen(Ljava/lang/Object;)V

    .line 1071
    :cond_7
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    if-eqz v0, :cond_16

    .line 1072
    monitor-enter v0
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_1a

    const/16 v1, 0x8

    .line 1073
    :try_start_e
    invoke-direct {p0, v1}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 1074
    monitor-exit v0

    goto :goto_16

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_13

    :try_start_15
    throw v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_1a

    .line 1077
    :cond_16
    :goto_16
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_1a
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method final getActiveSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .line 695
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lorg/conscrypt/ActiveSession;

    return-object v0
.end method

.method public final getApplicationProtocol()Ljava/lang/String;
    .registers 2

    .line 1105
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lorg/conscrypt/NativeSsl;->getApplicationProtocol()[B

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/SSLUtils;->toProtocolString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getApplicationProtocols()[Ljava/lang/String;
    .registers 2

    .line 1100
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getApplicationProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getChannelId()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 811
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->getUseClientMode()Z

    move-result v0

    if-nez v0, :cond_21

    .line 815
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 816
    :try_start_9
    iget v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_16

    .line 820
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_1e

    .line 821
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lorg/conscrypt/NativeSsl;->getTlsChannelId()[B

    move-result-object v0

    return-object v0

    .line 817
    :cond_16
    :try_start_16
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Channel ID is only available after handshake completes"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_1e
    move-exception v1

    .line 820
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_1e

    throw v1

    .line 812
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getEnableSessionCreation()Z
    .registers 2

    .line 715
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public final getEnabledCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 730
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getEnabledProtocols()[Ljava/lang/String;
    .registers 2

    .line 745
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getHandshakeApplicationProtocol()Ljava/lang/String;
    .registers 4

    .line 1110
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 1111
    :try_start_3
    iget v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_10

    const/4 v2, 0x5

    if-ge v1, v2, :cond_10

    .line 1112
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    monitor-exit v0

    return-object v1

    :catchall_13
    move-exception v1

    .line 1113
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public final getHandshakeSession()Ljavax/net/ssl/SSLSession;
    .registers 4

    .line 700
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 701
    :try_start_3
    iget v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1b

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1b

    .line 702
    new-instance v1, Lorg/conscrypt/ExternalSession;

    new-instance v2, Lorg/conscrypt/ConscryptFileDescriptorSocket$2;

    invoke-direct {v2, p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket$2;-><init>(Lorg/conscrypt/ConscryptFileDescriptorSocket;)V

    invoke-direct {v1, v2}, Lorg/conscrypt/ExternalSession;-><init>(Lorg/conscrypt/ExternalSession$Provider;)V

    invoke-static {v1}, Lorg/conscrypt/Platform;->wrapSSLSession(Lorg/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_1b
    const/4 v1, 0x0

    .line 709
    monitor-exit v0

    return-object v1

    :catchall_1e
    move-exception v1

    .line 710
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->checkOpen()V

    .line 423
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 424
    :try_start_6
    iget v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1e

    .line 428
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->is:Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;

    if-nez v1, :cond_17

    .line 429
    new-instance v1, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;

    invoke-direct {v1, p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;-><init>(Lorg/conscrypt/ConscryptFileDescriptorSocket;)V

    iput-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->is:Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;

    .line 432
    :cond_17
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->is:Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;

    .line 433
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_26

    .line 438
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->waitForHandshake()V

    return-object v1

    .line 425
    :cond_1e
    :try_start_1e
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Socket is closed."

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_26
    move-exception v1

    .line 433
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_26

    throw v1
.end method

.method public final getNeedClientAuth()Z
    .registers 2

    .line 911
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 444
    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->checkOpen()V

    .line 447
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 448
    :try_start_6
    iget v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1e

    .line 452
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->os:Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;

    if-nez v1, :cond_17

    .line 453
    new-instance v1, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;

    invoke-direct {v1, p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;-><init>(Lorg/conscrypt/ConscryptFileDescriptorSocket;)V

    iput-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->os:Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;

    .line 456
    :cond_17
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->os:Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;

    .line 457
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_26

    .line 462
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->waitForHandshake()V

    return-object v1

    .line 449
    :cond_1e
    :try_start_1e
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Socket is closed."

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_26
    move-exception v1

    .line 457
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_26

    throw v1
.end method

.method public final getPSKKey(Lorg/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .registers 4

    .line 1155
    invoke-interface {p1, p2, p3, p0}, Lorg/conscrypt/PSKKeyManager;->getKey(Ljava/lang/String;Ljava/lang/String;Ljava/net/Socket;)Ljavax/crypto/SecretKey;

    move-result-object p1

    return-object p1
.end method

.method public final getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .registers 3

    .line 1118
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    .line 1119
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-static {v0, v1, p0}, Lorg/conscrypt/Platform;->getSSLParameters(Ljavax/net/ssl/SSLParameters;Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/AbstractConscryptSocket;)V

    return-object v0
.end method

.method public final getSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .line 656
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->externalSession:Ljavax/net/ssl/SSLSession;

    return-object v0
.end method

.method public final getSoWriteTimeout()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 939
    iget v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    return v0
.end method

.method public final getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 725
    invoke-static {}, Lorg/conscrypt/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportedProtocols()[Ljava/lang/String;
    .registers 2

    .line 740
    invoke-static {}, Lorg/conscrypt/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getTlsUnique()[B
    .registers 2

    .line 875
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lorg/conscrypt/NativeSsl;->getTlsUnique()[B

    move-result-object v0

    return-object v0
.end method

.method public final getUseClientMode()Z
    .registers 2

    .line 890
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public final getWantClientAuth()Z
    .registers 2

    .line 906
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public final onNewSessionEstablished(J)V
    .registers 4

    .line 366
    :try_start_0
    invoke-static {p1, p2}, Lorg/conscrypt/NativeCrypto;->SSL_SESSION_up_ref(J)V

    .line 371
    new-instance v0, Lorg/conscrypt/NativeRef$SSL_SESSION;

    invoke-direct {v0, p1, p2}, Lorg/conscrypt/NativeRef$SSL_SESSION;-><init>(J)V

    .line 373
    iget-object p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lorg/conscrypt/ActiveSession;

    invoke-static {v0, p1}, Lorg/conscrypt/NativeSslSession;->newInstance(Lorg/conscrypt/NativeRef$SSL_SESSION;Lorg/conscrypt/ConscryptSession;)Lorg/conscrypt/NativeSslSession;

    move-result-object p1

    .line 376
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sessionContext()Lorg/conscrypt/AbstractSessionContext;

    move-result-object p2

    .line 377
    invoke-virtual {p2, p1}, Lorg/conscrypt/AbstractSessionContext;->cacheSession(Lorg/conscrypt/NativeSslSession;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_15

    :catch_15
    return-void
.end method

.method public final onSSLStateChange(II)V
    .registers 4

    const/16 p2, 0x20

    if-eq p1, p2, :cond_5

    return-void

    .line 341
    :cond_5
    iget-object p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter p1

    .line 342
    :try_start_8
    iget p2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    const/16 v0, 0x8

    if-ne p2, v0, :cond_10

    .line 344
    monitor-exit p1

    return-void

    :cond_10
    const/4 p2, 0x5

    .line 349
    invoke-direct {p0, p2}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 350
    monitor-exit p1
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_25

    .line 353
    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->notifyHandshakeCompletedListeners()V

    .line 355
    iget-object p2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter p2

    .line 357
    :try_start_1b
    iget-object p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 358
    monitor-exit p2

    return-void

    :catchall_22
    move-exception p1

    monitor-exit p2
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_22

    throw p1

    :catchall_25
    move-exception p2

    .line 350
    :try_start_26
    monitor-exit p1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p2
.end method

.method public final serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[B)I
    .registers 5

    .line 327
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/conscrypt/NativeSsl;->serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result p1

    return p1
.end method

.method public final serverSessionRequested([B)J
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final setApplicationProtocolSelector(Lorg/conscrypt/ApplicationProtocolSelector;)V
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_a

    .line 1085
    :cond_4
    new-instance v0, Lorg/conscrypt/ApplicationProtocolSelectorAdapter;

    invoke-direct {v0, p0, p1}, Lorg/conscrypt/ApplicationProtocolSelectorAdapter;-><init>(Ljavax/net/ssl/SSLSocket;Lorg/conscrypt/ApplicationProtocolSelector;)V

    move-object p1, v0

    .line 1084
    :goto_a
    invoke-virtual {p0, p1}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->setApplicationProtocolSelector(Lorg/conscrypt/ApplicationProtocolSelectorAdapter;)V

    return-void
.end method

.method final setApplicationProtocolSelector(Lorg/conscrypt/ApplicationProtocolSelectorAdapter;)V
    .registers 3

    .line 1090
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/conscrypt/SSLParametersImpl;->setApplicationProtocolSelector(Lorg/conscrypt/ApplicationProtocolSelectorAdapter;)V

    return-void
.end method

.method final setApplicationProtocols([Ljava/lang/String;)V
    .registers 3

    .line 1095
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/conscrypt/SSLParametersImpl;->setApplicationProtocols([Ljava/lang/String;)V

    return-void
.end method

.method public final setChannelIdEnabled(Z)V
    .registers 4

    .line 785
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->getUseClientMode()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 789
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 790
    :try_start_9
    iget v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-nez v1, :cond_13

    .line 795
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_1b

    .line 796
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    iput-boolean p1, v0, Lorg/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    return-void

    .line 791
    :cond_13
    :try_start_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Could not enable/disable Channel ID after the initial handshake has begun."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1b
    move-exception p1

    .line 795
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1b

    throw p1

    .line 786
    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Client mode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
    .registers 5

    .line 838
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 842
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 843
    :try_start_9
    iget v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-nez v1, :cond_3c

    .line 848
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_44

    const/4 v0, 0x0

    if-nez p1, :cond_19

    .line 851
    iget-object p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    const/4 v1, 0x0

    iput-boolean v1, p1, Lorg/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    .line 852
    iput-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->channelIdPrivateKey:Lorg/conscrypt/OpenSSLKey;

    goto :goto_3b

    .line 854
    :cond_19
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    .line 857
    :try_start_1e
    instance-of v1, p1, Ljava/security/interfaces/ECKey;

    if-eqz v1, :cond_29

    .line 858
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/ECKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    :cond_29
    if-nez v0, :cond_35

    const-string v0, "prime256v1"

    .line 863
    invoke-static {v0}, Lorg/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lorg/conscrypt/OpenSSLECGroupContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLECGroupContext;->getECParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 866
    :cond_35
    invoke-static {p1, v0}, Lorg/conscrypt/OpenSSLKey;->fromECPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/spec/ECParameterSpec;)Lorg/conscrypt/OpenSSLKey;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->channelIdPrivateKey:Lorg/conscrypt/OpenSSLKey;
    :try_end_3b
    .catch Ljava/security/InvalidKeyException; {:try_start_1e .. :try_end_3b} :catch_3b

    :catch_3b
    :goto_3b
    return-void

    .line 844
    :cond_3c
    :try_start_3c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Could not change Channel ID private key after the initial handshake has begun."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_44
    move-exception p1

    .line 848
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_44

    throw p1

    .line 839
    :cond_47
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Server mode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setEnableSessionCreation(Z)V
    .registers 3

    .line 720
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/conscrypt/SSLParametersImpl;->setEnableSessionCreation(Z)V

    return-void
.end method

.method public final setEnabledCipherSuites([Ljava/lang/String;)V
    .registers 3

    .line 735
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/conscrypt/SSLParametersImpl;->setEnabledCipherSuites([Ljava/lang/String;)V

    return-void
.end method

.method public final setEnabledProtocols([Ljava/lang/String;)V
    .registers 3

    .line 750
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/conscrypt/SSLParametersImpl;->setEnabledProtocols([Ljava/lang/String;)V

    return-void
.end method

.method public final setHandshakeTimeout(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 948
    iput p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    return-void
.end method

.method public final setHostname(Ljava/lang/String;)V
    .registers 4

    .line 771
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v0, v1}, Lorg/conscrypt/SSLParametersImpl;->setUseSni(Z)V

    .line 772
    invoke-super {p0, p1}, Lorg/conscrypt/OpenSSLSocketImpl;->setHostname(Ljava/lang/String;)V

    return-void
.end method

.method public final setNeedClientAuth(Z)V
    .registers 3

    .line 916
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/conscrypt/SSLParametersImpl;->setNeedClientAuth(Z)V

    return-void
.end method

.method public final setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .registers 3

    .line 1125
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 1126
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-static {p1, v0, p0}, Lorg/conscrypt/Platform;->setSSLParameters(Ljavax/net/ssl/SSLParameters;Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/AbstractConscryptSocket;)V

    return-void
.end method

.method public final setSoWriteTimeout(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 929
    iput p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    int-to-long v0, p1

    .line 931
    invoke-static {p0, v0, v1}, Lorg/conscrypt/Platform;->setSocketWriteTimeout(Ljava/net/Socket;J)V

    return-void
.end method

.method public final setUseClientMode(Z)V
    .registers 4

    .line 895
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 896
    :try_start_3
    iget v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-nez v1, :cond_e

    .line 900
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_16

    .line 901
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    return-void

    .line 897
    :cond_e
    :try_start_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not change the mode after the initial handshake has begun."

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_16
    move-exception p1

    .line 900
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw p1
.end method

.method public final setUseSessionTickets(Z)V
    .registers 3

    .line 760
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/conscrypt/SSLParametersImpl;->setUseSessionTickets(Z)V

    return-void
.end method

.method public final setWantClientAuth(Z)V
    .registers 3

    .line 921
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/conscrypt/SSLParametersImpl;->setWantClientAuth(Z)V

    return-void
.end method

.method public final startHandshake()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->checkOpen()V

    .line 183
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 184
    :try_start_6
    iget v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-nez v1, :cond_164

    const/4 v1, 0x2

    .line 185
    invoke-direct {p0, v1}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 191
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_166

    const/4 v0, 0x1

    const/16 v2, 0x8

    .line 195
    :try_start_12
    iget-object v3, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    const-string v4, "close"

    invoke-static {v3, v4}, Lorg/conscrypt/Platform;->closeGuardOpen(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iget-object v3, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLSocketImpl;->getHostname()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->channelIdPrivateKey:Lorg/conscrypt/OpenSSLKey;

    invoke-virtual {v3, v4, v5}, Lorg/conscrypt/NativeSsl;->initialize(Ljava/lang/String;Lorg/conscrypt/OpenSSLKey;)V

    .line 202
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->getUseClientMode()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 203
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->clientSessionContext()Lorg/conscrypt/ClientSessionContext;

    move-result-object v3

    .line 204
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLSocketImpl;->getHostnameOrIP()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getPort()I

    move-result v5

    iget-object v6, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 203
    invoke-virtual {v3, v4, v5, v6}, Lorg/conscrypt/ClientSessionContext;->getCachedSession(Ljava/lang/String;ILorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/NativeSslSession;

    move-result-object v3

    if-eqz v3, :cond_43

    .line 206
    iget-object v4, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v3, v4}, Lorg/conscrypt/NativeSslSession;->offerToResume(Lorg/conscrypt/NativeSsl;)V

    .line 211
    :cond_43
    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getSoTimeout()I

    move-result v3

    .line 212
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->getSoWriteTimeout()I

    move-result v4

    .line 213
    iget v5, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    if-ltz v5, :cond_57

    .line 214
    invoke-virtual {p0, v5}, Lorg/conscrypt/AbstractConscryptSocket;->setSoTimeout(I)V

    .line 215
    iget v5, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    invoke-virtual {p0, v5}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->setSoWriteTimeout(I)V

    .line 218
    :cond_57
    iget-object v5, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v5
    :try_end_5a
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_12 .. :try_end_5a} :catch_13f
    .catchall {:try_start_12 .. :try_end_5a} :catchall_13d

    .line 219
    :try_start_5a
    iget v6, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-ne v6, v2, :cond_72

    .line 220
    monitor-exit v5
    :try_end_5f
    .catchall {:try_start_5a .. :try_end_5f} :catchall_13a

    .line 291
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v1

    .line 297
    :try_start_62
    invoke-direct {p0, v2}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 298
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 299
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_62 .. :try_end_6b} :catchall_6f

    .line 302
    :try_start_6b
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->shutdownAndFreeSslNative()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6e

    :catch_6e
    return-void

    :catchall_6f
    move-exception v0

    .line 299
    :try_start_70
    monitor-exit v1
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw v0

    .line 222
    :cond_72
    :try_start_72
    monitor-exit v5
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_13a

    const/4 v5, 0x0

    .line 225
    :try_start_74
    iget-object v6, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    iget-object v7, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-static {v7}, Lorg/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getSoTimeout()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/conscrypt/NativeSsl;->doHandshake(Ljava/io/FileDescriptor;I)V

    .line 228
    iget-object v6, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lorg/conscrypt/ActiveSession;

    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLSocketImpl;->getHostnameOrIP()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getPort()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/conscrypt/ActiveSession;->onPeerCertificateAvailable(Ljava/lang/String;I)V
    :try_end_90
    .catch Ljava/security/cert/CertificateException; {:try_start_74 .. :try_end_90} :catch_12c
    .catch Ljavax/net/ssl/SSLException; {:try_start_74 .. :try_end_90} :catch_ee
    .catchall {:try_start_74 .. :try_end_90} :catchall_13d

    .line 259
    :try_start_90
    iget-object v6, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v6
    :try_end_93
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_90 .. :try_end_93} :catch_13f
    .catchall {:try_start_90 .. :try_end_93} :catchall_13d

    .line 260
    :try_start_93
    iget v7, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-ne v7, v2, :cond_ab

    .line 261
    monitor-exit v6
    :try_end_98
    .catchall {:try_start_93 .. :try_end_98} :catchall_eb

    .line 291
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v1

    .line 297
    :try_start_9b
    invoke-direct {p0, v2}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 298
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 299
    monitor-exit v1
    :try_end_a4
    .catchall {:try_start_9b .. :try_end_a4} :catchall_a8

    .line 302
    :try_start_a4
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->shutdownAndFreeSslNative()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_a7

    :catch_a7
    return-void

    :catchall_a8
    move-exception v0

    .line 299
    :try_start_a9
    monitor-exit v1
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a8

    throw v0

    .line 263
    :cond_ab
    :try_start_ab
    monitor-exit v6
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_eb

    .line 266
    :try_start_ac
    iget v6, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    if-ltz v6, :cond_b6

    .line 267
    invoke-virtual {p0, v3}, Lorg/conscrypt/AbstractConscryptSocket;->setSoTimeout(I)V

    .line 268
    invoke-virtual {p0, v4}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->setSoWriteTimeout(I)V

    .line 271
    :cond_b6
    iget-object v3, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v3
    :try_end_b9
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_ac .. :try_end_b9} :catch_13f
    .catchall {:try_start_ac .. :try_end_b9} :catchall_13d

    .line 272
    :try_start_b9
    iget v4, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-ne v4, v2, :cond_be

    goto :goto_bf

    :cond_be
    const/4 v0, 0x0

    :goto_bf
    if-ne v4, v1, :cond_c6

    const/4 v1, 0x4

    .line 275
    invoke-direct {p0, v1}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    goto :goto_ca

    :cond_c6
    const/4 v1, 0x5

    .line 277
    invoke-direct {p0, v1}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    :goto_ca
    if-nez v0, :cond_d1

    .line 283
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 285
    :cond_d1
    monitor-exit v3
    :try_end_d2
    .catchall {:try_start_b9 .. :try_end_d2} :catchall_e8

    if-eqz v0, :cond_e7

    .line 291
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 297
    :try_start_d7
    invoke-direct {p0, v2}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 298
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 299
    monitor-exit v0
    :try_end_e0
    .catchall {:try_start_d7 .. :try_end_e0} :catchall_e4

    .line 302
    :try_start_e0
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->shutdownAndFreeSslNative()V
    :try_end_e3
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e3} :catch_e7

    goto :goto_e7

    :catchall_e4
    move-exception v1

    .line 299
    :try_start_e5
    monitor-exit v0
    :try_end_e6
    .catchall {:try_start_e5 .. :try_end_e6} :catchall_e4

    throw v1

    :catch_e7
    :cond_e7
    :goto_e7
    return-void

    :catchall_e8
    move-exception v1

    .line 285
    :try_start_e9
    monitor-exit v3
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_e8

    :try_start_ea
    throw v1
    :try_end_eb
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_ea .. :try_end_eb} :catch_13f
    .catchall {:try_start_ea .. :try_end_eb} :catchall_13d

    :catchall_eb
    move-exception v1

    .line 263
    :try_start_ec
    monitor-exit v6
    :try_end_ed
    .catchall {:try_start_ec .. :try_end_ed} :catchall_eb

    :try_start_ed
    throw v1

    :catch_ee
    move-exception v1

    .line 241
    iget-object v3, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v3
    :try_end_f2
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_ed .. :try_end_f2} :catch_13f
    .catchall {:try_start_ed .. :try_end_f2} :catchall_13d

    .line 242
    :try_start_f2
    iget v4, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    if-ne v4, v2, :cond_10a

    .line 243
    monitor-exit v3
    :try_end_f7
    .catchall {:try_start_f2 .. :try_end_f7} :catchall_129

    .line 291
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v1

    .line 297
    :try_start_fa
    invoke-direct {p0, v2}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 298
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 299
    monitor-exit v1
    :try_end_103
    .catchall {:try_start_fa .. :try_end_103} :catchall_107

    .line 302
    :try_start_103
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->shutdownAndFreeSslNative()V
    :try_end_106
    .catch Ljava/io/IOException; {:try_start_103 .. :try_end_106} :catch_106

    :catch_106
    return-void

    :catchall_107
    move-exception v0

    .line 299
    :try_start_108
    monitor-exit v1
    :try_end_109
    .catchall {:try_start_108 .. :try_end_109} :catchall_107

    throw v0

    .line 245
    :cond_10a
    :try_start_10a
    monitor-exit v3
    :try_end_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_129

    .line 248
    :try_start_10b
    invoke-virtual {v1}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "unexpected CCS"

    .line 250
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_128

    const-string v3, "ssl_unexpected_ccs: host=%s"

    new-array v4, v0, [Ljava/lang/Object;

    .line 252
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLSocketImpl;->getHostnameOrIP()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 253
    invoke-static {v3}, Lorg/conscrypt/Platform;->logEvent(Ljava/lang/String;)V

    .line 256
    :cond_128
    throw v1
    :try_end_129
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_10b .. :try_end_129} :catch_13f
    .catchall {:try_start_10b .. :try_end_129} :catchall_13d

    :catchall_129
    move-exception v1

    .line 245
    :try_start_12a
    monitor-exit v3
    :try_end_12b
    .catchall {:try_start_12a .. :try_end_12b} :catchall_129

    :try_start_12b
    throw v1

    :catch_12c
    move-exception v1

    .line 230
    new-instance v3, Ljavax/net/ssl/SSLHandshakeException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v3, v1}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 232
    throw v3
    :try_end_13a
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_12b .. :try_end_13a} :catch_13f
    .catchall {:try_start_12b .. :try_end_13a} :catchall_13d

    :catchall_13a
    move-exception v1

    .line 222
    :try_start_13b
    monitor-exit v5
    :try_end_13c
    .catchall {:try_start_13b .. :try_end_13c} :catchall_13a

    :try_start_13c
    throw v1
    :try_end_13d
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_13c .. :try_end_13d} :catch_13f
    .catchall {:try_start_13c .. :try_end_13d} :catchall_13d

    :catchall_13d
    move-exception v1

    goto :goto_14e

    :catch_13f
    move-exception v1

    .line 287
    :try_start_140
    new-instance v3, Ljavax/net/ssl/SSLHandshakeException;

    const-string v4, "Handshake failed"

    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLHandshakeException;

    throw v1
    :try_end_14e
    .catchall {:try_start_140 .. :try_end_14e} :catchall_13d

    :goto_14e
    if-eqz v0, :cond_163

    .line 291
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 297
    :try_start_153
    invoke-direct {p0, v2}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 298
    iget-object v2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 299
    monitor-exit v0
    :try_end_15c
    .catchall {:try_start_153 .. :try_end_15c} :catchall_160

    .line 302
    :try_start_15c
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->shutdownAndFreeSslNative()V
    :try_end_15f
    .catch Ljava/io/IOException; {:try_start_15c .. :try_end_15f} :catch_163

    goto :goto_163

    :catchall_160
    move-exception v1

    .line 299
    :try_start_161
    monitor-exit v0
    :try_end_162
    .catchall {:try_start_161 .. :try_end_162} :catchall_160

    throw v1

    .line 305
    :catch_163
    :cond_163
    :goto_163
    throw v1

    .line 189
    :cond_164
    :try_start_164
    monitor-exit v0

    return-void

    :catchall_166
    move-exception v1

    .line 191
    monitor-exit v0
    :try_end_168
    .catchall {:try_start_164 .. :try_end_168} :catchall_166

    throw v1
.end method

.method public final verifyCertificateChain([[BLjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p1, :cond_3f

    .line 393
    :try_start_2
    array-length v0, p1

    if-eqz v0, :cond_3f

    .line 396
    invoke-static {p1}, Lorg/conscrypt/SSLUtils;->decodeX509CertificateChain([[B)[Ljava/security/cert/X509Certificate;

    move-result-object p1

    .line 398
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 403
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lorg/conscrypt/ActiveSession;

    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLSocketImpl;->getHostnameOrIP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getPort()I

    move-result v3

    invoke-virtual {v1, v2, v3, p1}, Lorg/conscrypt/ActiveSession;->onPeerCertificatesReceived(Ljava/lang/String;I[Ljava/security/cert/X509Certificate;)V

    .line 405
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->getUseClientMode()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 406
    invoke-static {v0, p1, p2, p0}, Lorg/conscrypt/Platform;->checkServerTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/conscrypt/AbstractConscryptSocket;)V

    goto :goto_36

    :cond_28
    const/4 p2, 0x0

    .line 408
    aget-object p2, p1, p2

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p2

    invoke-interface {p2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p2

    .line 409
    invoke-static {v0, p1, p2, p0}, Lorg/conscrypt/Platform;->checkClientTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/conscrypt/AbstractConscryptSocket;)V

    :goto_36
    return-void

    .line 400
    :cond_37
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "No X.509 TrustManager"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 394
    :cond_3f
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "Peer sent no certificate"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_47
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_47} :catch_4e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_47} :catch_47

    :catch_47
    move-exception p1

    .line 414
    new-instance p2, Ljava/security/cert/CertificateException;

    invoke-direct {p2, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_4e
    move-exception p1

    .line 412
    throw p1
.end method
