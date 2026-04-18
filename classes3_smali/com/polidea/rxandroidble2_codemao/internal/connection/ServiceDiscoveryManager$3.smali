.class Lcom/polidea/rxandroidble2_codemao/internal/connection/ServiceDiscoveryManager$3;
.super Ljava/lang/Object;
.source "ServiceDiscoveryManager.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2_codemao/internal/connection/ServiceDiscoveryManager;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/ServiceDiscoveryManager;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2_codemao/internal/connection/ServiceDiscoveryManager;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/ServiceDiscoveryManager$3;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/ServiceDiscoveryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/ServiceDiscoveryManager$3;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/ServiceDiscoveryManager;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/ServiceDiscoveryManager;->reset()V

    return-void
.end method
