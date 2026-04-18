.class final Lio/reactivex/internal/operators/single/SingleCreate$Emitter;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SingleCreate.java"

# interfaces
.implements Lio/reactivex/SingleEmitter;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleCreate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Emitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/SingleEmitter<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x223dd198233781a4L


# instance fields
.field final downstream:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 55
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleCreate$Emitter;->downstream:Lio/reactivex/SingleObserver;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 1

    .line 118
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .registers 2

    .line 123
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 80
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/single/SingleCreate$Emitter;->tryOnError(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 81
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :cond_9
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_31

    .line 61
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    if-eq v0, v1, :cond_31

    if-nez p1, :cond_1f

    .line 65
    :try_start_12
    iget-object p1, p0, Lio/reactivex/internal/operators/single/SingleCreate$Emitter;->downstream:Lio/reactivex/SingleObserver;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "onSuccess called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_24

    .line 67
    :cond_1f
    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleCreate$Emitter;->downstream:Lio/reactivex/SingleObserver;

    invoke-interface {v1, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_2a

    :goto_24
    if-eqz v0, :cond_31

    .line 71
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    goto :goto_31

    :catchall_2a
    move-exception p1

    if-eqz v0, :cond_30

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 73
    :cond_30
    throw p1

    :cond_31
    :goto_31
    return-void
.end method

.method public setDisposable(Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 108
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->set(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 128
    const-class v1, Lio/reactivex/internal/operators/single/SingleCreate$Emitter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-super {p0}, Ljava/util/concurrent/atomic/AtomicReference;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s{%s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryOnError(Ljava/lang/Throwable;)Z
    .registers 4

    if-nez p1, :cond_9

    .line 88
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 90
    :cond_9
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v0, v1, :cond_2c

    .line 91
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    if-eq v0, v1, :cond_2c

    .line 94
    :try_start_19
    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleCreate$Emitter;->downstream:Lio/reactivex/SingleObserver;

    invoke-interface {v1, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_25

    if-eqz v0, :cond_23

    .line 97
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_23
    const/4 p1, 0x1

    return p1

    :catchall_25
    move-exception p1

    if-eqz v0, :cond_2b

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 99
    :cond_2b
    throw p1

    :cond_2c
    const/4 p1, 0x0

    return p1
.end method
