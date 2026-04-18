.class Lorg/conscrypt/ConscryptEngineSocket;
.super Lorg/conscrypt/OpenSSLSocketImpl;
.source "ConscryptEngineSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;,
        Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;
    }
.end annotation


# static fields
.field private static final EMPTY_BUFFER:Ljava/nio/ByteBuffer;


# instance fields
.field private bufferAllocator:Lorg/conscrypt/BufferAllocator;

.field private final engine:Lorg/conscrypt/ConscryptEngine;

.field private final handshakeLock:Ljava/lang/Object;

.field private in:Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;

.field private out:Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;

.field private state:I

.field private final stateLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 51
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/ConscryptEngineSocket;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    .line 54
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    .line 55
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/conscrypt/ConscryptEngineSocket;->handshakeLock:Ljava/lang/Object;

    .line 60
    invoke-static {}, Lorg/conscrypt/ConscryptEngine;->getDefaultBufferAllocator()Lorg/conscrypt/BufferAllocator;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/ConscryptEngineSocket;->bufferAllocator:Lorg/conscrypt/BufferAllocator;

    const/4 p1, 0x0

    .line 63
    iput p1, p0, Lorg/conscrypt/ConscryptEngineSocket;->state:I

    .line 86
    invoke-static {p5, p0}, Lorg/conscrypt/ConscryptEngineSocket;->newEngine(Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptEngineSocket;)Lorg/conscrypt/ConscryptEngine;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILorg/conscrypt/SSLParametersImpl;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/lang/String;I)V

    .line 54
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    .line 55
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/conscrypt/ConscryptEngineSocket;->handshakeLock:Ljava/lang/Object;

    .line 60
    invoke-static {}, Lorg/conscrypt/ConscryptEngine;->getDefaultBufferAllocator()Lorg/conscrypt/BufferAllocator;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/ConscryptEngineSocket;->bufferAllocator:Lorg/conscrypt/BufferAllocator;

    const/4 p1, 0x0

    .line 63
    iput p1, p0, Lorg/conscrypt/ConscryptEngineSocket;->state:I

    .line 74
    invoke-static {p3, p0}, Lorg/conscrypt/ConscryptEngineSocket;->newEngine(Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptEngineSocket;)Lorg/conscrypt/ConscryptEngine;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    return-void
.end method

.method constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    .line 54
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    .line 55
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/conscrypt/ConscryptEngineSocket;->handshakeLock:Ljava/lang/Object;

    .line 60
    invoke-static {}, Lorg/conscrypt/ConscryptEngine;->getDefaultBufferAllocator()Lorg/conscrypt/BufferAllocator;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/ConscryptEngineSocket;->bufferAllocator:Lorg/conscrypt/BufferAllocator;

    const/4 p1, 0x0

    .line 63
    iput p1, p0, Lorg/conscrypt/ConscryptEngineSocket;->state:I

    .line 92
    invoke-static {p5, p0}, Lorg/conscrypt/ConscryptEngineSocket;->newEngine(Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptEngineSocket;)Lorg/conscrypt/ConscryptEngine;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    return-void
.end method

.method constructor <init>(Ljava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/InetAddress;I)V

    .line 54
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    .line 55
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/conscrypt/ConscryptEngineSocket;->handshakeLock:Ljava/lang/Object;

    .line 60
    invoke-static {}, Lorg/conscrypt/ConscryptEngine;->getDefaultBufferAllocator()Lorg/conscrypt/BufferAllocator;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/ConscryptEngineSocket;->bufferAllocator:Lorg/conscrypt/BufferAllocator;

    const/4 p1, 0x0

    .line 63
    iput p1, p0, Lorg/conscrypt/ConscryptEngineSocket;->state:I

    .line 80
    invoke-static {p3, p0}, Lorg/conscrypt/ConscryptEngineSocket;->newEngine(Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptEngineSocket;)Lorg/conscrypt/ConscryptEngine;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    return-void
.end method

