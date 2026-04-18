.class public Lcom/tencent/smtt/utils/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static a:Ljava/lang/String; = "TBSFileLock"

.field private static f:Ljava/lang/Object;

.field private static g:Ljava/lang/Object;

.field private static h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/tencent/smtt/utils/k;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Landroid/os/Handler;


# instance fields
.field b:Ljava/io/File;

.field c:Ljava/io/RandomAccessFile;

.field d:Ljava/nio/channels/FileLock;

.field e:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/smtt/utils/k;->f:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/smtt/utils/k;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/utils/k;->b:Ljava/io/File;

    iput-object v0, p0, Lcom/tencent/smtt/utils/k;->c:Ljava/io/RandomAccessFile;

    iput-object v0, p0, Lcom/tencent/smtt/utils/k;->d:Ljava/nio/channels/FileLock;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/smtt/utils/k;->e:J

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".lock"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/smtt/utils/k;->b:Ljava/io/File;

    return-void
.end method


# virtual methods
.method a()Landroid/os/Handler;
    .registers 4

    sget-object v0, Lcom/tencent/smtt/utils/k;->i:Landroid/os/Handler;

    if-nez v0, :cond_25

    const-class v0, Lcom/tencent/smtt/utils/k;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/tencent/smtt/utils/k;->i:Landroid/os/Handler;

    if-nez v1, :cond_20

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "QBFileLock.Thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/tencent/smtt/utils/k;->i:Landroid/os/Handler;

    :cond_20
    monitor-exit v0

    goto :goto_25

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_22

    throw v1

    :cond_25
    :goto_25
    sget-object v0, Lcom/tencent/smtt/utils/k;->i:Landroid/os/Handler;

    return-object v0
.end method

.method public declared-synchronized a(Z)V
    .registers 8

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/tencent/smtt/utils/k;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> release lock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/smtt/utils/k;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/tencent/smtt/utils/k;->d:Ljava/nio/channels/FileLock;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_50

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    :try_start_22
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26
    .catchall {:try_start_22 .. :try_end_25} :catchall_50

    goto :goto_2a

    :catch_26
    move-exception v0

    :try_start_27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2a
    iput-object v1, p0, Lcom/tencent/smtt/utils/k;->d:Ljava/nio/channels/FileLock;

    :cond_2c
    iget-object v0, p0, Lcom/tencent/smtt/utils/k;->c:Ljava/io/RandomAccessFile;
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_50

    if-eqz v0, :cond_3a

    :try_start_30
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_34
    .catchall {:try_start_30 .. :try_end_33} :catchall_50

    goto :goto_38

    :catch_34
    move-exception v0

    :try_start_35
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_38
    iput-object v1, p0, Lcom/tencent/smtt/utils/k;->c:Ljava/io/RandomAccessFile;

    :cond_3a
    sget-object v0, Lcom/tencent/smtt/utils/k;->i:Landroid/os/Handler;

    if-eqz v0, :cond_49

    iget-wide v1, p0, Lcom/tencent/smtt/utils/k;->e:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_49

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_49
    if-eqz p1, :cond_4e

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/k;->d()V
    :try_end_4e
    .catchall {:try_start_35 .. :try_end_4e} :catchall_50

    :cond_4e
    monitor-exit p0

    return-void

    :catchall_50
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()V
    .registers 10

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/tencent/smtt/utils/k;->b:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/smtt/utils/k;->c:Ljava/io/RandomAccessFile;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_10
    .catchall {:try_start_1 .. :try_end_c} :catchall_d

    goto :goto_14

    :catchall_d
    move-exception v0

    goto/16 :goto_9a

    :catch_10
    move-exception v0

    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_14
    iget-object v0, p0, Lcom/tencent/smtt/utils/k;->c:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_91

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    if-eqz v0, :cond_91

    iget-wide v1, p0, Lcom/tencent/smtt/utils/k;->e:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2f

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/k;->a()Landroid/os/Handler;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/smtt/utils/k;->e:J

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2f
    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_34
    .catchall {:try_start_11 .. :try_end_34} :catchall_d

    :cond_34
    :try_start_34
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v1
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_38} :catch_3b
    .catchall {:try_start_34 .. :try_end_38} :catchall_d

    if-eqz v1, :cond_46

    goto :goto_66

    :catch_3b
    move-exception v4

    :try_start_3c
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v4, Lcom/tencent/smtt/utils/k;->a:Ljava/lang/String;

    const-string v5, ">>> lock failed, sleep..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_d

    :cond_46
    const-wide/16 v4, 0x32

    :try_start_48
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4b
    .catch Ljava/lang/InterruptedException; {:try_start_48 .. :try_end_4b} :catch_4c
    .catchall {:try_start_48 .. :try_end_4b} :catchall_d

    goto :goto_50

    :catch_4c
    move-exception v4

    :try_start_4d
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    cmp-long v8, v4, v6

    if-ltz v8, :cond_34

    sget-object v0, Lcom/tencent/smtt/utils/k;->a:Ljava/lang/String;

    const-string v4, ">>> lock timeout, quit..."

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_66
    iput-object v1, p0, Lcom/tencent/smtt/utils/k;->d:Ljava/nio/channels/FileLock;

    sget-object v0, Lcom/tencent/smtt/utils/k;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> lock ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/smtt/utils/k;->b:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] cost: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_91
    iget-object v0, p0, Lcom/tencent/smtt/utils/k;->d:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_98

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/k;->c()V
    :try_end_98
    .catchall {:try_start_4d .. :try_end_98} :catchall_d

    :cond_98
    monitor-exit p0

    return-void

    :goto_9a
    monitor-exit p0

    throw v0
.end method

.method c()V
    .registers 4

    sget-object v0, Lcom/tencent/smtt/utils/k;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/tencent/smtt/utils/k;->h:Ljava/util/HashMap;

    if-nez v1, :cond_e

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/tencent/smtt/utils/k;->h:Ljava/util/HashMap;

    :cond_e
    sget-object v1, Lcom/tencent/smtt/utils/k;->h:Ljava/util/HashMap;

    sget-object v2, Lcom/tencent/smtt/utils/k;->f:Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method d()V
    .registers 3

    sget-object v0, Lcom/tencent/smtt/utils/k;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/tencent/smtt/utils/k;->h:Ljava/util/HashMap;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public e()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/smtt/utils/k;->a(Z)V

    return-void
.end method

.method public run()V
    .registers 3

    sget-object v0, Lcom/tencent/smtt/utils/k;->a:Ljava/lang/String;

    const-string v1, ">>> releaseLock on TimeOut"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/k;->e()V

    return-void
.end method
