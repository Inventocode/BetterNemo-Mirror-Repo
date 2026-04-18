.class Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter$1;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter;)V
    .registers 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter$1;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public accept(Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to monitor adapter state."

    .line 65
    invoke-static {p1, v1, v0}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
