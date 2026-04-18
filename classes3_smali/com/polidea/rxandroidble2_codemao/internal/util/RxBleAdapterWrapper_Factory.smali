.class public final Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper_Factory;
.super Ljava/lang/Object;
.source "RxBleAdapterWrapper_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final bluetoothAdapterProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/bluetooth/BluetoothAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbleshadow/javax/inject/Provider;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/bluetooth/BluetoothAdapter;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper_Factory;->bluetoothAdapterProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper_Factory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/bluetooth/BluetoothAdapter;",
            ">;)",
            "Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper_Factory;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper_Factory;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper_Factory;-><init>(Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/bluetooth/BluetoothAdapter;)Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;
    .registers 2

    .line 36
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper_Factory;->bluetoothAdapterProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper_Factory;->newInstance(Landroid/bluetooth/BluetoothAdapter;)Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper_Factory;->get()Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;

    move-result-object v0

    return-object v0
.end method
