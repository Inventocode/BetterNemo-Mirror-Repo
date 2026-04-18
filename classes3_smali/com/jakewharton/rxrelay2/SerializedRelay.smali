.class final Lcom/jakewharton/rxrelay2/SerializedRelay;
.super Lcom/jakewharton/rxrelay2/Relay;
.source "SerializedRelay.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/jakewharton/rxrelay2/Relay<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final actual:Lcom/jakewharton/rxrelay2/Relay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jakewharton/rxrelay2/Relay<",
            "TT;>;"
        }
    .end annotation
.end field

.field private emitting:Z

.field private queue:Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/jakewharton/rxrelay2/Relay;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jakewharton/rxrelay2/Relay<",
            "TT;>;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lcom/jakewharton/rxrelay2/Relay;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/jakewharton/rxrelay2/SerializedRelay;->actual:Lcom/jakewharton/rxrelay2/Relay;

    return-void
.end method

.method private emitLoop()V
    .registers 3

    .line 65
    :goto_0
    monitor-enter p0

    .line 66
    :try_start_1
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/SerializedRelay;->queue:Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/jakewharton/rxrelay2/SerializedRelay;->emitting:Z

    .line 69
    monitor-exit p0

    return-void

    :cond_a
    const/4 v1, 0x0

    .line 71
    iput-object v1, p0, Lcom/jakewharton/rxrelay2/SerializedRelay;->queue:Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList;

    .line 72
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_14

    .line 73
    iget-object v1, p0, Lcom/jakewharton/rxrelay2/SerializedRelay;->actual:Lcom/jakewharton/rxrelay2/Relay;

    invoke-virtual {v0, v1}, Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList;->accept(Lcom/jakewharton/rxrelay2/Relay;)V

    goto :goto_0

    :catchall_14
    move-exception v0

    .line 72
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 45
    monitor-enter p0

    .line 46
    :try_start_1
    iget-boolean v0, p0, Lcom/jakewharton/rxrelay2/SerializedRelay;->emitting:Z

    if-eqz v0, :cond_16

    .line 47
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/SerializedRelay;->queue:Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList;

    if-nez v0, :cond_11

    .line 49
    new-instance v0, Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList;-><init>(I)V

    .line 50
    iput-object v0, p0, Lcom/jakewharton/rxrelay2/SerializedRelay;->queue:Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList;

    .line 52
    :cond_11
    invoke-virtual {v0, p1}, Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList;->add(Ljava/lang/Object;)V

    .line 53
    monitor-exit p0

    return-void

    :cond_16
    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/jakewharton/rxrelay2/SerializedRelay;->emitting:Z

    .line 56
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_23

    .line 57
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/SerializedRelay;->actual:Lcom/jakewharton/rxrelay2/Relay;

    invoke-virtual {v0, p1}, Lcom/jakewharton/rxrelay2/Relay;->accept(Ljava/lang/Object;)V

    .line 58
    invoke-direct {p0}, Lcom/jakewharton/rxrelay2/SerializedRelay;->emitLoop()V

    return-void

    :catchall_23
    move-exception p1

    .line 56
    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public hasObservers()Z
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/SerializedRelay;->actual:Lcom/jakewharton/rxrelay2/Relay;

    invoke-virtual {v0}, Lcom/jakewharton/rxrelay2/Relay;->hasObservers()Z

    move-result v0

    return v0
.end method

.method protected subscribeActual(Lio/reactivex/Observer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/SerializedRelay;->actual:Lcom/jakewharton/rxrelay2/Relay;

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
