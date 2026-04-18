.class final Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;
.super Ljava/io/InputStream;
.source "ConscryptEngineSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/ConscryptEngineSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SSLInputStream"
.end annotation


# instance fields
.field private final allocatedBuffer:Lorg/conscrypt/AllocatedBuffer;

.field private final fromEngine:Ljava/nio/ByteBuffer;

.field private final fromSocket:Ljava/nio/ByteBuffer;

.field private final fromSocketArrayOffset:I

.field private final readLock:Ljava/lang/Object;

.field private final singleByte:[B

.field private socketInputStream:Ljava/io/InputStream;

.field final synthetic this$0:Lorg/conscrypt/ConscryptEngineSocket;


# direct methods
.method constructor <init>(Lorg/conscrypt/ConscryptEngineSocket;)V
    .registers 4

    .line 675
    iput-object p1, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptEngineSocket;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 667
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->readLock:Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 668
    iput-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->singleByte:[B

    .line 676
    invoke-static {p1}, Lorg/conscrypt/ConscryptEngineSocket;->access$600(Lorg/conscrypt/ConscryptEngineSocket;)Lorg/conscrypt/BufferAllocator;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 677
    invoke-static {p1}, Lorg/conscrypt/ConscryptEngineSocket;->access$600(Lorg/conscrypt/ConscryptEngineSocket;)Lorg/conscrypt/BufferAllocator;

    move-result-object v0

    .line 678
    invoke-static {p1}, Lorg/conscrypt/ConscryptEngineSocket;->access$400(Lorg/conscrypt/ConscryptEngineSocket;)Lorg/conscrypt/ConscryptEngine;

    move-result-object v1

    invoke-virtual {v1}, Lorg/conscrypt/ConscryptEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v1

    .line 677
    invoke-virtual {v0, v1}, Lorg/conscrypt/BufferAllocator;->allocateDirectBuffer(I)Lorg/conscrypt/AllocatedBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->allocatedBuffer:Lorg/conscrypt/AllocatedBuffer;

    .line 679
    invoke-virtual {v0}, Lorg/conscrypt/AllocatedBuffer;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromEngine:Ljava/nio/ByteBuffer;

    goto :goto_49

    :cond_34
    const/4 v0, 0x0

    .line 681
    iput-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->allocatedBuffer:Lorg/conscrypt/AllocatedBuffer;

    .line 682
    invoke-static {p1}, Lorg/conscrypt/ConscryptEngineSocket;->access$400(Lorg/conscrypt/ConscryptEngineSocket;)Lorg/conscrypt/ConscryptEngine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/conscrypt/ConscryptEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromEngine:Ljava/nio/ByteBuffer;

    .line 685
    :goto_49
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromEngine:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 686
    invoke-static {p1}, Lorg/conscrypt/ConscryptEngineSocket;->access$400(Lorg/conscrypt/ConscryptEngineSocket;)Lorg/conscrypt/ConscryptEngine;

    move-result-object p1

    invoke-virtual {p1}, Lorg/conscrypt/ConscryptEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromSocket:Ljava/nio/ByteBuffer;

    .line 687
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    iput p1, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromSocketArrayOffset:I

    return-void
.end method

.method static synthetic access$100(Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;[BII)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 666
    invoke-direct {p0, p1, p2, p3}, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->processDataFromSocket([BII)I

    move-result p0

    return p0
.end method

.method private init()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 869
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->socketInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_c

    .line 870
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptEngineSocket;

    invoke-static {v0}, Lorg/conscrypt/ConscryptEngineSocket;->access$1100(Lorg/conscrypt/ConscryptEngineSocket;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->socketInputStream:Ljava/io/InputStream;

    :cond_c
    return-void
.end method

.method private isHandshakeFinished()Z
    .registers 4

    .line 854
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptEngineSocket;

    invoke-static {v0}, Lorg/conscrypt/ConscryptEngineSocket;->access$700(Lorg/conscrypt/ConscryptEngineSocket;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 855
    :try_start_7
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptEngineSocket;

    invoke-static {v1}, Lorg/conscrypt/ConscryptEngineSocket;->access$800(Lorg/conscrypt/ConscryptEngineSocket;)I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    monitor-exit v0

    return v1

    :catchall_15
    move-exception v1

    .line 856
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private isHandshaking(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Z
    .registers 4

    .line 746
    sget-object v0, Lorg/conscrypt/ConscryptEngineSocket$3;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_13

    const/4 v1, 0x2

    if-eq p1, v1, :cond_13

    const/4 v1, 0x3

    if-eq p1, v1, :cond_13

    const/4 p1, 0x0

    return p1

    :cond_13
    return v0
.end method

.method private processDataFromSocket([BII)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 771
    invoke-static {}, Lorg/conscrypt/Platform;->blockGuardOnNetwork()V

    .line 772
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->checkOpen()V

    .line 775
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->init()V

    .line 779
    :cond_b
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromEngine:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_23

    .line 780
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromEngine:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 781
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromEngine:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return p3

    .line 789
    :cond_23
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromSocket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 790
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromEngine:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 792
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptEngineSocket;

    invoke-static {v0}, Lorg/conscrypt/ConscryptEngineSocket;->access$400(Lorg/conscrypt/ConscryptEngineSocket;)Lorg/conscrypt/ConscryptEngine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/conscrypt/ConscryptEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->isHandshaking(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Z

    move-result v0

    .line 793
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptEngineSocket;

    invoke-static {v1}, Lorg/conscrypt/ConscryptEngineSocket;->access$400(Lorg/conscrypt/ConscryptEngineSocket;)Lorg/conscrypt/ConscryptEngine;

    move-result-object v1

    iget-object v2, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromSocket:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromEngine:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2, v3}, Lorg/conscrypt/ConscryptEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1

    .line 799
    iget-object v2, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromSocket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 800
    iget-object v2, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromEngine:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 802
    sget-object v2, Lorg/conscrypt/ConscryptEngineSocket$3;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_9c

    const/4 v3, 0x2

    if-eq v2, v3, :cond_86

    const/4 p1, 0x3

    if-ne v2, p1, :cond_6b

    return v4

    .line 832
    :cond_6b
    new-instance p1, Ljavax/net/ssl/SSLException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected engine result "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_86
    if-nez v0, :cond_a3

    .line 815
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->isHandshaking(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 816
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->isHandshakeFinished()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 819
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->renegotiate()V

    return v5

    .line 804
    :cond_9c
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v0

    if-nez v0, :cond_a3

    goto :goto_a4

    :cond_a3
    const/4 v3, 0x0

    :goto_a4
    if-nez v3, :cond_ad

    .line 837
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v0

    if-nez v0, :cond_ad

    return v5

    :cond_ad
    if-eqz v3, :cond_b

    .line 844
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->readFromSocket()I

    move-result v0

    if-ne v0, v4, :cond_b

    return v4
.end method

.method private readFromSocket()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 878
    :try_start_0
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromSocket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 879
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromSocket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 880
    iget-object v2, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->socketInputStream:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromSocket:Ljava/nio/ByteBuffer;

    .line 881
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    iget v4, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromSocketArrayOffset:I

    add-int/2addr v4, v0

    sub-int/2addr v1, v0

    .line 880
    invoke-virtual {v2, v3, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_24

    .line 884
    iget-object v2, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromSocket:Ljava/nio/ByteBuffer;

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_24
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_24} :catch_25

    :cond_24
    return v1

    :catch_25
    const/4 v0, -0x1

    return v0
.end method

.method private readUntilDataAvailable([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 759
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->processDataFromSocket([BII)I

    move-result v0

    if-eqz v0, :cond_0

    return v0
.end method

.method private renegotiate()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 863
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptEngineSocket;

    invoke-static {v0}, Lorg/conscrypt/ConscryptEngineSocket;->access$900(Lorg/conscrypt/ConscryptEngineSocket;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 864
    :try_start_7
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptEngineSocket;

    invoke-static {v1}, Lorg/conscrypt/ConscryptEngineSocket;->access$1000(Lorg/conscrypt/ConscryptEngineSocket;)V

    .line 865
    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 738
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v0}, Lorg/conscrypt/ConscryptEngineSocket;->startHandshake()V

    .line 739
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->readLock:Ljava/lang/Object;

    monitor-enter v0

    .line 740
    :try_start_8
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->init()V

    .line 741
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromEngine:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_13
    move-exception v1

    .line 742
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 692
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v0}, Lorg/conscrypt/ConscryptEngineSocket;->close()V

    return-void
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 705
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v0}, Lorg/conscrypt/ConscryptEngineSocket;->startHandshake()V

    .line 706
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->readLock:Ljava/lang/Object;

    monitor-enter v0

    .line 708
    :try_start_8
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->singleByte:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->read([BII)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_15

    .line 711
    monitor-exit v0

    return v4

    :cond_15
    if-ne v1, v2, :cond_1d

    .line 716
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->singleByte:[B

    aget-byte v1, v1, v3

    monitor-exit v0

    return v1

    .line 714
    :cond_1d
    new-instance v2, Ljavax/net/ssl/SSLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read incorrect number of bytes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_34
    move-exception v1

    .line 717
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public read([B)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 722
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v0}, Lorg/conscrypt/ConscryptEngineSocket;->startHandshake()V

    .line 723
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->readLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 724
    :try_start_9
    array-length v2, p1

    invoke-virtual {p0, p1, v1, v2}, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->read([BII)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_10
    move-exception p1

    .line 725
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 730
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v0}, Lorg/conscrypt/ConscryptEngineSocket;->startHandshake()V

    .line 731
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->readLock:Ljava/lang/Object;

    monitor-enter v0

    .line 732
    :try_start_8
    invoke-direct {p0, p1, p2, p3}, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->readUntilDataAvailable([BII)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_e
    move-exception p1

    .line 733
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_e

    throw p1
.end method

.method release()V
    .registers 3

    .line 696
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->readLock:Ljava/lang/Object;

    monitor-enter v0

    .line 697
    :try_start_3
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLInputStream;->allocatedBuffer:Lorg/conscrypt/AllocatedBuffer;

    if-eqz v1, :cond_a

    .line 698
    invoke-virtual {v1}, Lorg/conscrypt/AllocatedBuffer;->release()Lorg/conscrypt/AllocatedBuffer;

    .line 700
    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method
