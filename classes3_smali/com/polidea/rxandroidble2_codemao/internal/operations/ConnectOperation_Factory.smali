.class public final Lcom/polidea/rxandroidble2_codemao/internal/operations/ConnectOperation_Factory;
.super Ljava/lang/Object;
.source "ConnectOperation_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2_codemao/internal/operations/ConnectOperation;",
        ">;"
    }
.end annotation


# direct methods
.method public static newInstance(Landroid/bluetooth/BluetoothDevice;Lcom/polidea/rxandroidble2_codemao/internal/util/BleConnectionCompat;Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;Lcom/polidea/rxandroidble2_codemao/internal/connection/BluetoothGattProvider;Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;ZLcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionStateChangeListener;)Lcom/polidea/rxandroidble2_codemao/internal/operations/ConnectOperation;
    .registers 16

    .line 70
    new-instance v8, Lcom/polidea/rxandroidble2_codemao/internal/operations/ConnectOperation;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/polidea/rxandroidble2_codemao/internal/operations/ConnectOperation;-><init>(Landroid/bluetooth/BluetoothDevice;Lcom/polidea/rxandroidble2_codemao/internal/util/BleConnectionCompat;Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;Lcom/polidea/rxandroidble2_codemao/internal/connection/BluetoothGattProvider;Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;ZLcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionStateChangeListener;)V

    return-object v8
.end method
