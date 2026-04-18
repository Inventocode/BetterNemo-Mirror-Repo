.class public abstract Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationHandler;
.super Ljava/lang/Object;
.source "IllegalOperationHandler.java"


# instance fields
.field protected final messageCreator:Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationMessageCreator;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationMessageCreator;)V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationHandler;->messageCreator:Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationMessageCreator;

    return-void
.end method


# virtual methods
.method public abstract handleMismatchData(Landroid/bluetooth/BluetoothGattCharacteristic;I)Lcom/polidea/rxandroidble2_codemao/internal/BleIllegalOperationException;
.end method
