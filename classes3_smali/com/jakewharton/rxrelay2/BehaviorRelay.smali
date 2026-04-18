.class public final Lcom/jakewharton/rxrelay2/BehaviorRelay;
.super Lcom/jakewharton/rxrelay2/Relay;
.source "BehaviorRelay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/jakewharton/rxrelay2/Relay<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;

.field private static final EMPTY_ARRAY:[Ljava/lang/Object;


# instance fields
.field index:J

.field final readLock:Ljava/util/concurrent/locks/Lock;

.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final value:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field final writeLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 57
    sput-object v1, Lcom/jakewharton/rxrelay2/BehaviorRelay;->EMPTY_ARRAY:[Ljava/lang/Object;

    new-array v0, v0, [Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;

    .line 64
    sput-object v0, Lcom/jakewharton/rxrelay2/BehaviorRelay;->EMPTY:[Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 98
    invoke-direct {p0}, Lcom/jakewharton/rxrelay2/Relay;-><init>()V

    .line 99
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 100
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    iput-object v1, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 101
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay;->writeLock:Ljava/util/concurrent/locks/Lock;

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/jakewharton/rxrelay2/BehaviorRelay;->EMPTY:[Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay;->value:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Lcom/jakewharton/rxrelay2/BehaviorRelay;-><init>()V

    const-string v0, "defaultValue == null"

    .line 113
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void
.end method

.method public static create()Lcom/jakewharton/rxrelay2/BehaviorRelay;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/jakewharton/rxrelay2/BehaviorRelay<",
            "TT;>;"
        }
    .end annotation

    .line 77
    new-instance v0, Lcom/jakewharton/rxrelay2/BehaviorRelay;

    invoke-direct {v0}, Lcom/jakewharton/rxrelay2/BehaviorRelay;-><init>()V

    return-object v0
.end method

.method public static createDefault(Ljava/lang/Object;)Lcom/jakewharton/rxrelay2/BehaviorRelay;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/jakewharton/rxrelay2/BehaviorRelay<",
            "TT;>;"
        }
    .end annotation

    .line 91
    new-instance v0, Lcom/jakewharton/rxrelay2/BehaviorRelay;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxrelay2/BehaviorRelay;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "value == null"

    .line 131
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 133
    invoke-virtual {p0, p1}, Lcom/jakewharton/rxrelay2/BehaviorRelay;->setCurrent(Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_1e

    aget-object v3, v0, v2

    .line 135
    iget-wide v4, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay;->index:J

    invoke-virtual {v3, p1, v4, v5}, Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;->emitNext(Ljava/lang/Object;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_1e
    return-void
.end method

.method add(Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable<",
            "TT;>;)V"
        }
    .end annotation

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;

    .line 216
    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    .line 218
    new-array v2, v2, [Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;

    const/4 v3, 0x0

    .line 219
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    aput-object p1, v2, v1

    .line 221
    iget-object v1, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasObservers()Z
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;

    array-length v0, v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method remove(Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable<",
            "TT;>;)V"
        }
    .end annotation

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;

    .line 231
    array-length v1, v0

    if-nez v1, :cond_c

    return-void

    :cond_c
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v1, :cond_1a

    .line 237
    aget-object v5, v0, v4

    if-ne v5, p1, :cond_17

    move v2, v4

    goto :goto_1a

    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_1a
    :goto_1a
    if-gez v2, :cond_1d

    return-void

    :cond_1d
    const/4 v4, 0x1

    if-ne v1, v4, :cond_23

    .line 248
    sget-object v1, Lcom/jakewharton/rxrelay2/BehaviorRelay;->EMPTY:[Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;

    goto :goto_32

    :cond_23
    add-int/lit8 v5, v1, -0x1

    .line 250
    new-array v5, v5, [Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;

    .line 251
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 252
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 254
    :goto_32
    iget-object v2, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method setCurrent(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 262
    iget-wide v0, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay;->index:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay;->index:J

    .line 263
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 264
    iget-object p1, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
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

    .line 119
    new-instance v0, Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;

    invoke-direct {v0, p1, p0}, Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;-><init>(Lio/reactivex/Observer;Lcom/jakewharton/rxrelay2/BehaviorRelay;)V

    .line 120
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/jakewharton/rxrelay2/BehaviorRelay;->add(Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;)V

    .line 122
    iget-boolean p1, v0, Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;->cancelled:Z

    if-eqz p1, :cond_13

    .line 123
    invoke-virtual {p0, v0}, Lcom/jakewharton/rxrelay2/BehaviorRelay;->remove(Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;)V

    goto :goto_16

    .line 125
    :cond_13
    invoke-virtual {v0}, Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;->emitFirst()V

    :goto_16
    return-void
.end method
