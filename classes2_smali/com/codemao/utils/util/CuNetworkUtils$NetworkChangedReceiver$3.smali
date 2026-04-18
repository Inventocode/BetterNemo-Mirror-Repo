.class Lcom/codemao/utils/util/CuNetworkUtils$NetworkChangedReceiver$3;
.super Ljava/lang/Object;
.source "CuNetworkUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/utils/util/CuNetworkUtils$NetworkChangedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/utils/util/CuNetworkUtils$NetworkChangedReceiver;


# direct methods
.method constructor <init>(Lcom/codemao/utils/util/CuNetworkUtils$NetworkChangedReceiver;)V
    .registers 2

    .line 937
    iput-object p1, p0, Lcom/codemao/utils/util/CuNetworkUtils$NetworkChangedReceiver$3;->this$0:Lcom/codemao/utils/util/CuNetworkUtils$NetworkChangedReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 941
    invoke-static {}, Lcom/codemao/utils/util/CuNetworkUtils;->getNetworkType()Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;

    move-result-object v0

    .line 942
    iget-object v1, p0, Lcom/codemao/utils/util/CuNetworkUtils$NetworkChangedReceiver$3;->this$0:Lcom/codemao/utils/util/CuNetworkUtils$NetworkChangedReceiver;

    invoke-static {v1}, Lcom/codemao/utils/util/CuNetworkUtils$NetworkChangedReceiver;->access$1000(Lcom/codemao/utils/util/CuNetworkUtils$NetworkChangedReceiver;)Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;

    move-result-object v1

    if-ne v1, v0, :cond_d

    return-void

    .line 943
    :cond_d
    iget-object v1, p0, Lcom/codemao/utils/util/CuNetworkUtils$NetworkChangedReceiver$3;->this$0:Lcom/codemao/utils/util/CuNetworkUtils$NetworkChangedReceiver;

    invoke-static {v1, v0}, Lcom/codemao/utils/util/CuNetworkUtils$NetworkChangedReceiver;->access$1002(Lcom/codemao/utils/util/CuNetworkUtils$NetworkChangedReceiver;Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;)Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;

    .line 944
    sget-object v1, Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;->NETWORK_NO:Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;

    if-ne v0, v1, :cond_30

    .line 945
    iget-object v0, p0, Lcom/codemao/utils/util/CuNetworkUtils$NetworkChangedReceiver$3;->this$0:Lcom/codemao/utils/util/CuNetworkUtils$NetworkChangedReceiver;

    invoke-static {v0}, Lcom/codemao/utils/util/CuNetworkUtils$NetworkChangedReceiver;->access$900(Lcom/codemao/utils/util/CuNetworkUtils$NetworkChangedReceiver;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/utils/util/CuNetworkUtils$OnNetworkStatusChangedListener;

    .line 946
    invoke-interface {v1}, Lcom/codemao/utils/util/CuNetworkUtils$OnNetworkStatusChangedListener;->onDisconnected()V

    goto :goto_20

    .line 949
    :cond_30
    iget-object v1, p0, Lcom/codemao/utils/util/CuNetworkUtils$NetworkChangedReceiver$3;->this$0:Lcom/codemao/utils/util/CuNetworkUtils$NetworkChangedReceiver;

    invoke-static {v1}, Lcom/codemao/utils/util/CuNetworkUtils$NetworkChangedReceiver;->access$900(Lcom/codemao/utils/util/CuNetworkUtils$NetworkChangedReceiver;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/utils/util/CuNetworkUtils$OnNetworkStatusChangedListener;

    .line 950
    invoke-interface {v2, v0}, Lcom/codemao/utils/util/CuNetworkUtils$OnNetworkStatusChangedListener;->onConnected(Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;)V

    goto :goto_3a

    :cond_4a
    return-void
.end method
