.class public final Lokhttp3/Cache$urls$1;
.super Ljava/lang/Object;
.source "Cache.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/Cache;->urls()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cache.kt\nokhttp3/Cache$urls$1\n*L\n1#1,779:1\n*E\n"
.end annotation


# instance fields
.field private canRemove:Z

.field private final delegate:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lokhttp3/internal/cache/DiskLruCache$Snapshot;",
            ">;"
        }
    .end annotation
.end field

.field private nextUrl:Ljava/lang/String;

.field final synthetic this$0:Lokhttp3/Cache;


# direct methods
.method constructor <init>(Lokhttp3/Cache;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 292
    iput-object p1, p0, Lokhttp3/Cache$urls$1;->this$0:Lokhttp3/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    invoke-virtual {p1}, Lokhttp3/Cache;->getCache$okhttp()Lokhttp3/internal/cache/DiskLruCache;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache;->snapshots()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/Cache$urls$1;->delegate:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final getCanRemove()Z
    .registers 2

    .line 295
    iget-boolean v0, p0, Lokhttp3/Cache$urls$1;->canRemove:Z

    return v0
.end method

.method public final getDelegate()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lokhttp3/internal/cache/DiskLruCache$Snapshot;",
            ">;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lokhttp3/Cache$urls$1;->delegate:Ljava/util/Iterator;

    return-object v0
.end method

.method public final getNextUrl()Ljava/lang/String;
    .registers 2

    .line 294
    iget-object v0, p0, Lokhttp3/Cache$urls$1;->nextUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hasNext()Z
    .registers 6

    .line 298
    iget-object v0, p0, Lokhttp3/Cache$urls$1;->nextUrl:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    .line 300
    iput-boolean v0, p0, Lokhttp3/Cache$urls$1;->canRemove:Z

    .line 301
    :goto_9
    iget-object v2, p0, Lokhttp3/Cache$urls$1;->delegate:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 303
    :try_start_11
    iget-object v2, p0, Lokhttp3/Cache$urls$1;->delegate:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_19} :catch_36

    const/4 v3, 0x0

    :try_start_1a
    move-object v4, v2

    check-cast v4, Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    .line 304
    invoke-virtual {v4, v0}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->getSource(I)Lokio/Source;

    move-result-object v4

    invoke-static {v4}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v4

    .line 305
    invoke-interface {v4}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lokhttp3/Cache$urls$1;->nextUrl:Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_2f

    .line 306
    :try_start_2b
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_36

    return v1

    :catchall_2f
    move-exception v3

    .line 303
    :try_start_30
    throw v3
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception v4

    :try_start_32
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_36} :catch_36

    :catch_36
    nop

    goto :goto_9

    :cond_38
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 292
    invoke-virtual {p0}, Lokhttp3/Cache$urls$1;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .registers 3

    .line 318
    invoke-virtual {p0}, Lokhttp3/Cache$urls$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 319
    iget-object v0, p0, Lokhttp3/Cache$urls$1;->nextUrl:Ljava/lang/String;

    if-nez v0, :cond_d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_d
    const/4 v1, 0x0

    .line 320
    iput-object v1, p0, Lokhttp3/Cache$urls$1;->nextUrl:Ljava/lang/String;

    const/4 v1, 0x1

    .line 321
    iput-boolean v1, p0, Lokhttp3/Cache$urls$1;->canRemove:Z

    return-object v0

    .line 318
    :cond_14
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 3

    .line 326
    iget-boolean v0, p0, Lokhttp3/Cache$urls$1;->canRemove:Z

    if-eqz v0, :cond_a

    .line 327
    iget-object v0, p0, Lokhttp3/Cache$urls$1;->delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    .line 326
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() before next()"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setCanRemove(Z)V
    .registers 2

    .line 295
    iput-boolean p1, p0, Lokhttp3/Cache$urls$1;->canRemove:Z

    return-void
.end method

.method public final setNextUrl(Ljava/lang/String;)V
    .registers 2

    .line 294
    iput-object p1, p0, Lokhttp3/Cache$urls$1;->nextUrl:Ljava/lang/String;

    return-void
.end method
