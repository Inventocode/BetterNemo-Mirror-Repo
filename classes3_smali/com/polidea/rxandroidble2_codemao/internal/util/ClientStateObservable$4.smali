.class Lcom/polidea/rxandroidble2_codemao/internal/util/ClientStateObservable$4;
.super Ljava/lang/Object;
.source "ClientStateObservable.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2_codemao/internal/util/ClientStateObservable;->subscribeActual(Lio/reactivex/Observer;)V
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
        "Lio/reactivex/Observable<",
        "Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2_codemao/internal/util/ClientStateObservable;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2_codemao/internal/util/ClientStateObservable;)V
    .registers 2

    .line 123
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/ClientStateObservable$4;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/util/ClientStateObservable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Boolean;)Lio/reactivex/Observable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/ClientStateObservable$4;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/util/ClientStateObservable;

    iget-object v1, v0, Lcom/polidea/rxandroidble2_codemao/internal/util/ClientStateObservable;->rxBleAdapterWrapper:Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;

    iget-object v2, v0, Lcom/polidea/rxandroidble2_codemao/internal/util/ClientStateObservable;->bleAdapterStateObservable:Lio/reactivex/Observable;

    iget-object v0, v0, Lcom/polidea/rxandroidble2_codemao/internal/util/ClientStateObservable;->locationServicesOkObservable:Lio/reactivex/Observable;

    invoke-static {v1, v2, v0}, Lcom/polidea/rxandroidble2_codemao/internal/util/ClientStateObservable;->checkAdapterAndServicesState(Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;Lio/reactivex/Observable;Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    .line 132
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1c

    const-wide/16 v1, 0x1

    .line 137
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->skip(J)Lio/reactivex/Observable;

    move-result-object v0

    :cond_1c
    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 123
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/util/ClientStateObservable$4;->apply(Ljava/lang/Boolean;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