.method constructor <init>(Ljava/net/Socket;Ljava/lang/String;IZLorg/conscrypt/SSLParametersImpl;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/Socket;Ljava/lang/String;IZ)V

    .line 54
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    .line 55
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/conscrypt/ConscryptEngineSocket;->handshakeLock:Ljava/lang/Object;

    .line 60
    invoke-static {}, Lorg/conscrypt/ConscryptEngine;->getDefaultBufferAllocator()Lorg/conscrypt/BufferAllocator;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/ConscryptEngineSocket;->bufferAllocator:Lorg/conscrypt/BufferAllocator;

    const/4 p1, 0x0

    .line 63
    iput p1, p0, Lorg/conscrypt/ConscryptEngineSocket;->state:I

    .line 98
    invoke-static {p5, p0}, Lorg/conscrypt/ConscryptEngineSocket;->newEngine(Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptEngineSocket;)Lorg/conscrypt/ConscryptEngine;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    return-void
.end method

.method constructor <init>(Lorg/conscrypt/SSLParametersImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLSocketImpl;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->handshakeLock:Ljava/lang/Object;

    .line 60
    invoke-static {}, Lorg/conscrypt/ConscryptEngine;->getDefaultBufferAllocator()Lorg/conscrypt/BufferAllocator;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->bufferAllocator:Lorg/conscrypt/BufferAllocator;

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->state:I

    .line 68
    invoke-static {p1, p0}, Lorg/conscrypt/ConscryptEngineSocket;->newEngine(Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptEngineSocket;)Lorg/conscrypt/ConscryptEngine;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    return-void
.end method

.method static synthetic access$000(Lorg/conscrypt/ConscryptEngineSocket;)V
    .registers 1

    .line 50
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngineSocket;->onHandshakeFinished()V

    return-void
.end method

.method static synthetic access$1000(Lorg/conscrypt/ConscryptEngineSocket;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngineSocket;->doHandshake()V

    return-void
.end method

.method static synthetic access$1100(Lorg/conscrypt/ConscryptEngineSocket;)Ljava/io/InputStream;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngineSocket;->getUnderlyingInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lorg/conscrypt/ConscryptEngineSocket;)Lorg/conscrypt/ConscryptEngine;
    .registers 1

    .line 50
    iget-object p0, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    return-object p0
.end method

.method static synthetic access$500(Lorg/conscrypt/ConscryptEngineSocket;)Ljava/io/OutputStream;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngineSocket;->getUnderlyingOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lorg/conscrypt/ConscryptEngineSocket;)Lorg/conscrypt/BufferAllocator;
    .registers 1

    .line 50
    iget-object p0, p0, Lorg/conscrypt/ConscryptEngineSocket;->bufferAllocator:Lorg/conscrypt/BufferAllocator;

    return-object p0
.end method

.method static synthetic access$700(Lorg/conscrypt/ConscryptEngineSocket;)Ljava/lang/Object;
    .registers 1

    .line 50
    iget-object p0, p0, Lorg/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$800(Lorg/conscrypt/ConscryptEngineSocket;)I
    .registers 1

    .line 50
    iget p0, p0, Lorg/conscrypt/ConscryptEngineSocket;->state:I

    return p0
.end method

.method static synthetic access$900(Lorg/conscrypt/ConscryptEngineSocket;)Ljava/lang/Object;
    .registers 1

    .line 50
    iget-object p0, p0, Lorg/conscrypt/ConscryptEngineSocket;->handshakeLock:Ljava/lang/Object;

    return-object p0
.end method

