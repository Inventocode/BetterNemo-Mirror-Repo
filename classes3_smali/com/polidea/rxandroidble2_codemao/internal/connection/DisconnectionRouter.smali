.class Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter;
.super Ljava/lang/Object;
.source "DisconnectionRouter.java"

# interfaces
.implements Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouterOutput;


# instance fields
.field private final bleExceptionBehaviorRelay:Lcom/jakewharton/rxrelay2/BehaviorRelay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jakewharton/rxrelay2/BehaviorRelay<",
            "Lcom/polidea/rxandroidble2_codemao/exceptions/BleException;",
            ">;"
        }
    .end annotation
.end field

.field private final firstDisconnectionExceptionObs:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final firstDisconnectionValueObs:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2_codemao/exceptions/BleException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;Lio/reactivex/Observable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2_codemao/RxBleAdapterStateObservable$BleAdapterState;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/jakewharton/rxrelay2/BehaviorRelay;->create()Lcom/jakewharton/rxrelay2/BehaviorRelay;

    move-result-object v0

    iput-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter;->bleExceptionBehaviorRelay:Lcom/jakewharton/rxrelay2/BehaviorRelay;

    .line 49
    invoke-static {p2, p3}, Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter;->awaitAdapterNotUsable(Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance p3, Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter$3;

    invoke-direct {p3, p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter$3;-><init>(Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter$2;

    invoke-direct {p2, p0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter$2;-><init>(Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter;)V

    .line 56
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter$1;

    invoke-direct {p2, p0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter$1;-><init>(Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter;)V

    .line 62
    invoke-virtual {p1, v0, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 70
    invoke-virtual {v0}, Lio/reactivex/Observable;->firstElement()Lio/reactivex/Maybe;

    move-result-object p2

    .line 71
    invoke-virtual {p2}, Lio/reactivex/Maybe;->toObservable()Lio/reactivex/Observable;

    move-result-object p2

    new-instance p3, Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter$4;

    invoke-direct {p3, p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter$4;-><init>(Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter;Lio/reactivex/disposables/Disposable;)V

    .line 72
    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->doOnTerminate(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Lio/reactivex/Observable;->replay()Lio/reactivex/observables/ConnectableObservable;

    move-result-object p1

    const/4 p2, 0x0

    .line 79
    invoke-virtual {p1, p2}, Lio/reactivex/observables/ConnectableObservable;->autoConnect(I)Lio/reactivex/Observable;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter;->firstDisconnectionValueObs:Lio/reactivex/Observable;

    .line 81
    new-instance p2, Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter$5;

    invoke-direct {p2, p0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter$5;-><init>(Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter;)V

    .line 82
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter;->firstDisconnectionExceptionObs:Lio/reactivex/Observable;

    return-void
.end method

.method private static awaitAdapterNotUsable(Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;Lio/reactivex/Observable;)Lio/reactivex/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2_codemao/RxBleAdapterStateObservable$BleAdapterState;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter$7;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter$7;-><init>()V

    .line 93
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 99
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;->isBluetoothEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter$6;

    invoke-direct {p1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter$6;-><init>()V

    .line 100
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public asErrorOnlyObservable()Lio/reactivex/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter;->firstDisconnectionExceptionObs:Lio/reactivex/Observable;

    return-object v0
.end method

.method public asValueOnlyObservable()Lio/reactivex/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2_codemao/exceptions/BleException;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter;->firstDisconnectionValueObs:Lio/reactivex/Observable;

    return-object v0
.end method

.method public onDisconnectedException(Lcom/polidea/rxandroidble2_codemao/exceptions/BleDisconnectedException;)V
    .registers 3

    .line 110
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter;->bleExceptionBehaviorRelay:Lcom/jakewharton/rxrelay2/BehaviorRelay;

    invoke-virtual {v0, p1}, Lcom/jakewharton/rxrelay2/BehaviorRelay;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public onGattConnectionStateException(Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattException;)V
    .registers 3

    .line 115
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter;->bleExceptionBehaviorRelay:Lcom/jakewharton/rxrelay2/BehaviorRelay;

    invoke-virtual {v0, p1}, Lcom/jakewharton/rxrelay2/BehaviorRelay;->accept(Ljava/lang/Object;)V

    return-void
.end method
