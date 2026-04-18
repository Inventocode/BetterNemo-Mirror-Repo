.class public final synthetic Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method public synthetic constructor <init>(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda4;->f$0:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda4;->f$0:Landroid/bluetooth/BluetoothGattCharacteristic;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->$r8$lambda$LiTcRBzoJBUDLa-FyzcBq5fckaE(Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/lang/Throwable;)Lio/reactivex/CompletableSource;

    move-result-object p1

    return-object p1
.end method