.method private doHandshake()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-nez v2, :cond_81

    .line 224
    :try_start_5
    sget-object v3, Lorg/conscrypt/ConscryptEngineSocket$3;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    iget-object v4, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {v4}, Lorg/conscrypt/ConscryptEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v0, :cond_56

    const/4 v4, 0x2

    if-eq v3, v4, :cond_49

    const/4 v2, 0x3

    if-eq v3, v2, :cond_41

    const/4 v2, 0x4

    if-eq v3, v2, :cond_3f

    const/4 v2, 0x5

    if-ne v3, v2, :cond_22

    goto :goto_3f

    .line 248
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown handshake status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    .line 249
    invoke-virtual {v2}, Lorg/conscrypt/ConscryptEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    :goto_3f
    const/4 v2, 0x1

    goto :goto_3

    .line 239
    :cond_41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Engine tasks are unsupported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_49
    iget-object v3, p0, Lorg/conscrypt/ConscryptEngineSocket;->out:Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;

    sget-object v4, Lorg/conscrypt/ConscryptEngineSocket;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    invoke-static {v3, v4}, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->access$200(Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;Ljava/nio/ByteBuffer;)V

    .line 234
    iget-object v3, p0, Lorg/conscrypt/ConscryptEngineSocket;->out:Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;

    invoke-static {v3}, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->access$300(Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;)V

    goto :goto_3

    .line 226
    :cond_56
    iget-object v3, p0, Lorg/conscrypt/ConscryptEngineSocket;->in:Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;

    sget-object v4, Lorg/conscrypt/EmptyArray;->BYTE:[B

    invoke-static {v3, v4, v1, v1}, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->access$100(Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;[BII)I

    move-result v3

    if-ltz v3, :cond_61

    goto :goto_3

    .line 228
    :cond_61
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    invoke-static {v0}, Lorg/conscrypt/SSLUtils;->toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;

    move-result-object v0

    throw v0
    :try_end_6b
    .catch Ljavax/net/ssl/SSLException; {:try_start_5 .. :try_end_6b} :catch_79
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_6b} :catch_74
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_6b} :catch_6b

    :catch_6b
    move-exception v0

    .line 261
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngineSocket;->close()V

    .line 263
    invoke-static {v0}, Lorg/conscrypt/SSLUtils;->toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;

    move-result-object v0

    throw v0

    :catch_74
    move-exception v0

    .line 258
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngineSocket;->close()V

    .line 259
    throw v0

    :catch_79
    move-exception v0

    .line 254
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngineSocket;->drainOutgoingQueue()V

    .line 255
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngineSocket;->close()V

    .line 256
    throw v0

    :cond_81
    return-void
.end method

.method private drainOutgoingQueue()V
    .registers 3

    .line 544
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lorg/conscrypt/ConscryptEngine;->pendingOutboundEncryptedBytes()I

    move-result v0

    if-lez v0, :cond_15

    .line 545
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->out:Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;

    sget-object v1, Lorg/conscrypt/ConscryptEngineSocket;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->access$200(Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;Ljava/nio/ByteBuffer;)V

    .line 547
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->out:Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;

    invoke-static {v0}, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->access$300(Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_0

    :catch_15
    :cond_15
    return-void
.end method

.method private static getDelegatingTrustManager(Ljavax/net/ssl/X509TrustManager;Lorg/conscrypt/ConscryptEngineSocket;)Ljavax/net/ssl/X509TrustManager;
    .registers 3

    .line 135
    instance-of v0, p0, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-eqz v0, :cond_c

    .line 136
    check-cast p0, Ljavax/net/ssl/X509ExtendedTrustManager;

    .line 137
    new-instance v0, Lorg/conscrypt/ConscryptEngineSocket$2;

    invoke-direct {v0, p0, p1}, Lorg/conscrypt/ConscryptEngineSocket$2;-><init>(Ljavax/net/ssl/X509ExtendedTrustManager;Lorg/conscrypt/ConscryptEngineSocket;)V

    return-object v0

    :cond_c
    return-object p0
.end method

.method private getUnderlyingInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 559
    invoke-super {p0}, Lorg/conscrypt/OpenSSLSocketImpl;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private getUnderlyingOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 555
    invoke-super {p0}, Lorg/conscrypt/OpenSSLSocketImpl;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method private static newEngine(Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptEngineSocket;)Lorg/conscrypt/ConscryptEngine;
    .registers 5

    .line 104
    invoke-static {}, Lorg/conscrypt/Platform;->supportsX509ExtendedTrustManager()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 106
    invoke-virtual {p0}, Lorg/conscrypt/SSLParametersImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/conscrypt/ConscryptEngineSocket;->getDelegatingTrustManager(Ljavax/net/ssl/X509TrustManager;Lorg/conscrypt/ConscryptEngineSocket;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 105
    invoke-virtual {p0, v0}, Lorg/conscrypt/SSLParametersImpl;->cloneWithTrustManager(Ljavax/net/ssl/X509TrustManager;)Lorg/conscrypt/SSLParametersImpl;

    move-result-object v0

    goto :goto_14

    :cond_13
    move-object v0, p0

    .line 110
    :goto_14
    new-instance v1, Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {p1}, Lorg/conscrypt/AbstractConscryptSocket;->peerInfoProvider()Lorg/conscrypt/PeerInfoProvider;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/conscrypt/ConscryptEngine;-><init>(Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/PeerInfoProvider;)V

    .line 113
    new-instance v0, Lorg/conscrypt/ConscryptEngineSocket$1;

    invoke-direct {v0, p1}, Lorg/conscrypt/ConscryptEngineSocket$1;-><init>(Lorg/conscrypt/ConscryptEngineSocket;)V

    invoke-virtual {v1, v0}, Lorg/conscrypt/ConscryptEngine;->setHandshakeListener(Lorg/conscrypt/HandshakeListener;)V

    .line 125
    invoke-virtual {p0}, Lorg/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result p0

    invoke-virtual {v1, p0}, Lorg/conscrypt/ConscryptEngine;->setUseClientMode(Z)V

    return-object v1
.end method

.method private onHandshakeFinished()V
    .registers 4

    .line 499
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 500
    :try_start_3
    iget v1, p0, Lorg/conscrypt/ConscryptEngineSocket;->state:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1d

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    const/4 v1, 0x4

    .line 502
    iput v1, p0, Lorg/conscrypt/ConscryptEngineSocket;->state:I

    goto :goto_16

    :cond_10
    const/4 v2, 0x3

    if-ne v1, v2, :cond_16

    const/4 v1, 0x5

    .line 504
    iput v1, p0, Lorg/conscrypt/ConscryptEngineSocket;->state:I

    .line 509
    :cond_16
    :goto_16
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    .line 512
    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_25

    if-eqz v1, :cond_24

    .line 515
    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->notifyHandshakeCompletedListeners()V

    :cond_24
    return-void

    :catchall_25
    move-exception v1

    .line 512
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method private waitForHandshake()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngineSocket;->startHandshake()V

    .line 525
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 526
    :goto_6
    :try_start_6
    iget v1, p0, Lorg/conscrypt/ConscryptEngineSocket;->state:I
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_34

    const/4 v2, 0x5

    const/16 v3, 0x8

    if-eq v1, v2, :cond_28

    const/4 v2, 0x4

    if-eq v1, v2, :cond_28

    if-eq v1, v3, :cond_28

    .line 529
    :try_start_12
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_17} :catch_18
    .catchall {:try_start_12 .. :try_end_17} :catchall_34

    goto :goto_6

    :catch_18
    move-exception v1

    .line 531
    :try_start_19
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 532
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Interrupted waiting for handshake"

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_28
    if-eq v1, v3, :cond_2c

    .line 539
    monitor-exit v0

    return-void

    .line 537
    :cond_2c
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_34
    move-exception v1

    .line 539
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_19 .. :try_end_36} :catchall_34

    throw v1
