.class Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationChecker$1;
.super Ljava/lang/Object;
.source "IllegalOperationChecker.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationChecker;->checkAnyPropertyMatches(Landroid/bluetooth/BluetoothGattCharacteristic;I)Lio/reactivex/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationChecker;

.field final synthetic val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field final synthetic val$neededProperties:I


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationChecker;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationChecker$1;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationChecker;

    iput-object p2, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationChecker$1;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iput p3, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationChecker$1;->val$neededProperties:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 40
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationChecker$1;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    .line 42
    iget v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationChecker$1;->val$neededProperties:I

    and-int/2addr v0, v1

    if-nez v0, :cond_19

    .line 43
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationChecker$1;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationChecker;

    iget-object v0, v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationChecker;->resultHandler:Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationHandler;

    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationChecker$1;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v2, v1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationHandler;->handleMismatchData(Landroid/bluetooth/BluetoothGattCharacteristic;I)Lcom/polidea/rxandroidble2_codemao/internal/BleIllegalOperationException;

    move-result-object v0

    if-nez v0, :cond_18

    goto :goto_19

    .line 45
    :cond_18
    throw v0

    :cond_19
    :goto_19
    return-void
.end method
