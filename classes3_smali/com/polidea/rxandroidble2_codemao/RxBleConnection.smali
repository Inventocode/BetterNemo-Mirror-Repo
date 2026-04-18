.class public interface abstract Lcom/polidea/rxandroidble2_codemao/RxBleConnection;
.super Ljava/lang/Object;
.source "RxBleConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;
    }
.end annotation


# virtual methods
.method public abstract discoverServices()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCharacteristic(Ljava/util/UUID;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Lio/reactivex/Single<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract readCharacteristic(Ljava/util/UUID;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Lio/reactivex/Single<",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract setupIndication(Ljava/util/UUID;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Lio/reactivex/Observable<",
            "Lio/reactivex/Observable<",
            "[B>;>;"
        }
    .end annotation
.end method

.method public abstract setupNotification(Ljava/util/UUID;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Lio/reactivex/Observable<",
            "Lio/reactivex/Observable<",
            "[B>;>;"
        }
    .end annotation
.end method

.method public abstract writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            "[B)",
            "Lio/reactivex/Single<",
            "[B>;"
        }
    .end annotation
.end method