.end method


# virtual methods
.method public final close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    if-nez v0, :cond_5

    return-void

    .line 435
    :cond_5
    monitor-enter v0

    .line 436
    :try_start_6
    iget v1, p0, Lorg/conscrypt/ConscryptEngineSocket;->state:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_e

    .line 438
    monitor-exit v0

    return-void

    .line 441
    :cond_e
    iput v2, p0, Lorg/conscrypt/ConscryptEngineSocket;->state:I

    .line 443
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 444
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_40

    .line 448
    :try_start_16
    invoke-super {p0}, Lorg/conscrypt/OpenSSLSocketImpl;->close()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_2b

    .line 451
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lorg/conscrypt/ConscryptEngine;->closeInbound()V

    .line 452
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lorg/conscrypt/ConscryptEngine;->closeOutbound()V

    .line 455
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->in:Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;

    if-eqz v0, :cond_2a

    .line 456
    invoke-virtual {v0}, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->release()V

    :cond_2a
    return-void

    :catchall_2b
    move-exception v0

    .line 451
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {v1}, Lorg/conscrypt/ConscryptEngine;->closeInbound()V

    .line 452
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {v1}, Lorg/conscrypt/ConscryptEngine;->closeOutbound()V

    .line 455
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngineSocket;->in:Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;

    if-eqz v1, :cond_3f

    .line 456
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngineSocket;->in:Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;

    invoke-virtual {v1}, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->release()V

    :cond_3f
    throw v0

    :catchall_40
    move-exception v1

    .line 444
    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v1
.end method

