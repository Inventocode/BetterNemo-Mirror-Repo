.class Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;
.super Ljava/io/InputStream;
.source "ConscryptFileDescriptorSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/ConscryptFileDescriptorSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SSLInputStream"
.end annotation


# instance fields
.field private final readLock:Ljava/lang/Object;

.field final synthetic this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;


# direct methods
.method constructor <init>(Lorg/conscrypt/ConscryptFileDescriptorSocket;)V
    .registers 2

    .line 508
    iput-object p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 506
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->readLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public available()I
    .registers 2

    .line 563
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->access$100(Lorg/conscrypt/ConscryptFileDescriptorSocket;)Lorg/conscrypt/NativeSsl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/conscrypt/NativeSsl;->getPendingReadableBytes()I

    move-result v0

    return v0
.end method

.method awaitPendingOps()V
    .registers 3

    .line 575
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->readLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    monitor-exit v0

    return-void

    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v1
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 519
    invoke-virtual {p0, v1, v2, v0}, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_f

    .line 520
    aget-byte v0, v1, v2

    and-int/lit16 v3, v0, 0xff

    :cond_f
    return v3
.end method

.method public read([BII)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 529
    invoke-static {}, Lorg/conscrypt/Platform;->blockGuardOnNetwork()V

    .line 531
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->checkOpen()V

    .line 532
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lorg/conscrypt/ArrayUtils;->checkOffsetAndCount(III)V

    if-nez p3, :cond_10

    const/4 p1, 0x0

    return p1

    .line 537
    :cond_10
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->readLock:Ljava/lang/Object;

    monitor-enter v0

    .line 538
    :try_start_13
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v1}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->access$100(Lorg/conscrypt/ConscryptFileDescriptorSocket;)Lorg/conscrypt/NativeSsl;

    move-result-object v1

    monitor-enter v1
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_6c

    .line 539
    :try_start_1a
    iget-object v2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v2}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->access$200(Lorg/conscrypt/ConscryptFileDescriptorSocket;)I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_61

    .line 546
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_69

    .line 548
    :try_start_25
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v1}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->access$100(Lorg/conscrypt/ConscryptFileDescriptorSocket;)Lorg/conscrypt/NativeSsl;

    move-result-object v4

    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    iget-object v1, v1, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    .line 549
    invoke-static {v1}, Lorg/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v5

    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-virtual {v1}, Lorg/conscrypt/AbstractConscryptSocket;->getSoTimeout()I

    move-result v9

    move-object v6, p1

    move v7, p2

    move v8, p3

    .line 548
    invoke-virtual/range {v4 .. v9}, Lorg/conscrypt/NativeSsl;->read(Ljava/io/FileDescriptor;[BIII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_5f

    .line 551
    iget-object p2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {p2}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->access$100(Lorg/conscrypt/ConscryptFileDescriptorSocket;)Lorg/conscrypt/NativeSsl;

    move-result-object p2

    monitor-enter p2
    :try_end_4a
    .catchall {:try_start_25 .. :try_end_4a} :catchall_6c

    .line 552
    :try_start_4a
    iget-object p3, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {p3}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->access$200(Lorg/conscrypt/ConscryptFileDescriptorSocket;)I

    move-result p3

    if-eq p3, v3, :cond_54

    .line 555
    monitor-exit p2

    goto :goto_5f

    .line 553
    :cond_54
    new-instance p1, Ljava/net/SocketException;

    const-string p3, "socket is closed"

    invoke-direct {p1, p3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_5c
    move-exception p1

    .line 555
    monitor-exit p2
    :try_end_5e
    .catchall {:try_start_4a .. :try_end_5e} :catchall_5c

    :try_start_5e
    throw p1

    .line 557
    :cond_5f
    :goto_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5e .. :try_end_60} :catchall_6c

    return p1

    .line 540
    :cond_61
    :try_start_61
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "socket is closed"

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_69
    move-exception p1

    .line 546
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_61 .. :try_end_6b} :catchall_69

    :try_start_6b
    throw p1

    :catchall_6c
    move-exception p1

    .line 558
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6c

    throw p1
.end method
