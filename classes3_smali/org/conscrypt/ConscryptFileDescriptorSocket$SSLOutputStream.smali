.class Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;
.super Ljava/io/OutputStream;
.source "ConscryptFileDescriptorSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/ConscryptFileDescriptorSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SSLOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/conscrypt/ConscryptFileDescriptorSocket;)V
    .registers 2

    .line 592
    iput-object p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 590
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->writeLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method awaitPendingOps()V
    .registers 3

    .line 650
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->writeLock:Ljava/lang/Object;

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

.method public write(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 603
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 612
    invoke-static {}, Lorg/conscrypt/Platform;->blockGuardOnNetwork()V

    .line 613
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->checkOpen()V

    .line 614
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lorg/conscrypt/ArrayUtils;->checkOffsetAndCount(III)V

    if-nez p3, :cond_f

    return-void

    .line 619
    :cond_f
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->writeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 620
    :try_start_12
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v1}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->access$100(Lorg/conscrypt/ConscryptFileDescriptorSocket;)Lorg/conscrypt/NativeSsl;

    move-result-object v1

    monitor-enter v1
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_66

    .line 621
    :try_start_19
    iget-object v2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v2}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->access$200(Lorg/conscrypt/ConscryptFileDescriptorSocket;)I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_5b

    .line 628
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_63

    .line 630
    :try_start_24
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v1}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->access$100(Lorg/conscrypt/ConscryptFileDescriptorSocket;)Lorg/conscrypt/NativeSsl;

    move-result-object v4

    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    iget-object v1, v1, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-static {v1}, Lorg/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v5

    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    .line 631
    invoke-static {v1}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->access$300(Lorg/conscrypt/ConscryptFileDescriptorSocket;)I

    move-result v9

    move-object v6, p1

    move v7, p2

    move v8, p3

    .line 630
    invoke-virtual/range {v4 .. v9}, Lorg/conscrypt/NativeSsl;->write(Ljava/io/FileDescriptor;[BIII)V

    .line 633
    iget-object p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {p1}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->access$100(Lorg/conscrypt/ConscryptFileDescriptorSocket;)Lorg/conscrypt/NativeSsl;

    move-result-object p1

    monitor-enter p1
    :try_end_45
    .catchall {:try_start_24 .. :try_end_45} :catchall_66

    .line 634
    :try_start_45
    iget-object p2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {p2}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->access$200(Lorg/conscrypt/ConscryptFileDescriptorSocket;)I

    move-result p2

    if-eq p2, v3, :cond_50

    .line 637
    monitor-exit p1
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_58

    .line 638
    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_66

    return-void

    .line 635
    :cond_50
    :try_start_50
    new-instance p2, Ljava/net/SocketException;

    const-string p3, "socket is closed"

    invoke-direct {p2, p3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_58
    move-exception p2

    .line 637
    monitor-exit p1
    :try_end_5a
    .catchall {:try_start_50 .. :try_end_5a} :catchall_58

    :try_start_5a
    throw p2
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_66

    .line 622
    :cond_5b
    :try_start_5b
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "socket is closed"

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_63
    move-exception p1

    .line 628
    monitor-exit v1
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_63

    :try_start_65
    throw p1

    :catchall_66
    move-exception p1

    .line 638
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_66

    throw p1
.end method
