.class final Lokhttp3/internal/cache/DiskLruCache$cleanupRunnable$1;
.super Ljava/lang/Object;
.source "DiskLruCache.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/cache/DiskLruCache;-><init>(Lokhttp3/internal/io/FileSystem;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDiskLruCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiskLruCache.kt\nokhttp3/internal/cache/DiskLruCache$cleanupRunnable$1\n*L\n1#1,1004:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/cache/DiskLruCache;


# direct methods
.method constructor <init>(Lokhttp3/internal/cache/DiskLruCache;)V
    .registers 2

    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$cleanupRunnable$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 169
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$cleanupRunnable$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 170
    :try_start_3
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$cleanupRunnable$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-static {v1}, Lokhttp3/internal/cache/DiskLruCache;->access$getInitialized$p(Lokhttp3/internal/cache/DiskLruCache;)Z

    move-result v1

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$cleanupRunnable$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache;->getClosed$okhttp()Z

    move-result v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_4c

    if-eqz v1, :cond_14

    goto :goto_4a

    :cond_14
    const/4 v1, 0x1

    .line 175
    :try_start_15
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$cleanupRunnable$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v2}, Lokhttp3/internal/cache/DiskLruCache;->trimToSize()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_1b
    .catchall {:try_start_15 .. :try_end_1a} :catchall_4c

    goto :goto_20

    .line 177
    :catch_1b
    :try_start_1b
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$cleanupRunnable$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-static {v2, v1}, Lokhttp3/internal/cache/DiskLruCache;->access$setMostRecentTrimFailed$p(Lokhttp3/internal/cache/DiskLruCache;Z)V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_4c

    .line 181
    :goto_20
    :try_start_20
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$cleanupRunnable$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-static {v2}, Lokhttp3/internal/cache/DiskLruCache;->access$journalRebuildRequired(Lokhttp3/internal/cache/DiskLruCache;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 182
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$cleanupRunnable$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v2}, Lokhttp3/internal/cache/DiskLruCache;->rebuildJournal$okhttp()V

    .line 183
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$cleanupRunnable$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lokhttp3/internal/cache/DiskLruCache;->access$setRedundantOpCount$p(Lokhttp3/internal/cache/DiskLruCache;I)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_33} :catch_34
    .catchall {:try_start_20 .. :try_end_33} :catchall_4c

    goto :goto_46

    .line 186
    :catch_34
    :try_start_34
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$cleanupRunnable$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-static {v2, v1}, Lokhttp3/internal/cache/DiskLruCache;->access$setMostRecentRebuildFailed$p(Lokhttp3/internal/cache/DiskLruCache;Z)V

    .line 187
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$cleanupRunnable$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-static {}, Lokio/Okio;->blackhole()Lokio/Sink;

    move-result-object v2

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v2

    invoke-static {v1, v2}, Lokhttp3/internal/cache/DiskLruCache;->access$setJournalWriter$p(Lokhttp3/internal/cache/DiskLruCache;Lokio/BufferedSink;)V

    .line 189
    :cond_46
    :goto_46
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_48
    .catchall {:try_start_34 .. :try_end_48} :catchall_4c

    .line 169
    monitor-exit v0

    return-void

    .line 171
    :cond_4a
    :goto_4a
    monitor-exit v0

    return-void

    :catchall_4c
    move-exception v1

    .line 169
    monitor-exit v0

    throw v1
.end method
