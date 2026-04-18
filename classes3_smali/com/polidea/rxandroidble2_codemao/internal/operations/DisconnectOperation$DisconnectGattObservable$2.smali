.class Lcom/polidea/rxandroidble2_codemao/internal/operations/DisconnectOperation$DisconnectGattObservable$2;
.super Ljava/lang/Object;
.source "DisconnectOperation.java"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2_codemao/internal/operations/DisconnectOperation$DisconnectGattObservable;->subscribeActual(Lio/reactivex/SingleObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Predicate<",
        "Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2_codemao/internal/operations/DisconnectOperation$DisconnectGattObservable;)V
    .registers 2

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;)Z
    .registers 3

    .line 150
    sget-object v0, Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;->DISCONNECTED:Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 147
    check-cast p1, Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/operations/DisconnectOperation$DisconnectGattObservable$2;->test(Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;)Z

    move-result p1

    return p1
.end method
