.class Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter$2;
.super Ljava/lang/Object;
.source "DisconnectionRouter.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter;-><init>(Ljava/lang/String;Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/polidea/rxandroidble2_codemao/exceptions/BleException;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter;)V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/polidea/rxandroidble2_codemao/exceptions/BleException;)V
    .registers 3

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "An exception received, indicating that the adapter has became unusable."

    .line 59
    invoke-static {v0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    check-cast p1, Lcom/polidea/rxandroidble2_codemao/exceptions/BleException;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter$2;->accept(Lcom/polidea/rxandroidble2_codemao/exceptions/BleException;)V

    return-void
.end method
