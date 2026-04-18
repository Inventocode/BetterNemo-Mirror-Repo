.class Lcom/polidea/rxandroidble2_codemao/internal/connection/MtuWatcher$1;
.super Ljava/lang/Object;
.source "MtuWatcher.java"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2_codemao/internal/connection/MtuWatcher;-><init>(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Predicate<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2_codemao/internal/connection/MtuWatcher;)V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic test(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/MtuWatcher$1;->test(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public test(Ljava/lang/Throwable;)Z
    .registers 3

    .line 31
    instance-of v0, p1, Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattException;

    if-eqz v0, :cond_10

    check-cast p1, Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattException;

    .line 32
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattException;->getBleGattOperationType()Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;

    move-result-object p1

    sget-object v0, Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;->ON_MTU_CHANGED:Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;

    if-ne p1, v0, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method
