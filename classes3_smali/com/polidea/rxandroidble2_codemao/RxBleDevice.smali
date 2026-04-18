.class public interface abstract Lcom/polidea/rxandroidble2_codemao/RxBleDevice;
.super Ljava/lang/Object;
.source "RxBleDevice.java"


# virtual methods
.method public abstract establishConnection(Z)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2_codemao/RxBleConnection;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConnectionState()Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;
.end method

.method public abstract getMacAddress()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method
