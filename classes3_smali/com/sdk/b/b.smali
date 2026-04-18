.class public Lcom/sdk/b/b;
.super Ljava/util/concurrent/ConcurrentHashMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap<",
        "TK;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(IF)V
    .registers 4

    const/16 v0, 0x10

    invoke-direct {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Object;)Ljava/lang/Long;
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/lang/Long;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sdk/b/b;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    monitor-enter p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1b

    :try_start_8
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_10

    :try_start_e
    monitor-exit p0

    goto :goto_13

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_13
    :goto_13
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-object p1

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized containsKey(Ljava/lang/Object;)Z
    .registers 8

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_18

    const/4 v0, 0x1

    goto :goto_20

    :cond_18
    monitor-enter p0
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_25

    :try_start_19
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_22

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_25

    :goto_20
    monitor-exit p0

    return v0

    :catchall_22
    move-exception p1

    :try_start_23
    monitor-exit p0

    throw p1
    :try_end_25
    .catchall {:try_start_23 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sdk/b/b;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_11

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    monitor-exit p0

    return-object p1

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/sdk/b/b;->a(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method
