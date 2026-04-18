.class final Lorg/conscrypt/ConscryptEngine;
.super Lorg/conscrypt/AbstractConscryptEngine;
.source "ConscryptEngine.java"

# interfaces
.implements Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
.implements Lorg/conscrypt/SSLParametersImpl$AliasChooser;
.implements Lorg/conscrypt/SSLParametersImpl$PSKCallbacks;


# static fields
.field private static final CLOSED_NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult;

.field private static final NEED_UNWRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

.field private static final NEED_UNWRAP_OK:Ljavax/net/ssl/SSLEngineResult;

.field private static final NEED_WRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

.field private static final NEED_WRAP_OK:Ljavax/net/ssl/SSLEngineResult;

.field private static defaultBufferAllocator:Lorg/conscrypt/BufferAllocator;


# instance fields
.field private activeSession:Lorg/conscrypt/ActiveSession;

.field private bufferAllocator:Lorg/conscrypt/BufferAllocator;

.field private channelIdPrivateKey:Lorg/conscrypt/OpenSSLKey;

.field private closedSession:Lorg/conscrypt/SessionSnapshot;

.field private final externalSession:Ljavax/net/ssl/SSLSession;

.field private handshakeFinished:Z

.field private handshakeListener:Lorg/conscrypt/HandshakeListener;

.field private lazyDirectBuffer:Ljava/nio/ByteBuffer;

.field private maxSealOverhead:I

.field private final networkBio:Lorg/conscrypt/NativeSsl$BioWrapper;

.field private peerHostname:Ljava/lang/String;

.field private final peerInfoProvider:Lorg/conscrypt/PeerInfoProvider;

