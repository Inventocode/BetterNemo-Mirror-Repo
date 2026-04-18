.class public final Lokhttp3/Cache$RealCacheRequest$1;
.super Lokio/ForwardingSink;
.source "Cache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/Cache$RealCacheRequest;-><init>(Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cache.kt\nokhttp3/Cache$RealCacheRequest$1\n*L\n1#1,779:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/Cache$RealCacheRequest;


# direct methods
.method constructor <init>(Lokhttp3/Cache$RealCacheRequest;Lokio/Sink;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Sink;",
            ")V"
        }
    .end annotation

    .line 392
    iput-object p1, p0, Lokhttp3/Cache$RealCacheRequest$1;->this$0:Lokhttp3/Cache$RealCacheRequest;

    invoke-direct {p0, p2}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lokhttp3/Cache$RealCacheRequest$1;->this$0:Lokhttp3/Cache$RealCacheRequest;

    iget-object v0, v0, Lokhttp3/Cache$RealCacheRequest;->this$0:Lokhttp3/Cache;

    monitor-enter v0

    .line 396
    :try_start_5
    iget-object v1, p0, Lokhttp3/Cache$RealCacheRequest$1;->this$0:Lokhttp3/Cache$RealCacheRequest;

    invoke-virtual {v1}, Lokhttp3/Cache$RealCacheRequest;->getDone$okhttp()Z

    move-result v1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_2f

    if-eqz v1, :cond_f

    monitor-exit v0

    return-void

    .line 397
    :cond_f
    :try_start_f
    iget-object v1, p0, Lokhttp3/Cache$RealCacheRequest$1;->this$0:Lokhttp3/Cache$RealCacheRequest;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lokhttp3/Cache$RealCacheRequest;->setDone$okhttp(Z)V

    .line 398
    iget-object v1, p0, Lokhttp3/Cache$RealCacheRequest$1;->this$0:Lokhttp3/Cache$RealCacheRequest;

    iget-object v1, v1, Lokhttp3/Cache$RealCacheRequest;->this$0:Lokhttp3/Cache;

    invoke-virtual {v1}, Lokhttp3/Cache;->getWriteSuccessCount$okhttp()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lokhttp3/Cache;->setWriteSuccessCount$okhttp(I)V
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_2f

    .line 395
    monitor-exit v0

    .line 400
    invoke-super {p0}, Lokio/ForwardingSink;->close()V

    .line 401
    iget-object v0, p0, Lokhttp3/Cache$RealCacheRequest$1;->this$0:Lokhttp3/Cache$RealCacheRequest;

    invoke-static {v0}, Lokhttp3/Cache$RealCacheRequest;->access$getEditor$p(Lokhttp3/Cache$RealCacheRequest;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->commit()V

    return-void

    :catchall_2f
    move-exception v1

    .line 395
    monitor-exit v0

    throw v1
.end method
