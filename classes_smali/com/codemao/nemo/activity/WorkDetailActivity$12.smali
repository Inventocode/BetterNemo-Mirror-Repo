.class Lcom/codemao/nemo/activity/WorkDetailActivity$12;
.super Ljava/lang/Object;
.source "WorkDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V
    .registers 2

    .line 494
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$12;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 497
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$12;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 498
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$12;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$1000(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    return-void

    .line 502
    :cond_e
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$12;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object v1, v0, Lcom/codemao/nemo/activity/WorkDetailActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    invoke-static {v0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$1100(Lcom/codemao/nemo/activity/WorkDetailActivity;)J

    move-result-wide v2

    new-instance v0, Lcom/codemao/nemo/activity/WorkDetailActivity$12$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$12$1;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity$12;)V

    invoke-virtual {v1, v2, v3, v0}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->getWorkDetail(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method
