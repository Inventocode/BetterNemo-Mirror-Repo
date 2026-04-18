.class Lcom/polidea/rxandroidble2_codemao/internal/connection/MtuWatcher;
.super Ljava/lang/Object;
.source "MtuWatcher.java"

# interfaces
.implements Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionSubscriptionWatcher;
.implements Lcom/polidea/rxandroidble2_codemao/internal/connection/MtuProvider;
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionSubscriptionWatcher;",
        "Lcom/polidea/rxandroidble2_codemao/internal/connection/MtuProvider;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mtuObservable:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final serialSubscription:Lio/reactivex/disposables/SerialDisposable;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;I)V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance p2, Lio/reactivex/disposables/SerialDisposable;

    invoke-direct {p2}, Lio/reactivex/disposables/SerialDisposable;-><init>()V

    iput-object p2, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/MtuWatcher;->serialSubscription:Lio/reactivex/disposables/SerialDisposable;

    .line 27
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->getOnMtuChanged()Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/polidea/rxandroidble2_codemao/internal/connection/MtuWatcher$1;

    invoke-direct {p2, p0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/MtuWatcher$1;-><init>(Lcom/polidea/rxandroidble2_codemao/internal/connection/MtuWatcher;)V

    .line 28
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->retry(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/MtuWatcher;->mtuObservable:Lio/reactivex/Observable;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Integer;)V
    .registers 2

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/MtuWatcher;->accept(Ljava/lang/Integer;)V

    return-void
.end method

.method public onConnectionSubscribed()V
    .registers 4

    .line 45
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/MtuWatcher;->serialSubscription:Lio/reactivex/disposables/SerialDisposable;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/MtuWatcher;->mtuObservable:Lio/reactivex/Observable;

    .line 47
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v2

    .line 45
    invoke-virtual {v1, p0, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/disposables/SerialDisposable;->set(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onConnectionUnsubscribed()V
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/MtuWatcher;->serialSubscription:Lio/reactivex/disposables/SerialDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/SerialDisposable;->dispose()V

    return-void
.end method
