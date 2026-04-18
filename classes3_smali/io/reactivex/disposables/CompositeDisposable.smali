.class public final Lio/reactivex/disposables/CompositeDisposable;
.super Ljava/lang/Object;
.source "CompositeDisposable.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;
.implements Lio/reactivex/internal/disposables/DisposableContainer;


# instance fields
.field volatile disposed:Z

.field resources:Lio/reactivex/internal/util/OpenHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/util/OpenHashSet<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lio/reactivex/disposables/Disposable;)Z
    .registers 3

    const-string v0, "disposable is null"

    .line 99
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-nez v0, :cond_24

    .line 101
    monitor-enter p0

    .line 102
    :try_start_a
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-nez v0, :cond_1f

    .line 103
    iget-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    if-nez v0, :cond_19

    .line 105
    new-instance v0, Lio/reactivex/internal/util/OpenHashSet;

    invoke-direct {v0}, Lio/reactivex/internal/util/OpenHashSet;-><init>()V

    .line 106
    iput-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    .line 108
    :cond_19
    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/OpenHashSet;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 109
    monitor-exit p0

    return p1

    .line 111
    :cond_1f
    monitor-exit p0

    goto :goto_24

    :catchall_21
    move-exception p1

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_21

    throw p1

    .line 113
    :cond_24
    :goto_24
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 p1, 0x0

    return p1
.end method

.method public clear()V
    .registers 3

    .line 193
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-eqz v0, :cond_5

    return-void

    .line 197
    :cond_5
    monitor-enter p0

    .line 198
    :try_start_6
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-eqz v0, :cond_c

    .line 199
    monitor-exit p0

    return-void

    .line 202
    :cond_c
    iget-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    const/4 v1, 0x0

    .line 203
    iput-object v1, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    .line 204
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_16

    .line 206
    invoke-virtual {p0, v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose(Lio/reactivex/internal/util/OpenHashSet;)V

    return-void

    :catchall_16
    move-exception v0

    .line 204
    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public delete(Lio/reactivex/disposables/Disposable;)Z
    .registers 4

    const-string v0, "disposables is null"

    .line 172
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 173
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    return v1

    .line 176
    :cond_b
    monitor-enter p0

    .line 177
    :try_start_c
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-eqz v0, :cond_12

    .line 178
    monitor-exit p0

    return v1

    .line 181
    :cond_12
    iget-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    if-eqz v0, :cond_20

    .line 182
    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/OpenHashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto :goto_20

    .line 185
    :cond_1d
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 183
    :cond_20
    :goto_20
    monitor-exit p0

    return v1

    :catchall_22
    move-exception p1

    .line 185
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_22

    throw p1
.end method

.method public dispose()V
    .registers 3

    .line 69
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-eqz v0, :cond_5

    return-void

    .line 73
    :cond_5
    monitor-enter p0

    .line 74
    :try_start_6
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-eqz v0, :cond_c

    .line 75
    monitor-exit p0

    return-void

    :cond_c
    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    .line 78
    iget-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    const/4 v1, 0x0

    .line 79
    iput-object v1, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    .line 80
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_19

    .line 82
    invoke-virtual {p0, v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose(Lio/reactivex/internal/util/OpenHashSet;)V

    return-void

    :catchall_19
    move-exception v0

    .line 80
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method dispose(Lio/reactivex/internal/util/OpenHashSet;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/util/OpenHashSet<",
            "Lio/reactivex/disposables/Disposable;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 236
    invoke-virtual {p1}, Lio/reactivex/internal/util/OpenHashSet;->keys()[Ljava/lang/Object;

    move-result-object p1

    .line 237
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v1, :cond_2a

    aget-object v4, p1, v3

    .line 238
    instance-of v5, v4, Lio/reactivex/disposables/Disposable;

    if-eqz v5, :cond_27

    .line 240
    :try_start_13
    check-cast v4, Lio/reactivex/disposables/Disposable;

    invoke-interface {v4}, Lio/reactivex/disposables/Disposable;->dispose()V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_19

    goto :goto_27

    :catchall_19
    move-exception v4

    .line 242
    invoke-static {v4}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    if-nez v0, :cond_24

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 246
    :cond_24
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_27
    :goto_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_2a
    if-eqz v0, :cond_44

    .line 251
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3e

    .line 252
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 254
    :cond_3e
    new-instance p1, Lio/reactivex/exceptions/CompositeException;

    invoke-direct {p1, v0}, Lio/reactivex/exceptions/CompositeException;-><init>(Ljava/lang/Iterable;)V

    throw p1

    :cond_44
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    .line 87
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    return v0
.end method

.method public remove(Lio/reactivex/disposables/Disposable;)Z
    .registers 3

    .line 156
    invoke-virtual {p0, p1}, Lio/reactivex/disposables/CompositeDisposable;->delete(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 157
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 p1, 0x1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method
