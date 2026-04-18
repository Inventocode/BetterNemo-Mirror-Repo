.class final Lcom/jakewharton/rx/ReplayingShare$LastSeenObserver;
.super Ljava/lang/Object;
.source "ReplayingShare.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/rx/ReplayingShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LastSeenObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private final lastSeen:Lcom/jakewharton/rx/ReplayingShare$LastSeen;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jakewharton/rx/ReplayingShare$LastSeen<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lcom/jakewharton/rx/ReplayingShare$LastSeen;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Lcom/jakewharton/rx/ReplayingShare$LastSeen<",
            "TT;>;)V"
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/jakewharton/rx/ReplayingShare$LastSeenObserver;->downstream:Lio/reactivex/Observer;

    .line 123
    iput-object p2, p0, Lcom/jakewharton/rx/ReplayingShare$LastSeenObserver;->lastSeen:Lcom/jakewharton/rx/ReplayingShare$LastSeen;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/jakewharton/rx/ReplayingShare$LastSeenObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 144
    iget-object v0, p0, Lcom/jakewharton/rx/ReplayingShare$LastSeenObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/jakewharton/rx/ReplayingShare$LastSeenObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 127
    iget-object v0, p0, Lcom/jakewharton/rx/ReplayingShare$LastSeenObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 129
    iget-object v0, p0, Lcom/jakewharton/rx/ReplayingShare$LastSeenObserver;->lastSeen:Lcom/jakewharton/rx/ReplayingShare$LastSeen;

    iget-object v0, v0, Lcom/jakewharton/rx/ReplayingShare$LastSeen;->value:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 130
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_16

    .line 131
    iget-object p1, p0, Lcom/jakewharton/rx/ReplayingShare$LastSeenObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    :cond_16
    return-void
.end method
