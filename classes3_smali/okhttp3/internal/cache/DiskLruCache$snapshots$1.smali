.class public final Lokhttp3/internal/cache/DiskLruCache$snapshots$1;
.super Ljava/lang/Object;
.source "DiskLruCache.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/cache/DiskLruCache;->snapshots()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lokhttp3/internal/cache/DiskLruCache$Snapshot;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDiskLruCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiskLruCache.kt\nokhttp3/internal/cache/DiskLruCache$snapshots$1\n*L\n1#1,1004:1\n*E\n"
.end annotation


# instance fields
.field private final delegate:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lokhttp3/internal/cache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private nextSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

.field private removeSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

.field final synthetic this$0:Lokhttp3/internal/cache/DiskLruCache;


# direct methods
.method constructor <init>(Lokhttp3/internal/cache/DiskLruCache;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 690
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$snapshots$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 692
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache;->getLruEntries$okhttp()Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, "ArrayList(lruEntries.values).iterator()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$snapshots$1;->delegate:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final getDelegate()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lokhttp3/internal/cache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation

    .line 692
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$snapshots$1;->delegate:Ljava/util/Iterator;

    return-object v0
.end method

.method public final getNextSnapshot()Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    .registers 2

    .line 695
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$snapshots$1;->nextSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    return-object v0
.end method

.method public final getRemoveSnapshot()Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    .registers 2

    .line 698
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$snapshots$1;->removeSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    return-object v0
.end method

.method public hasNext()Z
    .registers 6

    .line 701
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$snapshots$1;->nextSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 703
    :cond_6
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$snapshots$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 705
    :try_start_9
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$snapshots$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v2}, Lokhttp3/internal/cache/DiskLruCache;->getClosed$okhttp()Z

    move-result v2
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_3b

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    monitor-exit v0

    return v3

    .line 707
    :cond_14
    :goto_14
    :try_start_14
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$snapshots$1;->delegate:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 708
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$snapshots$1;->delegate:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/internal/cache/DiskLruCache$Entry;

    if-eqz v2, :cond_14

    .line 709
    invoke-virtual {v2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getReadable$okhttp()Z

    move-result v4

    if-nez v4, :cond_2d

    goto :goto_14

    .line 711
    :cond_2d
    invoke-virtual {v2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->snapshot$okhttp()Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 713
    iput-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$snapshots$1;->nextSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    :try_end_35
    .catchall {:try_start_14 .. :try_end_35} :catchall_3b

    .line 714
    monitor-exit v0

    return v1

    .line 716
    :cond_37
    :try_start_37
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_39
    .catchall {:try_start_37 .. :try_end_39} :catchall_3b

    .line 703
    monitor-exit v0

    return v3

    :catchall_3b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 690
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$snapshots$1;->next()Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    move-result-object v0

    return-object v0
.end method

.method public next()Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    .registers 3

    .line 722
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$snapshots$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 723
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$snapshots$1;->nextSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$snapshots$1;->removeSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    const/4 v1, 0x0

    .line 724
    iput-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$snapshots$1;->nextSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    if-nez v0, :cond_12

    .line 725
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_12
    return-object v0

    .line 722
    :cond_13
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 4

    .line 729
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$snapshots$1;->removeSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    if-eqz v0, :cond_16

    const/4 v1, 0x0

    .line 732
    :try_start_5
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$snapshots$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->key()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lokhttp3/internal/cache/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_e} :catch_13
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    goto :goto_13

    :catchall_f
    move-exception v0

    .line 737
    iput-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$snapshots$1;->removeSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    throw v0

    :catch_13
    :goto_13
    iput-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$snapshots$1;->removeSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    return-void

    .line 730
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() before next()"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setNextSnapshot(Lokhttp3/internal/cache/DiskLruCache$Snapshot;)V
    .registers 2

    .line 695
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$snapshots$1;->nextSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    return-void
.end method

.method public final setRemoveSnapshot(Lokhttp3/internal/cache/DiskLruCache$Snapshot;)V
    .registers 2

    .line 698
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$snapshots$1;->removeSnapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    return-void
.end method