.field private final singleDstBuffer:[Ljava/nio/ByteBuffer;

.field private final singleSrcBuffer:[Ljava/nio/ByteBuffer;

.field private final ssl:Lorg/conscrypt/NativeSsl;

.field private final sslParameters:Lorg/conscrypt/SSLParametersImpl;

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 103
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lorg/conscrypt/ConscryptEngine;->NEED_UNWRAP_OK:Ljavax/net/ssl/SSLEngineResult;

    .line 105
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v2, v3, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lorg/conscrypt/ConscryptEngine;->NEED_UNWRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    .line 107
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v2, v3, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lorg/conscrypt/ConscryptEngine;->NEED_WRAP_OK:Ljavax/net/ssl/SSLEngineResult;

    .line 108
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v2, v3, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lorg/conscrypt/ConscryptEngine;->NEED_WRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    .line 110
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v2, v3, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lorg/conscrypt/ConscryptEngine;->CLOSED_NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult;

    const/4 v0, 0x0

    .line 113
    sput-object v0, Lorg/conscrypt/ConscryptEngine;->defaultBufferAllocator:Lorg/conscrypt/BufferAllocator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILorg/conscrypt/SSLParametersImpl;)V
    .registers 6

    .line 187
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptEngine;-><init>()V

    .line 116
    sget-object v0, Lorg/conscrypt/ConscryptEngine;->defaultBufferAllocator:Lorg/conscrypt/BufferAllocator;

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngine;->bufferAllocator:Lorg/conscrypt/BufferAllocator;

    const/4 v0, 0x0

    .line 131
    iput v0, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    .line 158
    new-instance v0, Lorg/conscrypt/ExternalSession;

    new-instance v1, Lorg/conscrypt/ConscryptEngine$1;

    invoke-direct {v1, p0}, Lorg/conscrypt/ConscryptEngine$1;-><init>(Lorg/conscrypt/ConscryptEngine;)V

    invoke-direct {v0, v1}, Lorg/conscrypt/ExternalSession;-><init>(Lorg/conscrypt/ExternalSession$Provider;)V

    .line 159
    invoke-static {v0}, Lorg/conscrypt/Platform;->wrapSSLSession(Lorg/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngine;->externalSession:Ljavax/net/ssl/SSLSession;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/nio/ByteBuffer;

    .line 176
    iput-object v1, p0, Lorg/conscrypt/ConscryptEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    .line 177
    iput-object v0, p0, Lorg/conscrypt/ConscryptEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    .line 188
    iput-object p3, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 189
    invoke-static {p1, p2}, Lorg/conscrypt/PeerInfoProvider;->forHostAndPort(Ljava/lang/String;I)Lorg/conscrypt/PeerInfoProvider;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/ConscryptEngine;->peerInfoProvider:Lorg/conscrypt/PeerInfoProvider;

    .line 190
    invoke-static {p3, p0}, Lorg/conscrypt/ConscryptEngine;->newSsl(Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptEngine;)Lorg/conscrypt/NativeSsl;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    .line 191
    invoke-virtual {p1}, Lorg/conscrypt/NativeSsl;->newBio()Lorg/conscrypt/NativeSsl$BioWrapper;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/ConscryptEngine;->networkBio:Lorg/conscrypt/NativeSsl$BioWrapper;

    return-void
.end method

.method constructor <init>(Lorg/conscrypt/SSLParametersImpl;)V
    .registers 4

    .line 180
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptEngine;-><init>()V

    .line 116
    sget-object v0, Lorg/conscrypt/ConscryptEngine;->defaultBufferAllocator:Lorg/conscrypt/BufferAllocator;

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngine;->bufferAllocator:Lorg/conscrypt/BufferAllocator;

    const/4 v0, 0x0

    .line 131
    iput v0, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    .line 158
    new-instance v0, Lorg/conscrypt/ExternalSession;

    new-instance v1, Lorg/conscrypt/ConscryptEngine$1;

    invoke-direct {v1, p0}, Lorg/conscrypt/ConscryptEngine$1;-><init>(Lorg/conscrypt/ConscryptEngine;)V

    invoke-direct {v0, v1}, Lorg/conscrypt/ExternalSession;-><init>(Lorg/conscrypt/ExternalSession$Provider;)V

    .line 159
    invoke-static {v0}, Lorg/conscrypt/Platform;->wrapSSLSession(Lorg/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngine;->externalSession:Ljavax/net/ssl/SSLSession;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/nio/ByteBuffer;

    .line 176
    iput-object v1, p0, Lorg/conscrypt/ConscryptEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    .line 177
    iput-object v0, p0, Lorg/conscrypt/ConscryptEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    .line 181
    iput-object p1, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 182
    invoke-static {}, Lorg/conscrypt/PeerInfoProvider;->nullProvider()Lorg/conscrypt/PeerInfoProvider;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngine;->peerInfoProvider:Lorg/conscrypt/PeerInfoProvider;

    .line 183
    invoke-static {p1, p0}, Lorg/conscrypt/ConscryptEngine;->newSsl(Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptEngine;)Lorg/conscrypt/NativeSsl;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    .line 184
    invoke-virtual {p1}, Lorg/conscrypt/NativeSsl;->newBio()Lorg/conscrypt/NativeSsl$BioWrapper;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/ConscryptEngine;->networkBio:Lorg/conscrypt/NativeSsl$BioWrapper;

    return-void
.end method

.method constructor <init>(Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/PeerInfoProvider;)V
    .registers 5

    .line 194
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptEngine;-><init>()V

    .line 116
    sget-object v0, Lorg/conscrypt/ConscryptEngine;->defaultBufferAllocator:Lorg/conscrypt/BufferAllocator;

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngine;->bufferAllocator:Lorg/conscrypt/BufferAllocator;

    const/4 v0, 0x0

    .line 131
    iput v0, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    .line 158
    new-instance v0, Lorg/conscrypt/ExternalSession;

    new-instance v1, Lorg/conscrypt/ConscryptEngine$1;

    invoke-direct {v1, p0}, Lorg/conscrypt/ConscryptEngine$1;-><init>(Lorg/conscrypt/ConscryptEngine;)V

    invoke-direct {v0, v1}, Lorg/conscrypt/ExternalSession;-><init>(Lorg/conscrypt/ExternalSession$Provider;)V

    .line 159
    invoke-static {v0}, Lorg/conscrypt/Platform;->wrapSSLSession(Lorg/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngine;->externalSession:Ljavax/net/ssl/SSLSession;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/nio/ByteBuffer;

    .line 176
    iput-object v1, p0, Lorg/conscrypt/ConscryptEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    .line 177
    iput-object v0, p0, Lorg/conscrypt/ConscryptEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    .line 195
    iput-object p1, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    const-string v0, "peerInfoProvider"

    .line 196
    invoke-static {p2, v0}, Lorg/conscrypt/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/conscrypt/PeerInfoProvider;

    iput-object p2, p0, Lorg/conscrypt/ConscryptEngine;->peerInfoProvider:Lorg/conscrypt/PeerInfoProvider;

    .line 197
    invoke-static {p1, p0}, Lorg/conscrypt/ConscryptEngine;->newSsl(Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptEngine;)Lorg/conscrypt/NativeSsl;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    .line 198
    invoke-virtual {p1}, Lorg/conscrypt/NativeSsl;->newBio()Lorg/conscrypt/NativeSsl$BioWrapper;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/ConscryptEngine;->networkBio:Lorg/conscrypt/NativeSsl$BioWrapper;

    return-void
.end method

.method static synthetic access$000(Lorg/conscrypt/ConscryptEngine;)Lorg/conscrypt/ConscryptSession;
    .registers 1

    .line 100
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->provideSession()Lorg/conscrypt/ConscryptSession;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/conscrypt/ConscryptEngine;)Lorg/conscrypt/ConscryptSession;
    .registers 1

    .line 100
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->provideHandshakeSession()Lorg/conscrypt/ConscryptSession;

    move-result-object p0

    return-object p0
.end method

.method private beginHandshakeInternal()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 403
    iget v0, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    if-eqz v0, :cond_7e

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    const/4 v1, 0x6

    if-eq v0, v1, :cond_12

    const/4 v1, 0x7

    if-eq v0, v1, :cond_12

    const/16 v1, 0x8

    if-eq v0, v1, :cond_12

    return-void

    .line 414
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Engine has already been closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    const/4 v0, 0x2

    .line 420
    invoke-direct {p0, v0}, Lorg/conscrypt/ConscryptEngine;->transitionTo(I)V

    .line 425
    :try_start_1e
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->getHostname()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/conscrypt/ConscryptEngine;->channelIdPrivateKey:Lorg/conscrypt/OpenSSLKey;

    invoke-virtual {v0, v2, v3}, Lorg/conscrypt/NativeSsl;->initialize(Ljava/lang/String;Lorg/conscrypt/OpenSSLKey;)V

    .line 429
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 430
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->clientSessionContext()Lorg/conscrypt/ClientSessionContext;

    move-result-object v0

    .line 431
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->getHostname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->getPeerPort()I

    move-result v3

    iget-object v4, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 430
    invoke-virtual {v0, v2, v3, v4}, Lorg/conscrypt/ClientSessionContext;->getCachedSession(Ljava/lang/String;ILorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/NativeSslSession;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 433
    iget-object v2, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0, v2}, Lorg/conscrypt/NativeSslSession;->offerToResume(Lorg/conscrypt/NativeSsl;)V

    .line 437
    :cond_48
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lorg/conscrypt/NativeSsl;->getMaxSealOverhead()I

    move-result v0

    iput v0, p0, Lorg/conscrypt/ConscryptEngine;->maxSealOverhead:I

    .line 438
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_53} :catch_56
    .catchall {:try_start_1e .. :try_end_53} :catchall_54

    return-void

    :catchall_54
    move-exception v0

    goto :goto_7a

    :catch_56
    move-exception v0

    .line 442
    :try_start_57
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unexpected CCS"

    .line 444
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_75

    const-string v2, "ssl_unexpected_ccs: host=%s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 445
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 446
    invoke-static {v1}, Lorg/conscrypt/Platform;->logEvent(Ljava/lang/String;)V

    .line 448
    :cond_75
    invoke-static {v0}, Lorg/conscrypt/SSLUtils;->toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;

    move-result-object v0

    throw v0
    :try_end_7a
    .catchall {:try_start_57 .. :try_end_7a} :catchall_54

    .line 451
    :goto_7a
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->closeAndFreeResources()V

    throw v0

    .line 405
    :cond_7e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client/server mode must be set before handshake"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static calcDstsLength([Ljava/nio/ByteBuffer;II)I
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 940
    :goto_3
    array-length v3, p0

    if-ge v1, v3, :cond_30

    .line 941
    aget-object v3, p0, v1

    if-eqz v3, :cond_c

    const/4 v4, 0x1

    goto :goto_d

    :cond_c
    const/4 v4, 0x0

    .line 942
    :goto_d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "dsts[%d] is null"

    invoke-static {v4, v6, v5}, Lorg/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 943
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v4

    if-nez v4, :cond_2a

    if-lt v1, p1, :cond_27

    add-int v4, p1, p2

    if-ge v1, v4, :cond_27

    .line 947
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    add-int/2addr v2, v3

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 944
    :cond_2a
    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0

    :cond_30
    return v2
.end method

.method private static calcSrcsLength([Ljava/nio/ByteBuffer;II)J
    .registers 7

    const-wide/16 v0, 0x0

    :goto_2
    if-ge p1, p2, :cond_2d

    .line 956
    aget-object v2, p0, p1

    if-eqz v2, :cond_11

    .line 960
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 958
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "srcs["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] is null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2d
    return-wide v0
.end method

.method private clientSessionContext()Lorg/conscrypt/ClientSessionContext;
    .registers 2

    .line 1797
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getClientSessionContext()Lorg/conscrypt/ClientSessionContext;

    move-result-object v0

    return-object v0
.end method

.method private closeAll()V
    .registers 1

    .line 1347
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->closeOutbound()V

    .line 1348
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->closeInbound()V

    return-void
.end method

.method private closeAndFreeResources()V
    .registers 2

    const/16 v0, 0x8

    .line 1666
    invoke-direct {p0, v0}, Lorg/conscrypt/ConscryptEngine;->transitionTo(I)V

    .line 1667
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lorg/conscrypt/NativeSsl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1668
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lorg/conscrypt/NativeSsl;->close()V

    .line 1669
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->networkBio:Lorg/conscrypt/NativeSsl$BioWrapper;

    invoke-virtual {v0}, Lorg/conscrypt/NativeSsl$BioWrapper;->close()V

    :cond_17
    return-void
.end method

.method private convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;
    .registers 3

    .line 1134
    instance-of v0, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lorg/conscrypt/ConscryptEngine;->handshakeFinished:Z

    if-nez v0, :cond_9

    goto :goto_e

    .line 1137
    :cond_9
    invoke-static {p1}, Lorg/conscrypt/SSLUtils;->toSSLException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object p1

    return-object p1

    .line 1135
    :cond_e
    :goto_e
    invoke-static {p1}, Lorg/conscrypt/SSLUtils;->toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;

    move-result-object p1

    return-object p1
.end method

.method private directByteBufferAddress(Ljava/nio/ByteBuffer;I)J
    .registers 5

    .line 1215
    invoke-static {p1}, Lorg/conscrypt/NativeCrypto;->getDirectBufferAddress(Ljava/nio/Buffer;)J

    move-result-wide v0

    int-to-long p1, p2

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private finishHandshake()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1004
    iput-boolean v0, p0, Lorg/conscrypt/ConscryptEngine;->handshakeFinished:Z

    .line 1006
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->handshakeListener:Lorg/conscrypt/HandshakeListener;

    if-eqz v0, :cond_a

    .line 1007
    invoke-virtual {v0}, Lorg/conscrypt/HandshakeListener;->onHandshakeFinished()V

    :cond_a
    return-void
.end method

.method private freeIfDone()V
    .registers 2

    .line 1352
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->isInboundDone()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->isOutboundDone()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1353
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->closeAndFreeResources()V

    :cond_f
    return-void
.end method

.method static getDefaultBufferAllocator()Lorg/conscrypt/BufferAllocator;
    .registers 1

    .line 222
    sget-object v0, Lorg/conscrypt/ConscryptEngine;->defaultBufferAllocator:Lorg/conscrypt/BufferAllocator;

    return-object v0
.end method

.method private getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;
    .registers 3

    .line 1336
    iget v0, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_f

    const/4 v1, 0x7

    if-eq v0, v1, :cond_f

    const/16 v1, 0x8

    if-eq v0, v1, :cond_f

    .line 1342
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    return-object v0

    .line 1340
    :cond_f
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    return-object v0
.end method

.method private getHandshakeStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .registers 3

    .line 1332
    iget-boolean v0, p0, Lorg/conscrypt/ConscryptEngine;->handshakeFinished:Z

    if-nez v0, :cond_9

    invoke-static {p1}, Lorg/conscrypt/ConscryptEngine;->pendingStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    goto :goto_b

    :cond_9
    sget-object p1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    :goto_b
    return-object p1
.end method

.method private getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .registers 4

    .line 539
    iget-boolean v0, p0, Lorg/conscrypt/ConscryptEngine;->handshakeFinished:Z

    if-eqz v0, :cond_7

    .line 540
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0

    .line 542
    :cond_7
    iget v0, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    packed-switch v0, :pswitch_data_34

    .line 558
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected engine state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    :pswitch_25  #0x3
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0

    .line 544
    :pswitch_28  #0x2
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->pendingOutboundEncryptedBytes()I

    move-result v0

    invoke-static {v0}, Lorg/conscrypt/ConscryptEngine;->pendingStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    return-object v0

    .line 554
    :pswitch_31  #0x0, 0x1, 0x4, 0x5, 0x6, 0x7, 0x8
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_31  #00000000
        :pswitch_31  #00000001
        :pswitch_28  #00000002
        :pswitch_25  #00000003
        :pswitch_31  #00000004
        :pswitch_31  #00000005
        :pswitch_31  #00000006
        :pswitch_31  #00000007
        :pswitch_31  #00000008
    .end packed-switch
.end method

.method private getOrCreateLazyDirectBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    .line 1206
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->lazyDirectBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_12

    const/16 v0, 0x4000

    const/16 v1, 0x4145

    .line 1208
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1207
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngine;->lazyDirectBuffer:Ljava/nio/ByteBuffer;

    .line 1210
    :cond_12
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->lazyDirectBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1211
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->lazyDirectBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 970
    :try_start_0
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lorg/conscrypt/NativeSsl;->doHandshake()I

    move-result v0
    :try_end_6
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_6} :catch_32
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_2b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_22

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1f

    .line 994
    :try_start_c
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->activeSession:Lorg/conscrypt/ActiveSession;

    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->getPeerPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/conscrypt/ActiveSession;->onPeerCertificateAvailable(Ljava/lang/String;I)V

    .line 996
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->finishHandshake()V

    .line 997
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1e} :catch_2b

    return-object v0

    .line 975
    :cond_1f
    :try_start_1f
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0

    .line 973
    :cond_22
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->pendingOutboundEncryptedBytes()I

    move-result v0

    invoke-static {v0}, Lorg/conscrypt/ConscryptEngine;->pendingStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0
    :try_end_2a
    .catch Ljavax/net/ssl/SSLException; {:try_start_1f .. :try_end_2a} :catch_32
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_2a} :catch_2d
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2a} :catch_2b

    return-object v0

    :catch_2b
    move-exception v0

    goto :goto_37

    :catch_2d
    move-exception v0

    .line 987
    :try_start_2e
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->sendSSLShutdown()V

    .line 988
    throw v0

    :catch_32
    move-exception v0

    .line 984
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->sendSSLShutdown()V

    .line 985
    throw v0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_37} :catch_2b

    .line 999
    :goto_37
    invoke-static {v0}, Lorg/conscrypt/SSLUtils;->toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;

    move-result-object v0

    throw v0
.end method

.method private isHandshakeStarted()Z
    .registers 3

    .line 355
    iget v0, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1322
    iget-boolean v0, p0, Lorg/conscrypt/ConscryptEngine;->handshakeFinished:Z

    if-nez v0, :cond_c

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_c

    .line 1325
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    :cond_c
    return-object p1
.end method

