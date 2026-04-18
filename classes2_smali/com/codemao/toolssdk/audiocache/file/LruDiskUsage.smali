.class public abstract Lcom/codemao/toolssdk/audiocache/file/LruDiskUsage;
.super Ljava/lang/Object;
.source "LruDiskUsage.java"

# interfaces
.implements Lcom/codemao/toolssdk/audiocache/file/DiskUsage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/audiocache/file/LruDiskUsage$TouchCallable;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private final workerThread:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "LruDiskUsage"

    .line 20
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/codemao/toolssdk/audiocache/file/LruDiskUsage;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/audiocache/file/LruDiskUsage;->workerThread:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/toolssdk/audiocache/file/LruDiskUsage;Ljava/io/File;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/audiocache/file/LruDiskUsage;->touchInBackground(Ljava/io/File;)V

    return-void
.end method

.method private countTotalSize(Ljava/util/List;)J
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)J"
        }
    .end annotation

    .line 57
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 58
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_6

    :cond_18
    return-wide v0
.end method

.method private touchInBackground(Ljava/io/File;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-static {p1}, Lcom/codemao/toolssdk/audiocache/file/Files;->setLastModifiedNow(Ljava/io/File;)V

    .line 30
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/toolssdk/audiocache/file/Files;->getLruListFiles(Ljava/io/File;)Ljava/util/List;

    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/audiocache/file/LruDiskUsage;->trim(Ljava/util/List;)V

    return-void
.end method

.method private trim(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/audiocache/file/LruDiskUsage;->countTotalSize(Ljava/util/List;)J

    move-result-wide v0

    .line 38
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 39
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 40
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/codemao/toolssdk/audiocache/file/LruDiskUsage;->accept(Ljava/io/File;JI)Z

    move-result v4

    if-nez v4, :cond_c

    .line 42
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 43
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_47

    add-int/lit8 v2, v2, -0x1

    sub-long/2addr v0, v4

    .line 47
    sget-object v4, Lcom/codemao/toolssdk/audiocache/file/LruDiskUsage;->LOG:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cache file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is deleted because it exceeds cache limit"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_c

    .line 49
    :cond_47
    sget-object v4, Lcom/codemao/toolssdk/audiocache/file/LruDiskUsage;->LOG:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error deleting file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for trimming cache"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_c

    :cond_63
    return-void
.end method


# virtual methods
.method protected abstract accept(Ljava/io/File;JI)Z
.end method

.method public touch(Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/file/LruDiskUsage;->workerThread:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/codemao/toolssdk/audiocache/file/LruDiskUsage$TouchCallable;

    invoke-direct {v1, p0, p1}, Lcom/codemao/toolssdk/audiocache/file/LruDiskUsage$TouchCallable;-><init>(Lcom/codemao/toolssdk/audiocache/file/LruDiskUsage;Ljava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method
