.class final Lcom/polidea/rxandroidble2_codemao/internal/connection/BluetoothGattProvider_Factory$InstanceHolder;
.super Ljava/lang/Object;
.source "BluetoothGattProvider_Factory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2_codemao/internal/connection/BluetoothGattProvider_Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/polidea/rxandroidble2_codemao/internal/connection/BluetoothGattProvider_Factory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/BluetoothGattProvider_Factory;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/BluetoothGattProvider_Factory;-><init>()V

    sput-object v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/BluetoothGattProvider_Factory$InstanceHolder;->INSTANCE:Lcom/polidea/rxandroidble2_codemao/internal/connection/BluetoothGattProvider_Factory;

    return-void
.end method

.method static synthetic access$000()Lcom/polidea/rxandroidble2_codemao/internal/connection/BluetoothGattProvider_Factory;
    .registers 1

    .line 30
    sget-object v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/BluetoothGattProvider_Factory$InstanceHolder;->INSTANCE:Lcom/polidea/rxandroidble2_codemao/internal/connection/BluetoothGattProvider_Factory;

    return-object v0
.end method
