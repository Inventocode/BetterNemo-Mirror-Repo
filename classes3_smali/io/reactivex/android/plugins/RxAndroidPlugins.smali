.class public final Lio/reactivex/android/plugins/RxAndroidPlugins;
.super Ljava/lang/Object;
.source "RxAndroidPlugins.java"


# static fields
.field private static volatile onInitMainThreadHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile onMainThreadHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/Scheduler;",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "TT;TR;>;TT;)TR;"
        }
    .end annotation

    .line 106
    :try_start_0
    invoke-interface {p0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object p0

    :catchall_5
    move-exception p0

    .line 108
    invoke-static {p0}, Lio/reactivex/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static applyRequireNonNull(Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lio/reactivex/Scheduler;"
        }
    .end annotation

    .line 97
    invoke-static {p0, p1}, Lio/reactivex/android/plugins/RxAndroidPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/Scheduler;

    const-string p1, "Scheduler Callable returned null"

    .line 99
    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method static callRequireNonNull(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lio/reactivex/Scheduler;"
        }
    .end annotation

    .line 86
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/Scheduler;

    if-eqz p0, :cond_9

    return-object p0

    .line 88
    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Scheduler Callable returned null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception p0

    .line 92
    invoke-static {p0}, Lio/reactivex/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static initMainThreadScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lio/reactivex/Scheduler;"
        }
    .end annotation

    const-string v0, "scheduler == null"

    .line 36
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lio/reactivex/android/plugins/RxAndroidPlugins;->onInitMainThreadHandler:Lio/reactivex/functions/Function;

    if-nez v0, :cond_e

    .line 40
    invoke-static {p0}, Lio/reactivex/android/plugins/RxAndroidPlugins;->callRequireNonNull(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object p0

    return-object p0

    .line 42
    :cond_e
    invoke-static {v0, p0}, Lio/reactivex/android/plugins/RxAndroidPlugins;->applyRequireNonNull(Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public static onMainThreadScheduler(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;
    .registers 2

    const-string v0, "scheduler == null"

    .line 51
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lio/reactivex/android/plugins/RxAndroidPlugins;->onMainThreadHandler:Lio/reactivex/functions/Function;

    if-nez v0, :cond_a

    return-object p0

    .line 57
    :cond_a
    invoke-static {v0, p0}, Lio/reactivex/android/plugins/RxAndroidPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/Scheduler;

    return-object p0
.end method