.method private newResult(IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1366
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    .line 1367
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p3, v2, :cond_b

    goto :goto_f

    :cond_b
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p3

    :goto_f
    invoke-direct {p0, p3}, Lorg/conscrypt/ConscryptEngine;->mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p3

    invoke-direct {v0, v1, p3, p1, p2}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object v0
.end method

.method private static newSsl(Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptEngine;)Lorg/conscrypt/NativeSsl;
    .registers 2

    .line 203
    :try_start_0
    invoke-static {p0, p1, p1, p1}, Lorg/conscrypt/NativeSsl;->newInstance(Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;Lorg/conscrypt/SSLParametersImpl$AliasChooser;Lorg/conscrypt/SSLParametersImpl$PSKCallbacks;)Lorg/conscrypt/NativeSsl;

    move-result-object p0
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 205
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private newSslExceptionWithMessage(Ljava/lang/String;)Ljavax/net/ssl/SSLException;
    .registers 3

    .line 1358
    iget-boolean v0, p0, Lorg/conscrypt/ConscryptEngine;->handshakeFinished:Z

    if-nez v0, :cond_a

    .line 1359
    new-instance v0, Ljavax/net/ssl/SSLException;

    invoke-direct {v0, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1361
    :cond_a
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    invoke-direct {v0, p1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private pendingInboundCleartextBytes()I
    .registers 2

    .line 566
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lorg/conscrypt/NativeSsl;->getPendingReadableBytes()I

    move-result v0

    return v0
.end method

.method private static pendingStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .registers 1

    if-lez p0, :cond_5

    .line 571
    sget-object p0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_7

    :cond_5
    sget-object p0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    :goto_7
    return-object p0
.end method

.method private provideHandshakeSession()Lorg/conscrypt/ConscryptSession;
    .registers 4

    .line 616
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 617
    :try_start_3
    iget v1, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->activeSession:Lorg/conscrypt/ActiveSession;

    goto :goto_f

    .line 618
    :cond_b
    invoke-static {}, Lorg/conscrypt/SSLNullSession;->getNullSession()Lorg/conscrypt/ConscryptSession;

    move-result-object v1

    :goto_f
    monitor-exit v0

    return-object v1

    :catchall_11
    move-exception v1

    .line 619
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private provideSession()Lorg/conscrypt/ConscryptSession;
    .registers 4

    .line 603
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 604
    :try_start_3
    iget v1, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_14

    .line 605
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->closedSession:Lorg/conscrypt/SessionSnapshot;

    if-eqz v1, :cond_e

    goto :goto_12

    :cond_e
    invoke-static {}, Lorg/conscrypt/SSLNullSession;->getNullSession()Lorg/conscrypt/ConscryptSession;

    move-result-object v1

    :goto_12
    monitor-exit v0

    return-object v1

    :cond_14
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1d

    .line 609
    invoke-static {}, Lorg/conscrypt/SSLNullSession;->getNullSession()Lorg/conscrypt/ConscryptSession;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 611
    :cond_1d
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->activeSession:Lorg/conscrypt/ActiveSession;

    monitor-exit v0

    return-object v1

    :catchall_21
    move-exception v1

    .line 612
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method private readEncryptedData(Ljava/nio/ByteBuffer;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1263
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 1264
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, p2, :cond_29

    .line 1265
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    sub-int/2addr v0, v1

    .line 1266
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1267
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1268
    invoke-direct {p0, p1, v1, p2}, Lorg/conscrypt/ConscryptEngine;->readEncryptedDataDirect(Ljava/nio/ByteBuffer;II)I

    move-result v0

    if-lez v0, :cond_29

    add-int/2addr v1, v0

    .line 1271
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_29

    .line 1275
    :cond_25
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/ConscryptEngine;->readEncryptedDataHeap(Ljava/nio/ByteBuffer;I)I

    move-result v0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_29} :catch_2a

    :cond_29
    :goto_29
    return v0

    :catch_2a
    move-exception p1

    .line 1281
    invoke-direct {p0, p1}, Lorg/conscrypt/ConscryptEngine;->convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object p1

    throw p1
.end method

.method private readEncryptedDataDirect(Ljava/nio/ByteBuffer;II)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1286
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->networkBio:Lorg/conscrypt/NativeSsl$BioWrapper;

    invoke-direct {p0, p1, p2}, Lorg/conscrypt/ConscryptEngine;->directByteBufferAddress(Ljava/nio/ByteBuffer;I)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2, p3}, Lorg/conscrypt/NativeSsl$BioWrapper;->readDirectByteBuffer(JI)I

    move-result p1

    return p1
.end method

.method private readEncryptedDataHeap(Ljava/nio/ByteBuffer;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1293
    :try_start_1
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->bufferAllocator:Lorg/conscrypt/BufferAllocator;

    if-eqz v1, :cond_e

    .line 1294
    invoke-virtual {v1, p2}, Lorg/conscrypt/BufferAllocator;->allocateDirectBuffer(I)Lorg/conscrypt/AllocatedBuffer;

    move-result-object v0

    .line 1295
    invoke-virtual {v0}, Lorg/conscrypt/AllocatedBuffer;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_12

    .line 1300
    :cond_e
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->getOrCreateLazyDirectBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1303
    :goto_12
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v2, 0x0

    .line 1304
    invoke-direct {p0, v1, v2, p2}, Lorg/conscrypt/ConscryptEngine;->readEncryptedDataDirect(Ljava/nio/ByteBuffer;II)I

    move-result p2

    if-lez p2, :cond_2a

    .line 1306
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1307
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1308
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_30

    :cond_2a
    if-eqz v0, :cond_2f

    .line 1315
    invoke-virtual {v0}, Lorg/conscrypt/AllocatedBuffer;->release()Lorg/conscrypt/AllocatedBuffer;

    :cond_2f
    return p2

    :catchall_30
    move-exception p1

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Lorg/conscrypt/AllocatedBuffer;->release()Lorg/conscrypt/AllocatedBuffer;

    :cond_36
    throw p1
.end method

.method private readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1222
    :try_start_0
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->pendingOutboundEncryptedBytes()I

    move-result v0

    if-lez v0, :cond_44

    .line 1225
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v1, v0, :cond_21

    .line 1227
    new-instance p1, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 1229
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p4, v2, :cond_15

    goto :goto_19

    :cond_15
    invoke-direct {p0, v0}, Lorg/conscrypt/ConscryptEngine;->getHandshakeStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p4

    .line 1228
    :goto_19
    invoke-direct {p0, p4}, Lorg/conscrypt/ConscryptEngine;->mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p4

    invoke-direct {p1, v1, p4, p2, p3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object p1

    .line 1234
    :cond_21
    invoke-direct {p0, p1, v0}, Lorg/conscrypt/ConscryptEngine;->readEncryptedData(Ljava/nio/ByteBuffer;I)I

    move-result p1

    if-gtz p1, :cond_2b

    .line 1240
    invoke-static {}, Lorg/conscrypt/NativeCrypto;->SSL_clear_error()V

    goto :goto_2d

    :cond_2b
    add-int/2addr p3, p1

    sub-int/2addr v0, p1

    .line 1246
    :goto_2d
    new-instance p1, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    .line 1248
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p4, v2, :cond_38

    goto :goto_3c

    :cond_38
    invoke-direct {p0, v0}, Lorg/conscrypt/ConscryptEngine;->getHandshakeStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p4

    .line 1247
    :goto_3c
    invoke-direct {p0, p4}, Lorg/conscrypt/ConscryptEngine;->mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p4

    invoke-direct {p1, v1, p4, p2, p3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_46

    return-object p1

    :cond_44
    const/4 p1, 0x0

    return-object p1

    :catch_46
    move-exception p1

    .line 1253
    invoke-direct {p0, p1}, Lorg/conscrypt/ConscryptEngine;->convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object p1

    throw p1
.end method

.method private readPlaintextData(Ljava/nio/ByteBuffer;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1076
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1077
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    const/16 v2, 0x4145

    sub-int/2addr v1, v0

    .line 1078
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1079
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1080
    invoke-direct {p0, p1, v0, v1}, Lorg/conscrypt/ConscryptEngine;->readPlaintextDataDirect(Ljava/nio/ByteBuffer;II)I

    move-result v1

    if-lez v1, :cond_1f

    add-int/2addr v0, v1

    .line 1082
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_1f
    return v1

    .line 1088
    :cond_20
    invoke-direct {p0, p1, v1}, Lorg/conscrypt/ConscryptEngine;->readPlaintextDataHeap(Ljava/nio/ByteBuffer;I)I

    move-result p1
    :try_end_24
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_24} :catch_25

    return p1

    :catch_25
    move-exception p1

    .line 1090
    invoke-direct {p0, p1}, Lorg/conscrypt/ConscryptEngine;->convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object p1

    throw p1
.end method

.method private readPlaintextDataDirect(Ljava/nio/ByteBuffer;II)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1096
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-direct {p0, p1, p2}, Lorg/conscrypt/ConscryptEngine;->directByteBufferAddress(Ljava/nio/ByteBuffer;I)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2, p3}, Lorg/conscrypt/NativeSsl;->readDirectByteBuffer(JI)I

    move-result p1

    return p1
.end method

.method private readPlaintextDataHeap(Ljava/nio/ByteBuffer;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1104
    :try_start_1
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->bufferAllocator:Lorg/conscrypt/BufferAllocator;

    if-eqz v1, :cond_e

    .line 1105
    invoke-virtual {v1, p2}, Lorg/conscrypt/BufferAllocator;->allocateDirectBuffer(I)Lorg/conscrypt/AllocatedBuffer;

    move-result-object v0

    .line 1106
    invoke-virtual {v0}, Lorg/conscrypt/AllocatedBuffer;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_12

    .line 1111
    :cond_e
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->getOrCreateLazyDirectBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1115
    :goto_12
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v2, 0x0

    .line 1116
    invoke-direct {p0, v1, v2, p2}, Lorg/conscrypt/ConscryptEngine;->readPlaintextDataDirect(Ljava/nio/ByteBuffer;II)I

    move-result p2

    if-lez p2, :cond_2a

    .line 1119
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1120
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1121
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_30

    :cond_2a
    if-eqz v0, :cond_2f

    .line 1128
    invoke-virtual {v0}, Lorg/conscrypt/AllocatedBuffer;->release()Lorg/conscrypt/AllocatedBuffer;

    :cond_2f
    return p2

    :catchall_30
    move-exception p1

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Lorg/conscrypt/AllocatedBuffer;->release()Lorg/conscrypt/AllocatedBuffer;

    :cond_36
    throw p1
.end method

.method private resetSingleDstBuffer()V
    .registers 4

    .line 1793
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    return-void
.end method

.method private resetSingleSrcBuffer()V
    .registers 4

    .line 1784
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    return-void
.end method

.method private sendSSLShutdown()V
    .registers 2

    .line 1658
    :try_start_0
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lorg/conscrypt/NativeSsl;->shutdown()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method private sessionContext()Lorg/conscrypt/AbstractSessionContext;
    .registers 2

    .line 1801
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getSessionContext()Lorg/conscrypt/AbstractSessionContext;

    move-result-object v0

    return-object v0
.end method

.method static setDefaultBufferAllocator(Lorg/conscrypt/BufferAllocator;)V
    .registers 1

    .line 214
    sput-object p0, Lorg/conscrypt/ConscryptEngine;->defaultBufferAllocator:Lorg/conscrypt/BufferAllocator;

    return-void
.end method

.method private singleDstBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;
    .registers 4

    .line 1788
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-object v0
.end method

.method private singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;
    .registers 4

    .line 1779
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-object v0
.end method

.method private transitionTo(I)V
    .registers 5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_20

    const/16 v1, 0x8

    if-eq p1, v1, :cond_8

    goto :goto_32

    .line 1812
    :cond_8
    iget-object v2, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v2}, Lorg/conscrypt/NativeSsl;->isClosed()Z

    move-result v2

    if-nez v2, :cond_32

    iget v2, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    if-lt v2, v0, :cond_32

    if-ge v2, v1, :cond_32

    .line 1813
    new-instance v0, Lorg/conscrypt/SessionSnapshot;

    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->activeSession:Lorg/conscrypt/ActiveSession;

    invoke-direct {v0, v1}, Lorg/conscrypt/SessionSnapshot;-><init>(Lorg/conscrypt/ConscryptSession;)V

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngine;->closedSession:Lorg/conscrypt/SessionSnapshot;

    goto :goto_32

    :cond_20
    const/4 v0, 0x0

    .line 1807
    iput-boolean v0, p0, Lorg/conscrypt/ConscryptEngine;->handshakeFinished:Z

    .line 1808
    new-instance v0, Lorg/conscrypt/ActiveSession;

    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    iget-object v2, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/conscrypt/SSLParametersImpl;->getSessionContext()Lorg/conscrypt/AbstractSessionContext;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/conscrypt/ActiveSession;-><init>(Lorg/conscrypt/NativeSsl;Lorg/conscrypt/AbstractSessionContext;)V

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngine;->activeSession:Lorg/conscrypt/ActiveSession;

    .line 1823
    :cond_32
    :goto_32
    iput p1, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    return-void
.end method

.method private writeEncryptedData(Ljava/nio/ByteBuffer;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1145
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1147
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1148
    invoke-direct {p0, p1, v0, p2}, Lorg/conscrypt/ConscryptEngine;->writeEncryptedDataDirect(Ljava/nio/ByteBuffer;II)I

    move-result p2

    goto :goto_13

    .line 1150
    :cond_f
    invoke-direct {p0, p1, v0, p2}, Lorg/conscrypt/ConscryptEngine;->writeEncryptedDataHeap(Ljava/nio/ByteBuffer;II)I

    move-result p2

    :goto_13
    if-lez p2, :cond_19

    add-int/2addr v0, p2

    .line 1154
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_19} :catch_1a

    :cond_19
    return p2

    :catch_1a
    move-exception p1

    .line 1159
    new-instance p2, Ljavax/net/ssl/SSLException;

    invoke-direct {p2, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private writeEncryptedDataDirect(Ljava/nio/ByteBuffer;II)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1164
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->networkBio:Lorg/conscrypt/NativeSsl$BioWrapper;

    invoke-direct {p0, p1, p2}, Lorg/conscrypt/ConscryptEngine;->directByteBufferAddress(Ljava/nio/ByteBuffer;I)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2, p3}, Lorg/conscrypt/NativeSsl$BioWrapper;->writeDirectByteBuffer(JI)I

    move-result p1

    return p1
.end method

.method private writeEncryptedDataHeap(Ljava/nio/ByteBuffer;II)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1171
    :try_start_1
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->bufferAllocator:Lorg/conscrypt/BufferAllocator;

    if-eqz v1, :cond_e

    .line 1172
    invoke-virtual {v1, p3}, Lorg/conscrypt/BufferAllocator;->allocateDirectBuffer(I)Lorg/conscrypt/AllocatedBuffer;

    move-result-object v0

    .line 1173
    invoke-virtual {v0}, Lorg/conscrypt/AllocatedBuffer;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_12

    .line 1178
    :cond_e
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->getOrCreateLazyDirectBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1181
    :goto_12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int v3, v2, p2

    .line 1182
    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result p3

    add-int v3, p2, p3

    .line 1183
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1184
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1186
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1189
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v2, 0x0

    .line 1191
    invoke-direct {p0, v1, v2, p3}, Lorg/conscrypt/ConscryptEngine;->writeEncryptedDataDirect(Ljava/nio/ByteBuffer;II)I

    move-result p3

    .line 1194
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_40

    if-eqz v0, :cond_3f

    .line 1200
    invoke-virtual {v0}, Lorg/conscrypt/AllocatedBuffer;->release()Lorg/conscrypt/AllocatedBuffer;

    :cond_3f
    return p3

    :catchall_40
    move-exception p1

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Lorg/conscrypt/AllocatedBuffer;->release()Lorg/conscrypt/AllocatedBuffer;

    :cond_46
    throw p1
.end method

.method private writePlaintextData(Ljava/nio/ByteBuffer;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1018
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1020
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1021
    invoke-direct {p0, p1, v0, p2}, Lorg/conscrypt/ConscryptEngine;->writePlaintextDataDirect(Ljava/nio/ByteBuffer;II)I

    move-result p2

    goto :goto_13

    .line 1023
    :cond_f
    invoke-direct {p0, p1, v0, p2}, Lorg/conscrypt/ConscryptEngine;->writePlaintextDataHeap(Ljava/nio/ByteBuffer;II)I

    move-result p2

    :goto_13
    if-lez p2, :cond_19

    add-int/2addr v0, p2

    .line 1026
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    :cond_19
    return p2

    :catch_1a
    move-exception p1

    .line 1030
    invoke-direct {p0, p1}, Lorg/conscrypt/ConscryptEngine;->convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object p1

    throw p1
.end method

.method private writePlaintextDataDirect(Ljava/nio/ByteBuffer;II)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1035
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-direct {p0, p1, p2}, Lorg/conscrypt/ConscryptEngine;->directByteBufferAddress(Ljava/nio/ByteBuffer;I)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2, p3}, Lorg/conscrypt/NativeSsl;->writeDirectByteBuffer(JI)I

    move-result p1

    return p1
.end method

.method private writePlaintextDataHeap(Ljava/nio/ByteBuffer;II)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1042
    :try_start_1
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->bufferAllocator:Lorg/conscrypt/BufferAllocator;

    if-eqz v1, :cond_e

    .line 1043
    invoke-virtual {v1, p3}, Lorg/conscrypt/BufferAllocator;->allocateDirectBuffer(I)Lorg/conscrypt/AllocatedBuffer;

    move-result-object v0

    .line 1044
    invoke-virtual {v0}, Lorg/conscrypt/AllocatedBuffer;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_12

    .line 1049
    :cond_e
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->getOrCreateLazyDirectBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1053
    :goto_12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 1054
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result p3

    add-int v3, p2, p3

    .line 1055
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1056
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1057
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1059
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1060
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 p1, 0x0

    .line 1062
    invoke-direct {p0, v1, p1, p3}, Lorg/conscrypt/ConscryptEngine;->writePlaintextDataDirect(Ljava/nio/ByteBuffer;II)I

    move-result p1
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_3a

    if-eqz v0, :cond_39

    .line 1066
    invoke-virtual {v0}, Lorg/conscrypt/AllocatedBuffer;->release()Lorg/conscrypt/AllocatedBuffer;

    :cond_39
    return p1

    :catchall_3a
    move-exception p1

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Lorg/conscrypt/AllocatedBuffer;->release()Lorg/conscrypt/AllocatedBuffer;

    :cond_40
    throw p1
.end method


# virtual methods
.method public beginHandshake()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 398
    :try_start_3
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->beginHandshakeInternal()V

    .line 399
    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public chooseClientAlias(Ljavax/net/ssl/X509KeyManager;[Ljavax/security/auth/x500/X500Principal;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1695
    instance-of v0, p1, Ljavax/net/ssl/X509ExtendedKeyManager;

    if-eqz v0, :cond_b

    .line 1696
    check-cast p1, Ljavax/net/ssl/X509ExtendedKeyManager;

    .line 1697
    invoke-virtual {p1, p3, p2, p0}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 v0, 0x0

    .line 1699
    invoke-interface {p1, p3, p2, v0}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public chooseClientPSKIdentity(Lorg/conscrypt/PSKKeyManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1712
    invoke-interface {p1, p2, p0}, Lorg/conscrypt/PSKKeyManager;->chooseClientKeyIdentity(Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public chooseServerAlias(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1684
    instance-of v0, p1, Ljavax/net/ssl/X509ExtendedKeyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 1685
    check-cast p1, Ljavax/net/ssl/X509ExtendedKeyManager;

    .line 1686
    invoke-virtual {p1, p2, v1, p0}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1688
    :cond_c
    invoke-interface {p1, p2, v1, v1}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public chooseServerPSKIdentityHint(Lorg/conscrypt/PSKKeyManager;)Ljava/lang/String;
    .registers 2

    .line 1706
    invoke-interface {p1, p0}, Lorg/conscrypt/PSKKeyManager;->chooseServerKeyIdentityHint(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public clientCertificateRequested([B[I[[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1653
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/conscrypt/NativeSsl;->chooseClientCertificate([B[I[[B)V

    return-void
.end method

.method public clientPSKKeyRequested(Ljava/lang/String;[B[B)I
    .registers 5

    .line 1559
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/conscrypt/NativeSsl;->clientPSKKeyRequested(Ljava/lang/String;[B[B)I

    move-result p1

    return p1
.end method

.method public closeInbound()V
    .registers 6

    .line 458
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 459
    :try_start_3
    iget v1, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_28

    const/4 v3, 0x6

    if-ne v1, v3, :cond_d

    goto :goto_28

    .line 462
    :cond_d
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 463
    iget v1, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    const/4 v4, 0x7

    if-ne v1, v4, :cond_1c

    .line 464
    invoke-direct {p0, v2}, Lorg/conscrypt/ConscryptEngine;->transitionTo(I)V

    goto :goto_1f

    .line 466
    :cond_1c
    invoke-direct {p0, v3}, Lorg/conscrypt/ConscryptEngine;->transitionTo(I)V

    .line 468
    :goto_1f
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->freeIfDone()V

    goto :goto_26

    .line 471
    :cond_23
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->closeAndFreeResources()V

    .line 473
    :goto_26
    monitor-exit v0

    return-void

    .line 460
    :cond_28
    :goto_28
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception v1

    .line 473
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public closeOutbound()V
    .registers 6

    .line 478
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 479
    :try_start_3
    iget v1, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2b

    const/4 v3, 0x7

    if-ne v1, v3, :cond_d

    goto :goto_2b

    .line 482
    :cond_d
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 483
    iget v1, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    const/4 v4, 0x6

    if-ne v1, v4, :cond_1c

    .line 484
    invoke-direct {p0, v2}, Lorg/conscrypt/ConscryptEngine;->transitionTo(I)V

    goto :goto_1f

    .line 486
    :cond_1c
    invoke-direct {p0, v3}, Lorg/conscrypt/ConscryptEngine;->transitionTo(I)V

    .line 488
    :goto_1f
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->sendSSLShutdown()V

    .line 489
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->freeIfDone()V

    goto :goto_29

    .line 492
    :cond_26
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->closeAndFreeResources()V

    .line 494
    :goto_29
    monitor-exit v0

    return-void

    .line 480
    :cond_2b
    :goto_2b
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception v1

    .line 494
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method exportKeyingMaterial(Ljava/lang/String;[BI)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1754
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 1755
    :try_start_3
    iget v1, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_15

    const/16 v2, 0x8

    if-ne v1, v2, :cond_d

    goto :goto_15

    .line 1758
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_18

    .line 1759
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/conscrypt/NativeSsl;->exportKeyingMaterial(Ljava/lang/String;[BI)[B

    move-result-object p1

    return-object p1

    :cond_15
    :goto_15
    const/4 p1, 0x0

    .line 1756
    :try_start_16
    monitor-exit v0

    return-object p1

    :catchall_18
    move-exception p1

    .line 1758
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1676
    :try_start_2
    invoke-direct {p0, v0}, Lorg/conscrypt/ConscryptEngine;->transitionTo(I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_9

    .line 1678
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getApplicationProtocol()Ljava/lang/String;
    .registers 2

    .line 1768
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lorg/conscrypt/NativeSsl;->getApplicationProtocol()[B

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/SSLUtils;->toProtocolString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getApplicationProtocols()[Ljava/lang/String;
    .registers 2

    .line 1733
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getApplicationProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getChannelId()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 279
    :try_start_3
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->getUseClientMode()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 283
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v1

    if-nez v1, :cond_17

    .line 287
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v1}, Lorg/conscrypt/NativeSsl;->getTlsChannelId()[B

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 284
    :cond_17
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Channel ID is only available after handshake completes"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 280
    :cond_1f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not allowed in client mode"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_27
    move-exception v1

    .line 288
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public getDelegatedTask()Ljava/lang/Runnable;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnableSessionCreation()Z
    .registers 2

    .line 515
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 505
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .registers 2

    .line 510
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandshakeApplicationProtocol()Ljava/lang/String;
    .registers 4

    .line 1773
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 1774
    :try_start_3
    iget v1, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_d

    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return-object v1

    :catchall_10
    move-exception v1

    .line 1775
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .registers 3

    .line 533
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 534
    :try_start_3
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    .line 535
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method getHostname()Ljava/lang/String;
    .registers 2

    .line 382
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->peerHostname:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->peerInfoProvider:Lorg/conscrypt/PeerInfoProvider;

    invoke-virtual {v0}, Lorg/conscrypt/PeerInfoProvider;->getHostname()Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public getNeedClientAuth()Z
    .registers 2

    .line 576
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getPSKKey(Lorg/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .registers 4

    .line 1718
    invoke-interface {p1, p2, p3, p0}, Lorg/conscrypt/PSKKeyManager;->getKey(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljavax/crypto/SecretKey;

    move-result-object p1

    return-object p1
.end method

.method public getPeerHost()Ljava/lang/String;
    .registers 2

    .line 387
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->peerHostname:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->peerInfoProvider:Lorg/conscrypt/PeerInfoProvider;

    invoke-virtual {v0}, Lorg/conscrypt/PeerInfoProvider;->getHostnameOrIP()Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public getPeerPort()I
    .registers 2

    .line 392
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->peerInfoProvider:Lorg/conscrypt/PeerInfoProvider;

    invoke-virtual {v0}, Lorg/conscrypt/PeerInfoProvider;->getPort()I

    move-result v0

    return v0
.end method

.method public getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .registers 3

    .line 520
    invoke-super {p0}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    .line 521
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-static {v0, v1, p0}, Lorg/conscrypt/Platform;->getSSLParameters(Ljavax/net/ssl/SSLParameters;Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptEngine;)V

    return-object v0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .line 599
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->externalSession:Ljavax/net/ssl/SSLSession;

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 624
    invoke-static {}, Lorg/conscrypt/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .registers 2

    .line 629
    invoke-static {}, Lorg/conscrypt/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getTlsUnique()[B
    .registers 2

    .line 1749
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lorg/conscrypt/NativeSsl;->getTlsUnique()[B

    move-result-object v0

    return-object v0
.end method

.method public getUseClientMode()Z
    .registers 2

    .line 634
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public getWantClientAuth()Z
    .registers 2

    .line 639
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method handshakeSession()Ljavax/net/ssl/SSLSession;
    .registers 4

    .line 584
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 585
    :try_start_3
    iget v1, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_18

    .line 586
    new-instance v1, Lorg/conscrypt/ExternalSession;

    new-instance v2, Lorg/conscrypt/ConscryptEngine$2;

    invoke-direct {v2, p0}, Lorg/conscrypt/ConscryptEngine$2;-><init>(Lorg/conscrypt/ConscryptEngine;)V

    invoke-direct {v1, v2}, Lorg/conscrypt/ExternalSession;-><init>(Lorg/conscrypt/ExternalSession$Provider;)V

    invoke-static {v1}, Lorg/conscrypt/Platform;->wrapSSLSession(Lorg/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_18
    const/4 v1, 0x0

    .line 593
    monitor-exit v0

    return-object v1

    :catchall_1b
    move-exception v1

    .line 594
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public isInboundDone()Z
    .registers 4

    .line 644
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 645
    :try_start_3
    iget v1, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_14

    const/4 v2, 0x6

    if-eq v1, v2, :cond_14

    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    .line 647
    invoke-virtual {v1}, Lorg/conscrypt/NativeSsl;->wasShutdownReceived()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 648
    :cond_14
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->pendingInboundCleartextBytes()I

    move-result v1

    if-nez v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    monitor-exit v0

    return v1

    :catchall_1f
    move-exception v1

    .line 649
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public isOutboundDone()Z
    .registers 4

    .line 654
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 655
    :try_start_3
    iget v1, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_14

    const/4 v2, 0x7

    if-eq v1, v2, :cond_14

    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    .line 657
    invoke-virtual {v1}, Lorg/conscrypt/NativeSsl;->wasShutdownSent()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 658
    :cond_14
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->pendingOutboundEncryptedBytes()I

    move-result v1

    if-nez v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    monitor-exit v0

    return v1

    :catchall_1f
    move-exception v1

    .line 659
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method maxSealOverhead()I
    .registers 2

    .line 241
    iget v0, p0, Lorg/conscrypt/ConscryptEngine;->maxSealOverhead:I

    return v0
.end method

.method public onNewSessionEstablished(J)V
    .registers 4

    .line 1596
    :try_start_0
    invoke-static {p1, p2}, Lorg/conscrypt/NativeCrypto;->SSL_SESSION_up_ref(J)V

    .line 1601
    new-instance v0, Lorg/conscrypt/NativeRef$SSL_SESSION;

    invoke-direct {v0, p1, p2}, Lorg/conscrypt/NativeRef$SSL_SESSION;-><init>(J)V

    .line 1603
    iget-object p1, p0, Lorg/conscrypt/ConscryptEngine;->activeSession:Lorg/conscrypt/ActiveSession;

    invoke-static {v0, p1}, Lorg/conscrypt/NativeSslSession;->newInstance(Lorg/conscrypt/NativeRef$SSL_SESSION;Lorg/conscrypt/ConscryptSession;)Lorg/conscrypt/NativeSslSession;

    move-result-object p1

    .line 1606
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->sessionContext()Lorg/conscrypt/AbstractSessionContext;

    move-result-object p2

    .line 1607
    invoke-virtual {p2, p1}, Lorg/conscrypt/AbstractSessionContext;->cacheSession(Lorg/conscrypt/NativeSslSession;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_15

    :catch_15
    return-void
.end method

.method public onSSLStateChange(II)V
    .registers 5

    .line 1569
    iget-object p2, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter p2

    const/16 v0, 0x10

    const/4 v1, 0x2

    if-eq p1, v0, :cond_33

    const/16 v0, 0x20

    if-eq p1, v0, :cond_d

    goto :goto_36

    .line 1578
    :cond_d
    :try_start_d
    iget p1, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    if-eq p1, v1, :cond_2e

    const/4 v0, 0x4

    if-ne p1, v0, :cond_15

    goto :goto_2e

    .line 1580
    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Completed handshake while in mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2e
    :goto_2e
    const/4 p1, 0x3

    .line 1583
    invoke-direct {p0, p1}, Lorg/conscrypt/ConscryptEngine;->transitionTo(I)V

    goto :goto_36

    .line 1574
    :cond_33
    invoke-direct {p0, v1}, Lorg/conscrypt/ConscryptEngine;->transitionTo(I)V

    .line 1589
    :goto_36
    monitor-exit p2

    return-void

    :catchall_38
    move-exception p1

    monitor-exit p2
    :try_end_3a
    .catchall {:try_start_d .. :try_end_3a} :catchall_38

    throw p1
.end method

.method pendingOutboundEncryptedBytes()I
    .registers 2

    .line 562
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->networkBio:Lorg/conscrypt/NativeSsl$BioWrapper;

    invoke-virtual {v0}, Lorg/conscrypt/NativeSsl$BioWrapper;->getPendingWrittenBytes()I

    move-result v0

    return v0
.end method

.method public serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[B)I
    .registers 5

    .line 1564
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/conscrypt/NativeSsl;->serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result p1

    return p1
.end method

.method public serverSessionRequested([B)J
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method setApplicationProtocolSelector(Lorg/conscrypt/ApplicationProtocolSelector;)V
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_a

    .line 1744
    :cond_4
    new-instance v0, Lorg/conscrypt/ApplicationProtocolSelectorAdapter;

    invoke-direct {v0, p0, p1}, Lorg/conscrypt/ApplicationProtocolSelectorAdapter;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/conscrypt/ApplicationProtocolSelector;)V

    move-object p1, v0

    .line 1743
    :goto_a
    invoke-virtual {p0, p1}, Lorg/conscrypt/ConscryptEngine;->setApplicationProtocolSelector(Lorg/conscrypt/ApplicationProtocolSelectorAdapter;)V

    return-void
.end method

.method setApplicationProtocolSelector(Lorg/conscrypt/ApplicationProtocolSelectorAdapter;)V
    .registers 3

    .line 1763
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/conscrypt/SSLParametersImpl;->setApplicationProtocolSelector(Lorg/conscrypt/ApplicationProtocolSelectorAdapter;)V

    return-void
.end method

.method setApplicationProtocols([Ljava/lang/String;)V
    .registers 3

    .line 1738
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/conscrypt/SSLParametersImpl;->setApplicationProtocols([Ljava/lang/String;)V

    return-void
.end method

.method setBufferAllocator(Lorg/conscrypt/BufferAllocator;)V
    .registers 4

    .line 227
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 228
    :try_start_3
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v1

    if-nez v1, :cond_d

    .line 232
    iput-object p1, p0, Lorg/conscrypt/ConscryptEngine;->bufferAllocator:Lorg/conscrypt/BufferAllocator;

    .line 233
    monitor-exit v0

    return-void

    .line 229
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Could not set buffer allocator after the initial handshake has begun."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_15
    move-exception p1

    .line 233
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p1
.end method

.method setChannelIdEnabled(Z)V
    .registers 4

    .line 254
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 255
    :try_start_3
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->getUseClientMode()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 258
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v1

    if-nez v1, :cond_15

    .line 262
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    iput-boolean p1, v1, Lorg/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    .line 263
    monitor-exit v0

    return-void

    .line 259
    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Could not enable/disable Channel ID after the initial handshake has begun."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 256
    :cond_1d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Not allowed in client mode"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_25
    move-exception p1

    .line 263
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p1
.end method

.method setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
    .registers 6

    .line 305
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 309
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 310
    :try_start_9
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v1

    if-nez v1, :cond_3f

    const/4 v1, 0x0

    if-nez p1, :cond_1b

    .line 316
    iget-object p1, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    const/4 v2, 0x0

    iput-boolean v2, p1, Lorg/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    .line 317
    iput-object v1, p0, Lorg/conscrypt/ConscryptEngine;->channelIdPrivateKey:Lorg/conscrypt/OpenSSLKey;

    .line 318
    monitor-exit v0

    return-void

    .line 321
    :cond_1b
    iget-object v2, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/conscrypt/SSLParametersImpl;->channelIdEnabled:Z
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_47

    .line 324
    :try_start_20
    instance-of v2, p1, Ljava/security/interfaces/ECKey;

    if-eqz v2, :cond_2b

    .line 325
    move-object v1, p1

    check-cast v1, Ljava/security/interfaces/ECKey;

    invoke-interface {v1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    :cond_2b
    if-nez v1, :cond_37

    const-string v1, "prime256v1"

    .line 330
    invoke-static {v1}, Lorg/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lorg/conscrypt/OpenSSLECGroupContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/conscrypt/OpenSSLECGroupContext;->getECParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    .line 333
    :cond_37
    invoke-static {p1, v1}, Lorg/conscrypt/OpenSSLKey;->fromECPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/spec/ECParameterSpec;)Lorg/conscrypt/OpenSSLKey;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/ConscryptEngine;->channelIdPrivateKey:Lorg/conscrypt/OpenSSLKey;
    :try_end_3d
    .catch Ljava/security/InvalidKeyException; {:try_start_20 .. :try_end_3d} :catch_3d
    .catchall {:try_start_20 .. :try_end_3d} :catchall_47

    .line 337
    :catch_3d
    :try_start_3d
    monitor-exit v0

    return-void

    .line 311
    :cond_3f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Could not change Channel ID private key after the initial handshake has begun."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_47
    move-exception p1

    .line 337
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3d .. :try_end_49} :catchall_47

    throw p1

    .line 306
    :cond_4a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not allowed in server mode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEnableSessionCreation(Z)V
    .registers 3

    .line 674
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/conscrypt/SSLParametersImpl;->setEnableSessionCreation(Z)V

    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .registers 3

    .line 664
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/conscrypt/SSLParametersImpl;->setEnabledCipherSuites([Ljava/lang/String;)V

    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .registers 3

    .line 669
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/conscrypt/SSLParametersImpl;->setEnabledProtocols([Ljava/lang/String;)V

    return-void
.end method

.method setHandshakeListener(Lorg/conscrypt/HandshakeListener;)V
    .registers 4

    .line 345
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 346
    :try_start_3
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v1

    if-nez v1, :cond_d

    .line 350
    iput-object p1, p0, Lorg/conscrypt/ConscryptEngine;->handshakeListener:Lorg/conscrypt/HandshakeListener;

    .line 351
    monitor-exit v0

    return-void

    .line 347
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Handshake listener must be set before starting the handshake."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_15
    move-exception p1

    .line 351
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p1
.end method

.method setHostname(Ljava/lang/String;)V
    .registers 4

    .line 371
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v0, v1}, Lorg/conscrypt/SSLParametersImpl;->setUseSni(Z)V

    .line 372
    iput-object p1, p0, Lorg/conscrypt/ConscryptEngine;->peerHostname:Ljava/lang/String;

    return-void
.end method

.method public setNeedClientAuth(Z)V
    .registers 3

    .line 679
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/conscrypt/SSLParametersImpl;->setNeedClientAuth(Z)V

    return-void
.end method

.method public setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .registers 3

    .line 527
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLEngine;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 528
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-static {p1, v0, p0}, Lorg/conscrypt/Platform;->setSSLParameters(Ljavax/net/ssl/SSLParameters;Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptEngine;)V

    return-void
.end method

.method public setUseClientMode(Z)V
    .registers 5

    .line 684
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 685
    :try_start_3
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v1

    if-nez v1, :cond_14

    const/4 v1, 0x1

    .line 689
    invoke-direct {p0, v1}, Lorg/conscrypt/ConscryptEngine;->transitionTo(I)V

    .line 690
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v1, p1}, Lorg/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    .line 691
    monitor-exit v0

    return-void

    .line 686
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not change mode after handshake: state == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_2d
    move-exception p1

    .line 691
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method setUseSessionTickets(Z)V
    .registers 3

    .line 1728
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/conscrypt/SSLParametersImpl;->setUseSessionTickets(Z)V

    return-void
.end method

.method public setWantClientAuth(Z)V
    .registers 3

    .line 696
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/conscrypt/SSLParametersImpl;->setWantClientAuth(Z)V

    return-void
.end method

.method public unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 701
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 703
    :try_start_3
    invoke-direct {p0, p1}, Lorg/conscrypt/ConscryptEngine;->singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p2}, Lorg/conscrypt/ConscryptEngine;->singleDstBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/conscrypt/ConscryptEngine;->unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_17

    .line 705
    :try_start_f
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V

    .line 706
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->resetSingleDstBuffer()V

    monitor-exit v0

    return-object p1

    :catchall_17
    move-exception p1

    .line 705
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V

    .line 706
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->resetSingleDstBuffer()V

    throw p1

    :catchall_1f
    move-exception p1

    .line 708
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 713
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 715
    :try_start_3
    invoke-direct {p0, p1}, Lorg/conscrypt/ConscryptEngine;->singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/conscrypt/ConscryptEngine;->unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    .line 717
    :try_start_b
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V

    monitor-exit v0

    return-object p1

    :catchall_10
    move-exception p1

    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V

    throw p1

    :catchall_15
    move-exception p1

    .line 719
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_15

    throw p1
.end method

.method public unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 725
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 727
    :try_start_3
    invoke-direct {p0, p1}, Lorg/conscrypt/ConscryptEngine;->singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lorg/conscrypt/ConscryptEngine;->unwrap([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_16

    .line 729
    :try_start_11
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V

    monitor-exit v0

    return-object p1

    :catchall_16
    move-exception p1

    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V

    throw p1

    :catchall_1b
    move-exception p1

    .line 731
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method unwrap([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_10

    const/4 v7, 0x1

    goto :goto_11

    :cond_10
    const/4 v7, 0x0

    :goto_11
    const-string v8, "srcs is null"

    .line 745
    invoke-static {v7, v8}, Lorg/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    if-eqz v3, :cond_1a

    const/4 v7, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v7, 0x0

    :goto_1b
    const-string v8, "dsts is null"

    .line 746
    invoke-static {v7, v8}, Lorg/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    add-int v7, v2, p3

    .line 747
    array-length v8, v0

    invoke-static {v2, v7, v8}, Lorg/conscrypt/Preconditions;->checkPositionIndexes(III)V

    add-int v8, v4, p6

    .line 748
    array-length v9, v3

    invoke-static {v4, v8, v9}, Lorg/conscrypt/Preconditions;->checkPositionIndexes(III)V

    .line 751
    invoke-static/range {p4 .. p6}, Lorg/conscrypt/ConscryptEngine;->calcDstsLength([Ljava/nio/ByteBuffer;II)I

    move-result v9

    .line 755
    invoke-static {v0, v2, v7}, Lorg/conscrypt/ConscryptEngine;->calcSrcsLength([Ljava/nio/ByteBuffer;II)J

    move-result-wide v10

    .line 757
    iget-object v12, v1, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v12

    .line 758
    :try_start_37
    iget v13, v1, Lorg/conscrypt/ConscryptEngine;->state:I

    if-eqz v13, :cond_191

    const/16 v14, 0x8

    if-eq v13, v5, :cond_55

    const/4 v15, 0x6

    if-eq v13, v15, :cond_45

    if-eq v13, v14, :cond_45

    goto :goto_58

    .line 765
    :cond_45
    invoke-direct/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->freeIfDone()V

    .line 767
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    invoke-direct {v0, v2, v3, v6, v6}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    monitor-exit v12

    return-object v0

    .line 761
    :cond_55
    invoke-direct/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->beginHandshakeInternal()V

    .line 775
    :goto_58
    sget-object v13, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 776
    iget-boolean v15, v1, Lorg/conscrypt/ConscryptEngine;->handshakeFinished:Z

    if-nez v15, :cond_72

    .line 777
    invoke-direct/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v13

    .line 778
    sget-object v15, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v13, v15, :cond_6a

    .line 779
    sget-object v0, Lorg/conscrypt/ConscryptEngine;->NEED_WRAP_OK:Ljavax/net/ssl/SSLEngineResult;

    monitor-exit v12

    return-object v0

    .line 781
    :cond_6a
    iget v15, v1, Lorg/conscrypt/ConscryptEngine;->state:I

    if-ne v15, v14, :cond_72

    .line 782
    sget-object v0, Lorg/conscrypt/ConscryptEngine;->NEED_WRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    monitor-exit v12

    return-object v0

    .line 788
    :cond_72
    invoke-direct/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->pendingInboundCleartextBytes()I

    move-result v14

    if-gtz v14, :cond_79

    goto :goto_7a

    :cond_79
    const/4 v5, 0x0

    :goto_7a
    const-wide/16 v14, 0x0

    cmp-long v16, v10, v14

    if-lez v16, :cond_b5

    if-eqz v5, :cond_b5

    const-wide/16 v14, 0x5

    cmp-long v5, v10, v14

    if-gez v5, :cond_95

    .line 793
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    invoke-direct {v0, v2, v3, v6, v6}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    monitor-exit v12

    return-object v0

    .line 796
    :cond_95
    invoke-static/range {p1 .. p2}, Lorg/conscrypt/SSLUtils;->getEncryptedPacketLength([Ljava/nio/ByteBuffer;I)I

    move-result v5

    if-ltz v5, :cond_ad

    int-to-long v14, v5

    cmp-long v16, v10, v14

    if-gez v16, :cond_c5

    .line 804
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    invoke-direct {v0, v2, v3, v6, v6}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    monitor-exit v12

    return-object v0

    .line 798
    :cond_ad
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v2, "Unable to parse TLS packet header"

    invoke-direct {v0, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b5
    if-eqz v5, :cond_c4

    .line 811
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    invoke-direct {v0, v2, v3, v6, v6}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    monitor-exit v12

    return-object v0

    :cond_c4
    const/4 v5, 0x0

    :cond_c5
    if-lez v5, :cond_ee

    if-ge v2, v7, :cond_ee

    const/4 v10, 0x0

    .line 818
    :cond_ca
    aget-object v11, v0, v2

    .line 819
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    if-nez v14, :cond_d5

    :goto_d2
    add-int/lit8 v2, v2, 0x1

    goto :goto_e7

    .line 827
    :cond_d5
    invoke-static {v5, v14}, Ljava/lang/Math;->min(II)I

    move-result v15

    invoke-direct {v1, v11, v15}, Lorg/conscrypt/ConscryptEngine;->writeEncryptedData(Ljava/nio/ByteBuffer;I)I

    move-result v11

    if-lez v11, :cond_ea

    add-int/2addr v10, v11

    sub-int/2addr v5, v11

    if-nez v5, :cond_e4

    goto :goto_ef

    :cond_e4
    if-ne v11, v14, :cond_ef

    goto :goto_d2

    :goto_e7
    if-lt v2, v7, :cond_ca

    goto :goto_ef

    .line 850
    :cond_ea
    invoke-static {}, Lorg/conscrypt/NativeCrypto;->SSL_clear_error()V
    :try_end_ed
    .catchall {:try_start_37 .. :try_end_ed} :catchall_199

    goto :goto_ef

    :cond_ee
    const/4 v10, 0x0

    :cond_ef
    :goto_ef
    if-lez v9, :cond_144

    const/4 v0, 0x0

    :goto_f2
    if-ge v4, v8, :cond_14a

    .line 862
    :try_start_f4
    aget-object v2, v3, v4

    .line 863
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_fd

    goto :goto_10b

    .line 867
    :cond_fd
    invoke-direct {v1, v2}, Lorg/conscrypt/ConscryptEngine;->readPlaintextData(Ljava/nio/ByteBuffer;)I

    move-result v5

    if-lez v5, :cond_10e

    add-int/2addr v0, v5

    .line 870
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_10b

    goto :goto_14a

    :cond_10b
    :goto_10b
    add-int/lit8 v4, v4, 0x1

    goto :goto_f2

    :cond_10e
    const/4 v2, -0x6

    if-eq v5, v2, :cond_128

    const/4 v2, -0x3

    if-eq v5, v2, :cond_122

    const/4 v2, -0x2

    if-ne v5, v2, :cond_118

    goto :goto_122

    .line 893
    :cond_118
    invoke-direct/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->sendSSLShutdown()V

    const-string v2, "SSL_read"

    .line 894
    invoke-direct {v1, v2}, Lorg/conscrypt/ConscryptEngine;->newSslExceptionWithMessage(Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    throw v2

    .line 879
    :cond_122
    :goto_122
    invoke-direct {v1, v10, v0, v13}, Lorg/conscrypt/ConscryptEngine;->newResult(IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0
    :try_end_126
    .catch Ljavax/net/ssl/SSLException; {:try_start_f4 .. :try_end_126} :catch_188
    .catch Ljava/io/InterruptedIOException; {:try_start_f4 .. :try_end_126} :catch_142
    .catch Ljava/io/EOFException; {:try_start_f4 .. :try_end_126} :catch_179
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_126} :catch_170
    .catchall {:try_start_f4 .. :try_end_126} :catchall_199

    :try_start_126
    monitor-exit v12
    :try_end_127
    .catchall {:try_start_126 .. :try_end_127} :catchall_199

    return-object v0

    .line 884
    :cond_128
    :try_start_128
    invoke-virtual/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->closeInbound()V

    .line 885
    invoke-direct/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->sendSSLShutdown()V

    .line 886
    new-instance v2, Ljavax/net/ssl/SSLEngineResult;

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 887
    invoke-virtual/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->pendingOutboundEncryptedBytes()I

    move-result v4

    if-lez v4, :cond_13b

    .line 888
    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_13d

    :cond_13b
    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    :goto_13d
    invoke-direct {v2, v3, v4, v10, v0}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_140
    .catch Ljavax/net/ssl/SSLException; {:try_start_128 .. :try_end_140} :catch_188
    .catch Ljava/io/InterruptedIOException; {:try_start_128 .. :try_end_140} :catch_142
    .catch Ljava/io/EOFException; {:try_start_128 .. :try_end_140} :catch_179
    .catch Ljava/io/IOException; {:try_start_128 .. :try_end_140} :catch_170
    .catchall {:try_start_128 .. :try_end_140} :catchall_199

    :try_start_140
    monitor-exit v12
    :try_end_141
    .catchall {:try_start_140 .. :try_end_141} :catchall_199

    return-object v2

    :catch_142
    move v6, v0

    goto :goto_182

    .line 903
    :cond_144
    :try_start_144
    iget-object v0, v1, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lorg/conscrypt/NativeSsl;->forceRead()V
    :try_end_149
    .catch Ljavax/net/ssl/SSLException; {:try_start_144 .. :try_end_149} :catch_188
    .catch Ljava/io/InterruptedIOException; {:try_start_144 .. :try_end_149} :catch_182
    .catch Ljava/io/EOFException; {:try_start_144 .. :try_end_149} :catch_179
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_149} :catch_170
    .catchall {:try_start_144 .. :try_end_149} :catchall_199

    const/4 v0, 0x0

    .line 923
    :cond_14a
    :goto_14a
    :try_start_14a
    iget-boolean v2, v1, Lorg/conscrypt/ConscryptEngine;->handshakeFinished:Z

    if-eqz v2, :cond_152

    invoke-direct/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->pendingInboundCleartextBytes()I

    move-result v6

    :cond_152
    if-lez v6, :cond_16a

    .line 927
    new-instance v2, Ljavax/net/ssl/SSLEngineResult;

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 928
    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v13, v4, :cond_15d

    goto :goto_161

    .line 930
    :cond_15d
    invoke-direct/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v13

    .line 928
    :goto_161
    invoke-direct {v1, v13}, Lorg/conscrypt/ConscryptEngine;->mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4

    invoke-direct {v2, v3, v4, v10, v0}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    monitor-exit v12

    return-object v2

    .line 934
    :cond_16a
    invoke-direct {v1, v10, v0, v13}, Lorg/conscrypt/ConscryptEngine;->newResult(IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    monitor-exit v12

    return-object v0

    :catch_170
    move-exception v0

    .line 916
    invoke-direct/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->sendSSLShutdown()V

    .line 917
    invoke-direct {v1, v0}, Lorg/conscrypt/ConscryptEngine;->convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0

    :catch_179
    move-exception v0

    .line 913
    invoke-direct/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->closeAll()V

    .line 914
    invoke-direct {v1, v0}, Lorg/conscrypt/ConscryptEngine;->convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0

    .line 911
    :catch_182
    :goto_182
    invoke-direct {v1, v10, v6, v13}, Lorg/conscrypt/ConscryptEngine;->newResult(IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    monitor-exit v12

    return-object v0

    :catch_188
    move-exception v0

    .line 908
    invoke-direct/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->sendSSLShutdown()V

    .line 909
    invoke-direct {v1, v0}, Lorg/conscrypt/ConscryptEngine;->convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0

    .line 769
    :cond_191
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Client/server mode must be set before calling unwrap"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_199
    move-exception v0

    .line 935
    monitor-exit v12
    :try_end_19b
    .catchall {:try_start_14a .. :try_end_19b} :catchall_199

    throw v0
.end method

.method unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    const-string v3, "srcs is null"

    .line 736
    invoke-static {v2, v3}, Lorg/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    if-eqz p2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    const-string v1, "dsts is null"

    .line 737
    invoke-static {v0, v1}, Lorg/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    const/4 v4, 0x0

    .line 738
    array-length v5, p1

    const/4 v7, 0x0

    array-length v8, p2

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v8}, Lorg/conscrypt/ConscryptEngine;->unwrap([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    return-object p1
.end method

.method public verifyCertificateChain([[BLjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p1, :cond_3f

    .line 1623
    :try_start_2
    array-length v0, p1

    if-eqz v0, :cond_3f

    .line 1626
    invoke-static {p1}, Lorg/conscrypt/SSLUtils;->decodeX509CertificateChain([[B)[Ljava/security/cert/X509Certificate;

    move-result-object p1

    .line 1628
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 1634
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->activeSession:Lorg/conscrypt/ActiveSession;

    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->getPeerPort()I

    move-result v3

    invoke-virtual {v1, v2, v3, p1}, Lorg/conscrypt/ActiveSession;->onPeerCertificatesReceived(Ljava/lang/String;I[Ljava/security/cert/X509Certificate;)V

    .line 1636
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->getUseClientMode()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1637
    invoke-static {v0, p1, p2, p0}, Lorg/conscrypt/Platform;->checkServerTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/conscrypt/ConscryptEngine;)V

    goto :goto_36

    :cond_28
    const/4 p2, 0x0

    .line 1639
    aget-object p2, p1, p2

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p2

    invoke-interface {p2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p2

    .line 1640
    invoke-static {v0, p1, p2, p0}, Lorg/conscrypt/Platform;->checkClientTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/conscrypt/ConscryptEngine;)V

    :goto_36
    return-void

    .line 1630
    :cond_37
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "No X.509 TrustManager"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1624
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

    .line 1645
    new-instance p2, Ljava/security/cert/CertificateException;

    invoke-direct {p2, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_4e
    move-exception p1

    .line 1643
    throw p1
.end method

.method public wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1373
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v0

    .line 1375
    :try_start_3
    invoke-direct {p0, p1}, Lorg/conscrypt/ConscryptEngine;->singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljavax/net/ssl/SSLEngine;->wrap([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    .line 1377
    :try_start_b
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V

    monitor-exit v0

    return-object p1

    :catchall_10
    move-exception p1

    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V

    throw p1

    :catchall_15
    move-exception p1

    .line 1379
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_15

    throw p1
.end method

.method public wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    const-string v3, "srcs is null"

    .line 1385
    invoke-static {v2, v3}, Lorg/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    if-eqz p4, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    const-string v3, "dst is null"

    .line 1386
    invoke-static {v2, v3}, Lorg/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    add-int/2addr p3, p2

    .line 1387
    array-length v2, p1

    invoke-static {p2, p3, v2}, Lorg/conscrypt/Preconditions;->checkPositionIndexes(III)V

    .line 1388
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v2

    if-nez v2, :cond_15e

    .line 1392
    iget-object v2, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v2

    .line 1393
    :try_start_24
    iget v3, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    if-eqz v3, :cond_153

    const/16 v4, 0x8

    if-eq v3, v0, :cond_4c

    const/4 v5, 0x7

    if-eq v3, v5, :cond_32

    if-eq v3, v4, :cond_32

    goto :goto_4f

    .line 1402
    :cond_32
    sget-object p1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 1403
    invoke-direct {p0, p4, v1, v1, p1}, Lorg/conscrypt/ConscryptEngine;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    if-eqz p1, :cond_3f

    .line 1405
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->freeIfDone()V

    .line 1406
    monitor-exit v2

    return-object p1

    .line 1408
    :cond_3f
    new-instance p1, Ljavax/net/ssl/SSLEngineResult;

    sget-object p2, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p3

    invoke-direct {p1, p2, p3, v1, v1}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    monitor-exit v2

    return-object p1

    .line 1396
    :cond_4c
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->beginHandshakeInternal()V

    .line 1417
    :goto_4f
    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 1419
    iget-boolean v5, p0, Lorg/conscrypt/ConscryptEngine;->handshakeFinished:Z

    if-nez v5, :cond_69

    .line 1420
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    .line 1421
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v3, v5, :cond_61

    .line 1422
    sget-object p1, Lorg/conscrypt/ConscryptEngine;->NEED_UNWRAP_OK:Ljavax/net/ssl/SSLEngineResult;

    monitor-exit v2

    return-object p1

    .line 1425
    :cond_61
    iget v5, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    if-ne v5, v4, :cond_69

    .line 1426
    sget-object p1, Lorg/conscrypt/ConscryptEngine;->NEED_UNWRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    monitor-exit v2

    return-object p1

    :cond_69
    move v4, p2

    const/4 v5, 0x0

    :goto_6b
    const/16 v6, 0x4000

    if-ge v4, p3, :cond_a0

    .line 1434
    aget-object v7, p1, v4

    if-eqz v7, :cond_84

    if-ne v5, v6, :cond_76

    goto :goto_81

    .line 1442
    :cond_76
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    add-int/2addr v5, v7

    if-gt v5, v6, :cond_7f

    if-gez v5, :cond_81

    :cond_7f
    const/16 v5, 0x4000

    :cond_81
    :goto_81
    add-int/lit8 v4, v4, 0x1

    goto :goto_6b

    .line 1436
    :cond_84
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "srcs["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] is null"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1452
    :cond_a0
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v5}, Lorg/conscrypt/SSLUtils;->calculateOutNetBufSize(I)I

    move-result v5

    if-ge v4, v5, :cond_b7

    .line 1453
    new-instance p1, Ljavax/net/ssl/SSLEngineResult;

    sget-object p2, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 1454
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p3

    invoke-direct {p1, p2, p3, v1, v1}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    monitor-exit v2

    return-object p1

    :cond_b7
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_b9
    if-ge p2, p3, :cond_143

    .line 1461
    aget-object v7, p1, p2

    if-eqz v7, :cond_c1

    const/4 v8, 0x1

    goto :goto_c2

    :cond_c1
    const/4 v8, 0x0

    :goto_c2
    const-string v9, "srcs[%d] is null"

    .line 1462
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lorg/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 1463
    :cond_cb
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v8

    if-eqz v8, :cond_13f

    .line 1467
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    rsub-int v9, v5, 0x4000

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1466
    invoke-direct {p0, v7, v8}, Lorg/conscrypt/ConscryptEngine;->writePlaintextData(Ljava/nio/ByteBuffer;I)I

    move-result v8

    if-lez v8, :cond_f9

    add-int/2addr v5, v8

    .line 1471
    invoke-direct {p0, p4, v5, v4, v3}, Lorg/conscrypt/ConscryptEngine;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v8

    if-eqz v8, :cond_f6

    .line 1474
    invoke-virtual {v8}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    sget-object v9, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v4, v9, :cond_f2

    .line 1475
    monitor-exit v2

    return-object v8

    .line 1477
    :cond_f2
    invoke-virtual {v8}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v4

    :cond_f6
    if-ne v5, v6, :cond_cb

    goto :goto_143

    .line 1485
    :cond_f9
    iget-object p1, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {p1, v8}, Lorg/conscrypt/NativeSsl;->getError(I)I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_12b

    const/4 p2, 0x3

    if-eq p1, p2, :cond_120

    const/4 p2, 0x6

    if-ne p1, p2, :cond_116

    .line 1490
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->closeAll()V

    .line 1491
    invoke-direct {p0, p4, v5, v4, v3}, Lorg/conscrypt/ConscryptEngine;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    if-eqz p1, :cond_112

    goto :goto_114

    .line 1494
    :cond_112
    sget-object p1, Lorg/conscrypt/ConscryptEngine;->CLOSED_NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult;

    :goto_114
    monitor-exit v2

    return-object p1

    .line 1534
    :cond_116
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->sendSSLShutdown()V

    const-string p1, "SSL_write"

    .line 1535
    invoke-direct {p0, p1}, Lorg/conscrypt/ConscryptEngine;->newSslExceptionWithMessage(Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object p1

    throw p1

    .line 1528
    :cond_120
    invoke-direct {p0, p4, v5, v4, v3}, Lorg/conscrypt/ConscryptEngine;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    if-eqz p1, :cond_127

    goto :goto_129

    .line 1531
    :cond_127
    sget-object p1, Lorg/conscrypt/ConscryptEngine;->NEED_WRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    :goto_129
    monitor-exit v2

    return-object p1

    .line 1502
    :cond_12b
    invoke-direct {p0, p4, v5, v4, v3}, Lorg/conscrypt/ConscryptEngine;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    if-eqz p1, :cond_132

    goto :goto_13d

    .line 1506
    :cond_132
    new-instance p1, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object p2

    sget-object p3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {p1, p2, p3, v5, v4}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    :goto_13d
    monitor-exit v2

    return-object p1

    :cond_13f
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_b9

    :cond_143
    :goto_143
    if-nez v5, :cond_14d

    .line 1545
    invoke-direct {p0, p4, v1, v4, v3}, Lorg/conscrypt/ConscryptEngine;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    if-eqz p1, :cond_14d

    .line 1547
    monitor-exit v2

    return-object p1

    .line 1553
    :cond_14d
    invoke-direct {p0, v5, v4, v3}, Lorg/conscrypt/ConscryptEngine;->newResult(IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    monitor-exit v2

    return-object p1

    .line 1410
    :cond_153
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Client/server mode must be set before calling wrap"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_15b
    move-exception p1

    .line 1554
    monitor-exit v2
    :try_end_15d
    .catchall {:try_start_24 .. :try_end_15d} :catchall_15b

    throw p1

    .line 1389
    :cond_15e
    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method
