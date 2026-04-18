.class public final synthetic Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field public final synthetic f$0:Landroid/bluetooth/BluetoothGatt;

.field public final synthetic f$1:Landroid/bluetooth/BluetoothGattCharacteristic;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda2;->f$0:Landroid/bluetooth/BluetoothGatt;

    iput-object p2, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda2;->f$1:Landroid/bluetooth/BluetoothGattCharacteristic;

    iput-boolean p3, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda2;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda2;->f$0:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda2;->f$1:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-boolean v2, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda2;->f$2:Z

    invoke-static {v0, v1, v2}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->$r8$lambda$1RLWZsbX-C8aa5Y4bLMmGV7U4eM(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    return-void
.end method
