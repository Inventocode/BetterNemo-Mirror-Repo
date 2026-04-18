.class final Lokhttp3/Cache$RealCacheRequest;
.super Ljava/lang/Object;
.source "Cache.kt"

# interfaces
.implements Lokhttp3/internal/cache/CacheRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RealCacheRequest"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cache.kt\nokhttp3/Cache$RealCacheRequest\n*L\n1#1,779:1\n*E\n"
.end annotation


# instance fields
.field private final body:Lokio/Sink;

.field private final cacheOut:Lokio/Sink;

.field private done:Z

.field private final editor:Lokhttp3/internal/cache/DiskLruCache$Editor;

.field final synthetic this$0:Lokhttp3/Cache;


# direct methods
.method public constructor <init>(Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/internal/cache/DiskLruCache$Editor;",
            ")V"
        }
    .end annotation

    const-string v0, "editor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    iput-object p1, p0, Lokhttp3/Cache$RealCacheRequest;->this$0:Lokhttp3/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lokhttp3/Cache$RealCacheRequest;->editor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    const/4 p1, 0x1

    .line 387
    invoke-virtual {p2, p1}, Lokhttp3/internal/cache/DiskLruCache$Editor;->newSink(I)Lokio/Sink;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/Cache$RealCacheRequest;->cacheOut:Lokio/Sink;

    .line 392
    new-instance p2, Lokhttp3/Cache$RealCacheRequest$1;

    invoke-direct {p2, p0, p1}, Lokhttp3/Cache$RealCacheRequest$1;-><init>(Lokhttp3/Cache$RealCacheRequest;Lokio/Sink;)V

    iput-object p2, p0, Lokhttp3/Cache$RealCacheRequest;->body:Lokio/Sink;

    return-void
.end method

.method public static final synthetic access$getEditor$p(Lokhttp3/Cache$RealCacheRequest;)Lokhttp3/internal/cache/DiskLruCache$Editor;
    .registers 1

    .line 384
    iget-object p0, p0, Lokhttp3/Cache$RealCacheRequest;->editor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    return-object p0
.end method


# virtual methods
.method public abort()V
    .registers 5

    .line 407
    iget-object v0, p0, Lokhttp3/Cache$RealCacheRequest;->this$0:Lokhttp3/Cache;

    monitor-enter v0

    .line 408
    :try_start_3
    iget-boolean v1, p0, Lokhttp3/Cache$RealCacheRequest;->done:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_22

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x1

    .line 409
    :try_start_a
    iput-boolean v1, p0, Lokhttp3/Cache$RealCacheRequest;->done:Z

    .line 410
    iget-object v2, p0, Lokhttp3/Cache$RealCacheRequest;->this$0:Lokhttp3/Cache;

    invoke-virtual {v2}, Lokhttp3/Cache;->getWriteAbortCount$okhttp()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lokhttp3/Cache;->setWriteAbortCount$okhttp(I)V
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_22

    .line 407
    monitor-exit v0

    .line 412
    iget-object v0, p0, Lokhttp3/Cache$RealCacheRequest;->cacheOut:Lokio/Sink;

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 414
    :try_start_1c
    iget-object v0, p0, Lokhttp3/Cache$RealCacheRequest;->editor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->abort()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_21} :catch_21

    :catch_21
    return-void

    :catchall_22
    move-exception v1

    .line 407
    monitor-exit v0

    throw v1
.end method

.method public body()Lokio/Sink;
    .registers 2

    .line 419
    iget-object v0, p0, Lokhttp3/Cache$RealCacheRequest;->body:Lokio/Sink;

    return-object v0
.end method

.method public final getDone$okhttp()Z
    .registers 2

    .line 389
    iget-boolean v0, p0, Lokhttp3/Cache$RealCacheRequest;->done:Z

    return v0
.end method

.method public final setDone$okhttp(Z)V
    .registers 2

    .line 389
    iput-boolean p1, p0, Lokhttp3/Cache$RealCacheRequest;->done:Z

    return-void
.end method
