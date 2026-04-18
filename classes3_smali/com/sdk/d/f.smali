.class public Lcom/sdk/d/f;
.super Ljava/util/AbstractQueue;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/BlockingQueue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdk/d/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TE;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/concurrent/BlockingQueue<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public transient c:Lcom/sdk/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/d/a<",
            "TE;>;"
        }
    .end annotation
.end field

.field public transient d:Lcom/sdk/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/d/a<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/locks/ReentrantLock;

.field public final f:Ljava/util/concurrent/locks/Condition;

.field public final g:Ljava/util/concurrent/locks/ReentrantLock;

.field public final h:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>()V
    .registers 2

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/sdk/d/f;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sdk/d/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/sdk/d/f;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/sdk/d/f;->f:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/sdk/d/f;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/sdk/d/f;->h:Ljava/util/concurrent/locks/Condition;

    if-lez p1, :cond_33

    iput p1, p0, Lcom/sdk/d/f;->a:I

    new-instance p1, Lcom/sdk/d/a;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/sdk/d/a;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sdk/d/f;->c:Lcom/sdk/d/a;

    iput-object p1, p0, Lcom/sdk/d/f;->d:Lcom/sdk/d/a;

    return-void

    :cond_33
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/sdk/d/a;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sdk/d/a<",
            "TE;>;)TE;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_15

    :try_start_4
    iget-object p1, p0, Lcom/sdk/d/f;->c:Lcom/sdk/d/a;

    iget-object v1, p1, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    iput-object p1, p1, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    iput-object v1, p0, Lcom/sdk/d/f;->c:Lcom/sdk/d/a;

    invoke-virtual {v1}, Lcom/sdk/d/a;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0}, Lcom/sdk/d/a;->a(Ljava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_41

    monitor-exit p0

    return-object p1

    :cond_15
    const/4 v1, 0x0

    :try_start_16
    iget-object v2, p0, Lcom/sdk/d/f;->c:Lcom/sdk/d/a;

    :goto_18
    iget-object v3, v2, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    if-eqz v3, :cond_37

    iget-object v4, v3, Lcom/sdk/d/a;->b:Lcom/sdk/d/e;

    iget-object v4, v4, Lcom/sdk/d/e;->a:Lcom/sdk/d/b;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    iget-object v5, p1, Lcom/sdk/d/a;->b:Lcom/sdk/d/e;

    iget-object v5, v5, Lcom/sdk/d/e;->a:Lcom/sdk/d/b;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-le v4, v5, :cond_34

    iput-object p1, v2, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    iput-object v3, p1, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    const/4 v1, 0x1

    goto :goto_37

    :cond_34
    iget-object v2, v2, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    goto :goto_18

    :cond_37
    :goto_37
    if-nez v1, :cond_3f

    iget-object v1, p0, Lcom/sdk/d/f;->d:Lcom/sdk/d/a;

    iput-object p1, v1, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    iput-object p1, p0, Lcom/sdk/d/f;->d:Lcom/sdk/d/a;
    :try_end_3f
    .catchall {:try_start_16 .. :try_end_3f} :catchall_41

    :cond_3f
    monitor-exit p0

    return-object v0

    :catchall_41
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/sdk/d/f;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/sdk/d/f;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method public a(Lcom/sdk/d/a;Lcom/sdk/d/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sdk/d/a<",
            "TE;>;",
            "Lcom/sdk/d/a<",
            "TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sdk/d/a;->a(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    iput-object v0, p2, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    iget-object v0, p0, Lcom/sdk/d/f;->d:Lcom/sdk/d/a;

    if-ne v0, p1, :cond_e

    iput-object p2, p0, Lcom/sdk/d/f;->d:Lcom/sdk/d/a;

    :cond_e
    iget-object p1, p0, Lcom/sdk/d/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result p1

    iget p2, p0, Lcom/sdk/d/f;->a:I

    if-ne p1, p2, :cond_1d

    iget-object p1, p0, Lcom/sdk/d/f;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    :cond_1d
    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/sdk/d/f;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v0, p0, Lcom/sdk/d/f;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public final c()V
    .registers 3

    iget-object v0, p0, Lcom/sdk/d/f;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget-object v1, p0, Lcom/sdk/d/f;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_e

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_e
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public clear()V
    .registers 3

    invoke-virtual {p0}, Lcom/sdk/d/f;->a()V

    :try_start_3
    iget-object v0, p0, Lcom/sdk/d/f;->c:Lcom/sdk/d/a;

    :goto_5
    iget-object v1, v0, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    if-eqz v1, :cond_11

    iput-object v0, v0, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/sdk/d/a;->a(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_5

    :cond_11
    iget-object v0, p0, Lcom/sdk/d/f;->d:Lcom/sdk/d/a;

    iput-object v0, p0, Lcom/sdk/d/f;->c:Lcom/sdk/d/a;

    iget-object v0, p0, Lcom/sdk/d/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    iget v1, p0, Lcom/sdk/d/f;->a:I

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lcom/sdk/d/f;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_29

    :cond_25
    invoke-virtual {p0}, Lcom/sdk/d/f;->b()V

    return-void

    :catchall_29
    move-exception v0

    invoke-virtual {p0}, Lcom/sdk/d/f;->b()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/sdk/d/f;->a()V

    :try_start_7
    iget-object v1, p0, Lcom/sdk/d/f;->c:Lcom/sdk/d/a;

    :cond_9
    iget-object v1, v1, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lcom/sdk/d/a;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_20

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/sdk/d/f;->b()V

    const/4 p1, 0x1

    return p1

    :cond_1c
    invoke-virtual {p0}, Lcom/sdk/d/f;->b()V

    return v0

    :catchall_20
    move-exception p1

    invoke-virtual {p0}, Lcom/sdk/d/f;->b()V

    throw p1
.end method

.method public final d()V
    .registers 3

    iget-object v0, p0, Lcom/sdk/d/f;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget-object v1, p0, Lcom/sdk/d/f;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_e

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_e
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public drainTo(Ljava/util/Collection;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;)I"
        }
    .end annotation

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/sdk/d/f;->drainTo(Ljava/util/Collection;I)I

    move-result p1

    return p1
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;I)I"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq p1, p0, :cond_66

    const/4 v0, 0x0

    if-gtz p2, :cond_9

    return v0

    :cond_9
    iget-object v1, p0, Lcom/sdk/d/f;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_e
    iget-object v2, p0, Lcom/sdk/d/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v2, p0, Lcom/sdk/d/f;->c:Lcom/sdk/d/a;
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_5c

    const/4 v3, 0x0

    :goto_1b
    const/4 v4, 0x1

    if-ge v3, p2, :cond_43

    :try_start_1e
    iget-object v5, v2, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    invoke-virtual {v5}, Lcom/sdk/d/a;->a()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sdk/d/a;->a(Ljava/lang/Object;)V

    iput-object v2, v2, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_31

    add-int/lit8 v3, v3, 0x1

    move-object v2, v5

    goto :goto_1b

    :catchall_31
    move-exception p1

    if-lez v3, :cond_42

    :try_start_34
    iput-object v2, p0, Lcom/sdk/d/f;->c:Lcom/sdk/d/a;

    iget-object p2, p0, Lcom/sdk/d/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v2, v3

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p2

    iget v2, p0, Lcom/sdk/d/f;->a:I

    if-ne p2, v2, :cond_42

    const/4 v0, 0x1

    :cond_42
    throw p1

    :cond_43
    if-lez v3, :cond_53

    iput-object v2, p0, Lcom/sdk/d/f;->c:Lcom/sdk/d/a;

    iget-object p1, p0, Lcom/sdk/d/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v2, v3

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p1

    iget v2, p0, Lcom/sdk/d/f;->a:I
    :try_end_50
    .catchall {:try_start_34 .. :try_end_50} :catchall_5c

    if-ne p1, v2, :cond_53

    const/4 v0, 0x1

    :cond_53
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v0, :cond_5b

    invoke-virtual {p0}, Lcom/sdk/d/f;->d()V

    :cond_5b
    return p2

    :catchall_5c
    move-exception p1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v0, :cond_65

    invoke-virtual {p0}, Lcom/sdk/d/f;->d()V

    :cond_65
    throw p1

    :cond_66
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/sdk/d/f$a;

    invoke-direct {v0, p0}, Lcom/sdk/d/f$a;-><init>(Lcom/sdk/d/f;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sdk/d/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p0, Lcom/sdk/d/f;->a:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_f

    return v3

    :cond_f
    const/4 v1, -0x1

    new-instance v2, Lcom/sdk/d/a;

    invoke-direct {v2, p1}, Lcom/sdk/d/a;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sdk/d/f;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_1a
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget v5, p0, Lcom/sdk/d/f;->a:I

    if-ge v4, v5, :cond_34

    invoke-virtual {p0, v2}, Lcom/sdk/d/f;->a(Lcom/sdk/d/a;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lcom/sdk/d/f;->a:I

    if-ge v0, v2, :cond_34

    iget-object v0, p0, Lcom/sdk/d/f;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_34
    .catchall {:try_start_1a .. :try_end_34} :catchall_40

    :cond_34
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez v1, :cond_3c

    invoke-virtual {p0}, Lcom/sdk/d/f;->c()V

    :cond_3c
    if-ltz v1, :cond_3f

    const/4 v3, 0x1

    :cond_3f
    return v3

    :catchall_40
    move-exception v0

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p2

    iget-object p4, p0, Lcom/sdk/d/f;->g:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Lcom/sdk/d/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_e
    :try_start_e
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p0, Lcom/sdk/d/f;->a:I
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_49

    if-ne v1, v2, :cond_28

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-gtz v3, :cond_21

    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, 0x0

    return p1

    :cond_21
    :try_start_21
    iget-object v1, p0, Lcom/sdk/d/f;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1, p2, p3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p2

    goto :goto_e

    :cond_28
    new-instance p2, Lcom/sdk/d/a;

    invoke-direct {p2, p1}, Lcom/sdk/d/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/sdk/d/f;->a(Lcom/sdk/d/a;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    add-int/lit8 p2, p1, 0x1

    iget p3, p0, Lcom/sdk/d/f;->a:I

    if-ge p2, p3, :cond_3f

    iget-object p2, p0, Lcom/sdk/d/f;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_3f
    .catchall {:try_start_21 .. :try_end_3f} :catchall_49

    :cond_3f
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez p1, :cond_47

    invoke-virtual {p0}, Lcom/sdk/d/f;->c()V

    :cond_47
    const/4 p1, 0x1

    return p1

    :catchall_49
    move-exception p1

    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public peek()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sdk/d/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    :cond_a
    iget-object v0, p0, Lcom/sdk/d/f;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_f
    iget-object v2, p0, Lcom/sdk/d/f;->c:Lcom/sdk/d/a;

    iget-object v2, v2, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_21

    if-nez v2, :cond_19

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :cond_19
    :try_start_19
    invoke-virtual {v2}, Lcom/sdk/d/a;->a()Ljava/lang/Object;

    move-result-object v1
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_21

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public poll()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sdk/d/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return-object v2

    :cond_a
    const/4 v1, -0x1

    iget-object v3, p0, Lcom/sdk/d/f;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_10
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-lez v4, :cond_26

    invoke-virtual {p0, v2}, Lcom/sdk/d/f;->a(Lcom/sdk/d/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v1

    const/4 v0, 0x1

    if-le v1, v0, :cond_26

    iget-object v0, p0, Lcom/sdk/d/f;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_31

    :cond_26
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget v0, p0, Lcom/sdk/d/f;->a:I

    if-ne v1, v0, :cond_30

    invoke-virtual {p0}, Lcom/sdk/d/f;->d()V

    :cond_30
    return-object v2

    :catchall_31
    move-exception v0

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iget-object p3, p0, Lcom/sdk/d/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v0, p0, Lcom/sdk/d/f;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_b
    :try_start_b
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_3e

    const/4 v2, 0x0

    if-nez v1, :cond_23

    const-wide/16 v3, 0x0

    cmp-long v1, p1, v3

    if-gtz v1, :cond_1c

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    :cond_1c
    :try_start_1c
    iget-object v1, p0, Lcom/sdk/d/f;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1, p1, p2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p1

    goto :goto_b

    :cond_23
    invoke-virtual {p0, v2}, Lcom/sdk/d/f;->a(Lcom/sdk/d/a;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_33

    iget-object p3, p0, Lcom/sdk/d/f;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p3}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_33
    .catchall {:try_start_1c .. :try_end_33} :catchall_3e

    :cond_33
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget p3, p0, Lcom/sdk/d/f;->a:I

    if-ne p2, p3, :cond_3d

    invoke-virtual {p0}, Lcom/sdk/d/f;->d()V

    :cond_3d
    return-object p1

    :catchall_3e
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public put(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sdk/d/a;

    invoke-direct {v0, p1}, Lcom/sdk/d/a;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sdk/d/f;->g:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v1, p0, Lcom/sdk/d/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_f
    :try_start_f
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget v3, p0, Lcom/sdk/d/f;->a:I

    if-ne v2, v3, :cond_1d

    iget-object v2, p0, Lcom/sdk/d/f;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_f

    :cond_1d
    invoke-virtual {p0, v0}, Lcom/sdk/d/f;->a(Lcom/sdk/d/a;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/sdk/d/f;->a:I

    if-ge v1, v2, :cond_2f

    iget-object v1, p0, Lcom/sdk/d/f;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_2f
    .catchall {:try_start_f .. :try_end_2f} :catchall_38

    :cond_2f
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez v0, :cond_37

    invoke-virtual {p0}, Lcom/sdk/d/f;->c()V

    :cond_37
    return-void

    :catchall_38
    move-exception v0

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public remainingCapacity()I
    .registers 3

    iget v0, p0, Lcom/sdk/d/f;->a:I

    iget-object v1, p0, Lcom/sdk/d/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/sdk/d/f;->a()V

    :try_start_7
    iget-object v1, p0, Lcom/sdk/d/f;->c:Lcom/sdk/d/a;

    :cond_9
    iget-object v2, v1, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lcom/sdk/d/a;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0, v1, v2}, Lcom/sdk/d/f;->a(Lcom/sdk/d/a;Lcom/sdk/d/a;)V
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_26

    invoke-virtual {p0}, Lcom/sdk/d/f;->b()V

    const/4 p1, 0x1

    return p1

    :cond_22
    invoke-virtual {p0}, Lcom/sdk/d/f;->b()V

    return v0

    :catchall_26
    move-exception p1

    invoke-virtual {p0}, Lcom/sdk/d/f;->b()V

    throw p1
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/sdk/d/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public take()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sdk/d/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/sdk/d/f;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_7
    :try_start_7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, p0, Lcom/sdk/d/f;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_7

    :cond_13
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sdk/d/f;->a(Lcom/sdk/d/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_24

    iget-object v3, p0, Lcom/sdk/d/f;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_2f

    :cond_24
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget v1, p0, Lcom/sdk/d/f;->a:I

    if-ne v0, v1, :cond_2e

    invoke-virtual {p0}, Lcom/sdk/d/f;->d()V

    :cond_2e
    return-object v2

    :catchall_2f
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 6

    invoke-virtual {p0}, Lcom/sdk/d/f;->a()V

    :try_start_3
    iget-object v0, p0, Lcom/sdk/d/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sdk/d/f;->c:Lcom/sdk/d/a;

    :goto_e
    iget-object v2, v2, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    if-eqz v2, :cond_1c

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2}, Lcom/sdk/d/a;->a()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_20

    move v1, v3

    goto :goto_e

    :cond_1c
    invoke-virtual {p0}, Lcom/sdk/d/f;->b()V

    return-object v0

    :catchall_20
    move-exception v0

    invoke-virtual {p0}, Lcom/sdk/d/f;->b()V

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sdk/d/f;->a()V

    :try_start_3
    iget-object v0, p0, Lcom/sdk/d/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_1a

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_1a
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sdk/d/f;->c:Lcom/sdk/d/a;

    :goto_1d
    iget-object v1, v1, Lcom/sdk/d/a;->c:Lcom/sdk/d/a;

    if-eqz v1, :cond_2b

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1}, Lcom/sdk/d/a;->a()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v0

    move v0, v2

    goto :goto_1d

    :cond_2b
    array-length v1, p1

    if-le v1, v0, :cond_31

    const/4 v1, 0x0

    aput-object v1, p1, v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_35

    :cond_31
    invoke-virtual {p0}, Lcom/sdk/d/f;->b()V

    return-object p1

    :catchall_35
    move-exception p1

    invoke-virtual {p0}, Lcom/sdk/d/f;->b()V

    throw p1
.end method
