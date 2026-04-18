.class Lcom/codemao/nemo/activity/UserCollectWorkActivity$3;
.super Ljava/lang/Object;
.source "UserCollectWorkActivity.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserCollectWorkActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserCollectWorkActivity;)V
    .registers 2

    .line 182
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$3;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .registers 3

    .line 185
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$3;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 186
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$3;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showError()V

    return-void

    .line 189
    :cond_10
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$3;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->access$402(Lcom/codemao/nemo/activity/UserCollectWorkActivity;I)I

    .line 190
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$3;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->access$300(Lcom/codemao/nemo/activity/UserCollectWorkActivity;)V

    return-void
.end method
