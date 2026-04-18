.class public Lcom/polidea/rxandroidble2_codemao/RxBleAdapterStateObservable;
.super Lio/reactivex/Observable;
.source "RxBleAdapterStateObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/polidea/rxandroidble2_codemao/RxBleAdapterStateObservable$BleAdapterState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Observable<",
        "Lcom/polidea/rxandroidble2_codemao/RxBleAdapterStateObservable$BleAdapterState;",
        ">;"
    }
.end annotation


# instance fields
.field private final bleAdapterStateObservable:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2_codemao/RxBleAdapterStateObservable$BleAdapterState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 57
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 58
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/RxBleAdapterStateObservable$1;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2_codemao/RxBleAdapterStateObservable$1;-><init>(Lcom/polidea/rxandroidble2_codemao/RxBleAdapterStateObservable;Landroid/content/Context;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 79
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->trampoline()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 80
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->trampoline()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->unsubscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lio/reactivex/Observable;->share()Lio/reactivex/Observable;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/RxBleAdapterStateObservable;->bleAdapterStateObservable:Lio/reactivex/Observable;

    return-void
.end method

.method static mapToBleAdapterState(I)Lcom/polidea/rxandroidble2_codemao/RxBleAdapterStateObservable$BleAdapterState;
    .registers 1

    packed-switch p0, :pswitch_data_10

    .line 100
    sget-object p0, Lcom/polidea/rxandroidble2_codemao/RxBleAdapterStateObservable$BleAdapterState;->STATE_OFF:Lcom/polidea/rxandroidble2_codemao/RxBleAdapterStateObservable$BleAdapterState;

    return-object p0

    .line 97
    :pswitch_6  #0xd
    sget-object p0, Lcom/polidea/rxandroidble2_codemao/RxBleAdapterStateObservable$BleAdapterState;->STATE_TURNING_OFF:Lcom/polidea/rxandroidble2_codemao/RxBleAdapterStateObservable$BleAdapterState;

    return-object p0

    .line 93
    :pswitch_9  #0xc
    sget-object p0, Lcom/polidea/rxandroidble2_codemao/RxBleAdapterStateObservable$BleAdapterState;->STATE_ON:Lcom/polidea/rxandroidble2_codemao/RxBleAdapterStateObservable$BleAdapterState;

    return-object p0

    .line 95
    :pswitch_c  #0xb
    sget-object p0, Lcom/polidea/rxandroidble2_codemao/RxBleAdapterStateObservable$BleAdapterState;->STATE_TURNING_ON:Lcom/polidea/rxandroidble2_codemao/RxBleAdapterStateObservable$BleAdapterState;

    return-object p0

    nop

    :pswitch_data_10
    .packed-switch 0xb
        :pswitch_c  #0000000b
        :pswitch_9  #0000000c
        :pswitch_6  #0000000d
    .end packed-switch
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/Observer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Lcom/polidea/rxandroidble2_codemao/RxBleAdapterStateObservable$BleAdapterState;",
            ">;)V"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/RxBleAdapterStateObservable;->bleAdapterStateObservable:Lio/reactivex/Observable;

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
