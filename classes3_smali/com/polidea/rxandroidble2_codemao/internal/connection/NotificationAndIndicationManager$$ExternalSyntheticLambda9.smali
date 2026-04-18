.class public final synthetic Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;

.field public final synthetic f$1:Landroid/bluetooth/BluetoothGattCharacteristic;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;


# direct methods
.method public synthetic constructor <init>(Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;Landroid/bluetooth/BluetoothGattCharacteristic;ZLcom/polidea/rxandroidble2_codemao/NotificationSetupMode;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda9;->f$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;

    iput-object p2, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda9;->f$1:Landroid/bluetooth/BluetoothGattCharacteristic;

    iput-boolean p3, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda9;->f$2:Z

    iput-object p4, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda9;->f$3:Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda9;->f$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda9;->f$1:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-boolean v2, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda9;->f$2:Z

    iget-object v3, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda9;->f$3:Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;

    invoke-static {v0, v1, v2, v3}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->$r8$lambda$_qjz-HKpjtY-UmJ4ihsmr-7Y_bE(Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;Landroid/bluetooth/BluetoothGattCharacteristic;ZLcom/polidea/rxandroidble2_codemao/NotificationSetupMode;)Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method
