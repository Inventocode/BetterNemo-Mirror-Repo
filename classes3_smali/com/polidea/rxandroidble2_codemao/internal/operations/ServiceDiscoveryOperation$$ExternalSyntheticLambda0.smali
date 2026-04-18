.class public final synthetic Lcom/polidea/rxandroidble2_codemao/internal/operations/ServiceDiscoveryOperation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/polidea/rxandroidble2_codemao/internal/operations/ServiceDiscoveryOperation;


# direct methods
.method public synthetic constructor <init>(Lcom/polidea/rxandroidble2_codemao/internal/operations/ServiceDiscoveryOperation;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/ServiceDiscoveryOperation$$ExternalSyntheticLambda0;->f$0:Lcom/polidea/rxandroidble2_codemao/internal/operations/ServiceDiscoveryOperation;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/ServiceDiscoveryOperation$$ExternalSyntheticLambda0;->f$0:Lcom/polidea/rxandroidble2_codemao/internal/operations/ServiceDiscoveryOperation;

    check-cast p1, Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices;

    invoke-static {v0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/operations/ServiceDiscoveryOperation;->$r8$lambda$wBAJBLV0A3ZA8r9lU1cOxQUNACQ(Lcom/polidea/rxandroidble2_codemao/internal/operations/ServiceDiscoveryOperation;Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices;)V

    return-void
.end method
