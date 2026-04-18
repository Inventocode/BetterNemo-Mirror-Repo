.class Lcom/polidea/rxandroidble2_codemao/internal/util/ClientStateObservable$3$1;
.super Ljava/lang/Object;
.source "ClientStateObservable.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2_codemao/internal/util/ClientStateObservable$3;->apply(Lcom/polidea/rxandroidble2_codemao/RxBleAdapterStateObservable$BleAdapterState;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/Boolean;",
        "Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2_codemao/internal/util/ClientStateObservable$3;)V
    .registers 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Boolean;)Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;
    .registers 2

    .line 105
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;->READY:Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

    goto :goto_b

    .line 106
    :cond_9
    sget-object p1, Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;->LOCATION_SERVICES_NOT_ENABLED:Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

    :goto_b
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/util/ClientStateObservable$3$1;->apply(Ljava/lang/Boolean;)Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

    move-result-object p1

    return-object p1
.end method
