.class Lcom/polidea/rxandroidble2_codemao/internal/util/DisposableUtil$3;
.super Lio/reactivex/observers/DisposableSingleObserver;
.source "DisposableUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2_codemao/internal/util/DisposableUtil;->disposableSingleObserverFromEmitter(Lio/reactivex/ObservableEmitter;)Lio/reactivex/observers/DisposableSingleObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DisposableSingleObserver<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$emitter:Lio/reactivex/ObservableEmitter;


# direct methods
.method constructor <init>(Lio/reactivex/ObservableEmitter;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/DisposableUtil$3;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Lio/reactivex/observers/DisposableSingleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/DisposableUtil$3;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/ObservableEmitter;->tryOnError(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/DisposableUtil$3;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 54
    iget-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/DisposableUtil$3;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method
