.class public final synthetic Lcom/polidea/rxandroidble2_codemao/internal/operations/ServiceDiscoveryOperation$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method public synthetic constructor <init>(Landroid/bluetooth/BluetoothGatt;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/ServiceDiscoveryOperation$$ExternalSyntheticLambda2;->f$0:Landroid/bluetooth/BluetoothGatt;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/ServiceDiscoveryOperation$$ExternalSyntheticLambda2;->f$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Lcom/polidea/rxandroidble2_codemao/internal/operations/ServiceDiscoveryOperation;->$r8$lambda$tvcrDcp9eH8iifphrTXABv4Sc9I(Landroid/bluetooth/BluetoothGatt;)Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices;

    move-result-object v0

    return-object v0
.end method
