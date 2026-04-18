.class final Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;
.super Ljava/io/OutputStream;
.source "ConscryptEngineSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/ConscryptEngineSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SSLOutputStream"
.end annotation


# instance fields
.field private socketOutputStream:Ljava/io/OutputStream;

.field private final target:Ljava/nio/ByteBuffer;

.field private final targetArrayOffset:I

.field final synthetic this$0:Lorg/conscrypt/ConscryptEngineSocket;

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/conscrypt/ConscryptEngineSocket;)V
    .registers 3

    .line 571
    iput-object p1, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lorg/conscrypt/ConscryptEngineSocket;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 566
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeLock:Ljava/lang/Object;

    .line 572
    invoke-static {p1}, Lorg/conscrypt/ConscryptEngineSocket;->access$400(Lorg/conscrypt/ConscryptEngineSocket;)Lorg/conscrypt/ConscryptEngine;

    move-result-object p1

    invoke-virtual {p1}, Lorg/conscrypt/ConscryptEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->target:Ljava/nio/ByteBuffer;

    .line 573
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    iput p1, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->targetArrayOffset:I

    return-void
.end method

.method static synthetic access$200(Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;Ljava/nio/ByteBuffer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 565
    invoke-direct {p0, p1}, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeInternal(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$300(Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 565
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->flushInternal()V

    return-void
.end method

.method private flushInternal()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 646
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lorg/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->checkOpen()V

    .line 647
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->init()V

    .line 648
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->socketOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private init()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 652
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->socketOutputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_c

    .line 653
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lorg/conscrypt/ConscryptEngineSocket;

    invoke-static {v0}, Lorg/conscrypt/ConscryptEngineSocket;->access$500(Lorg/conscrypt/ConscryptEngineSocket;)Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->socketOutputStream:Ljava/io/OutputStream;

    :cond_c
    return-void
.end method

.method private writeInternal(Ljava/nio/ByteBuffer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 606
    invoke-static {}, Lorg/conscrypt/Platform;->blockGuardOnNetwork()V

    .line 607
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lorg/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->checkOpen()V

    .line 608
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->init()V

    .line 613
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 616
    :cond_f
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->target:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 617
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lorg/conscrypt/ConscryptEngineSocket;

    invoke-static {v1}, Lorg/conscrypt/ConscryptEngineSocket;->access$400(Lorg/conscrypt/ConscryptEngineSocket;)Lorg/conscrypt/ConscryptEngine;

    move-result-object v1

    iget-object v2, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->target:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, v2}, Lorg/conscrypt/ConscryptEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1

    .line 618
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v2

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v2, v3, :cond_7b

    .line 621
    iget-object v2, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->target:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v3

    if-ne v2, v3, :cond_52

    .line 625
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v1

    sub-int/2addr v0, v1

    .line 626
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ne v0, v1, :cond_4a

    .line 630
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->target:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 633
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeToSocket()V

    if-gtz v0, :cond_f

    return-void

    .line 627
    :cond_4a
    new-instance p1, Ljavax/net/ssl/SSLException;

    const-string v0, "Engine did not read the correct number of bytes"

    invoke-direct {p1, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 622
    :cond_52
    new-instance p1, Ljavax/net/ssl/SSLException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Engine bytesProduced "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " does not match bytes written "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->target:Ljava/nio/ByteBuffer;

    .line 623
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 619
    :cond_7b
    new-instance p1, Ljavax/net/ssl/SSLException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected engine result "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeToSocket()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 659
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->socketOutputStream:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->target:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget v2, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->targetArrayOffset:I

    iget-object v3, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->target:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 578
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lorg/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v0}, Lorg/conscrypt/ConscryptEngineSocket;->close()V

    return-void
.end method

.method public flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 639
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lorg/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v0}, Lorg/conscrypt/ConscryptEngineSocket;->startHandshake()V

    .line 640
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 641
    :try_start_8
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->flushInternal()V

    .line 642
    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public write(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 583
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lorg/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v0}, Lorg/conscrypt/ConscryptEngineSocket;->startHandshake()V

    .line 584
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_9
    new-array v1, v1, [B

    const/4 v2, 0x0

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 585
    invoke-virtual {p0, v1}, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->write([B)V

    .line 586
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public write([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 591
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lorg/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v0}, Lorg/conscrypt/ConscryptEngineSocket;->startHandshake()V

    .line 592
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 593
    :try_start_8
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeInternal(Ljava/nio/ByteBuffer;)V

    .line 594
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public write([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 599
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lorg/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v0}, Lorg/conscrypt/ConscryptEngineSocket;->startHandshake()V

    .line 600
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 601
    :try_start_8
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeInternal(Ljava/nio/ByteBuffer;)V

    .line 602
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_11

    throw p1
.end method