.method exportKeyingMaterial(Ljava/lang/String;[BI)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1, p2, p3}, Lorg/conscrypt/ConscryptEngine;->exportKeyingMaterial(Ljava/lang/String;[BI)[B

    move-result-object p1

    return-object p1
.end method

.method final getActiveSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .line 309
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lorg/conscrypt/ConscryptEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public final getApplicationProtocol()Ljava/lang/String;
    .registers 2

    .line 473
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lorg/conscrypt/ConscryptEngine;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getApplicationProtocols()[Ljava/lang/String;
    .registers 2

    .line 468
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lorg/conscrypt/ConscryptEngine;->getApplicationProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getChannelId()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lorg/conscrypt/ConscryptEngine;->getChannelId()[B

    move-result-object v0

    return-object v0
.end method

.method public final getEnableSessionCreation()Z
    .registers 2

    .line 314
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lorg/conscrypt/ConscryptEngine;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public final getEnabledCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 329
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lorg/conscrypt/ConscryptEngine;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getEnabledProtocols()[Ljava/lang/String;
    .registers 2

    .line 344
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lorg/conscrypt/ConscryptEngine;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getHandshakeApplicationProtocol()Ljava/lang/String;
    .registers 2

    .line 478
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lorg/conscrypt/ConscryptEngine;->getHandshakeApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getHandshakeSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .line 292
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lorg/conscrypt/ConscryptEngine;->handshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->checkOpen()V

    .line 274
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngineSocket;->waitForHandshake()V

    .line 275
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->in:Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;

    return-object v0
.end method

.method public final getNeedClientAuth()Z
    .registers 2

    .line 411
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lorg/conscrypt/ConscryptEngine;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->checkOpen()V

    .line 285
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngineSocket;->waitForHandshake()V

    .line 287
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->out:Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;

    return-object v0
.end method

.method public final getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .registers 2

    .line 172
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lorg/conscrypt/ConscryptEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    return-object v0
.end method

.method public final getSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .line 297
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLSocketImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 299
    :try_start_6
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngineSocket;->waitForHandshake()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_9

    .line 304
    :catch_9
    :cond_9
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lorg/conscrypt/ConscryptEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 324
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lorg/conscrypt/ConscryptEngine;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportedProtocols()[Ljava/lang/String;
    .registers 2

    .line 339
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lorg/conscrypt/ConscryptEngine;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getTlsUnique()[B
    .registers 2

    .line 386
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lorg/conscrypt/ConscryptEngine;->getTlsUnique()[B

    move-result-object v0

    return-object v0
.end method

.method public final getUseClientMode()Z
    .registers 2

    .line 396
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lorg/conscrypt/ConscryptEngine;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public final getWantClientAuth()Z
    .registers 2

    .line 406
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {v0}, Lorg/conscrypt/ConscryptEngine;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public final setApplicationProtocolSelector(Lorg/conscrypt/ApplicationProtocolSelector;)V
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_a

    .line 484
    :cond_4
    new-instance v0, Lorg/conscrypt/ApplicationProtocolSelectorAdapter;

    invoke-direct {v0, p0, p1}, Lorg/conscrypt/ApplicationProtocolSelectorAdapter;-><init>(Ljavax/net/ssl/SSLSocket;Lorg/conscrypt/ApplicationProtocolSelector;)V

    move-object p1, v0

    .line 483
    :goto_a
    invoke-virtual {p0, p1}, Lorg/conscrypt/ConscryptEngineSocket;->setApplicationProtocolSelector(Lorg/conscrypt/ApplicationProtocolSelectorAdapter;)V

    return-void
.end method

.method final setApplicationProtocolSelector(Lorg/conscrypt/ApplicationProtocolSelectorAdapter;)V
    .registers 3

    .line 489
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lorg/conscrypt/ConscryptEngine;->setApplicationProtocolSelector(Lorg/conscrypt/ApplicationProtocolSelectorAdapter;)V

    return-void
.end method

.method final setApplicationProtocols([Ljava/lang/String;)V
    .registers 3

    .line 463
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lorg/conscrypt/ConscryptEngine;->setApplicationProtocols([Ljava/lang/String;)V

    return-void
.end method

.method setBufferAllocator(Lorg/conscrypt/BufferAllocator;)V
    .registers 3

    .line 493
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lorg/conscrypt/ConscryptEngine;->setBufferAllocator(Lorg/conscrypt/BufferAllocator;)V

    .line 494
    iput-object p1, p0, Lorg/conscrypt/ConscryptEngineSocket;->bufferAllocator:Lorg/conscrypt/BufferAllocator;

    return-void
.end method

.method public final setChannelIdEnabled(Z)V
    .registers 3

    .line 371
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lorg/conscrypt/ConscryptEngine;->setChannelIdEnabled(Z)V

    return-void
.end method

.method public final setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
    .registers 3

    .line 381
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lorg/conscrypt/ConscryptEngine;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    return-void
.end method

.method public final setEnableSessionCreation(Z)V
    .registers 3

    .line 319
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lorg/conscrypt/ConscryptEngine;->setEnableSessionCreation(Z)V

    return-void
.end method

.method public final setEnabledCipherSuites([Ljava/lang/String;)V
    .registers 3

    .line 334
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lorg/conscrypt/ConscryptEngine;->setEnabledCipherSuites([Ljava/lang/String;)V

    return-void
.end method

.method public final setEnabledProtocols([Ljava/lang/String;)V
    .registers 3

    .line 349
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lorg/conscrypt/ConscryptEngine;->setEnabledProtocols([Ljava/lang/String;)V

    return-void
.end method

.method public final setHostname(Ljava/lang/String;)V
    .registers 3

    .line 360
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lorg/conscrypt/ConscryptEngine;->setHostname(Ljava/lang/String;)V

    .line 361
    invoke-super {p0, p1}, Lorg/conscrypt/OpenSSLSocketImpl;->setHostname(Ljava/lang/String;)V

    return-void
.end method

.method public final setNeedClientAuth(Z)V
    .registers 3

    .line 416
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lorg/conscrypt/ConscryptEngine;->setNeedClientAuth(Z)V

    return-void
.end method

.method public final setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .registers 3

    .line 177
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lorg/conscrypt/ConscryptEngine;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    return-void
.end method

.method public final setUseClientMode(Z)V
    .registers 3

    .line 401
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lorg/conscrypt/ConscryptEngine;->setUseClientMode(Z)V

    return-void
.end method

.method public final setUseSessionTickets(Z)V
    .registers 3

    .line 366
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lorg/conscrypt/ConscryptEngine;->setUseSessionTickets(Z)V

    return-void
.end method

.method public final setWantClientAuth(Z)V
    .registers 3

    .line 421
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {v0, p1}, Lorg/conscrypt/ConscryptEngine;->setWantClientAuth(Z)V

    return-void
.end method

.method public final startHandshake()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->checkOpen()V

    .line 185
    :try_start_3
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket;->handshakeLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_6
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_6} :catch_40
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_32

    .line 188
    :try_start_6
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_2f

    .line 190
    :try_start_9
    iget v2, p0, Lorg/conscrypt/ConscryptEngineSocket;->state:I

    if-nez v2, :cond_29

    const/4 v2, 0x2

    .line 191
    iput v2, p0, Lorg/conscrypt/ConscryptEngineSocket;->state:I

    .line 192
    iget-object v2, p0, Lorg/conscrypt/ConscryptEngineSocket;->engine:Lorg/conscrypt/ConscryptEngine;

    invoke-virtual {v2}, Lorg/conscrypt/ConscryptEngine;->beginHandshake()V

    .line 193
    new-instance v2, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;

    invoke-direct {v2, p0}, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;-><init>(Lorg/conscrypt/ConscryptEngineSocket;)V

    iput-object v2, p0, Lorg/conscrypt/ConscryptEngineSocket;->in:Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;

    .line 194
    new-instance v2, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;

    invoke-direct {v2, p0}, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;-><init>(Lorg/conscrypt/ConscryptEngineSocket;)V

    iput-object v2, p0, Lorg/conscrypt/ConscryptEngineSocket;->out:Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;

    .line 203
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_2c

    .line 205
    :try_start_24
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngineSocket;->doHandshake()V

    .line 206
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_2f

    return-void

    .line 201
    :cond_29
    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2c

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_2f

    return-void

    :catchall_2c
    move-exception v2

    .line 203
    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw v2

    :catchall_2f
    move-exception v1

    .line 206
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_2f

    :try_start_31
    throw v1
    :try_end_32
    .catch Ljavax/net/ssl/SSLException; {:try_start_31 .. :try_end_32} :catch_40
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_32} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_32} :catch_32

    :catch_32
    move-exception v0

    .line 214
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngineSocket;->close()V

    .line 216
    invoke-static {v0}, Lorg/conscrypt/SSLUtils;->toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;

    move-result-object v0

    throw v0

    :catch_3b
    move-exception v0

    .line 211
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngineSocket;->close()V

    .line 212
    throw v0

    :catch_40
    move-exception v0

    .line 208
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngineSocket;->close()V

    .line 209
    throw v0
.end method
