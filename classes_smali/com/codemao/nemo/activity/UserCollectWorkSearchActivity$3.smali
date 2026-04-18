.class Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$3;
.super Ljava/lang/Object;
.source "UserCollectWorkSearchActivity.java"

# interfaces
.implements Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .registers 3

    .line 159
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 160
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showError()V

    return-void

    .line 163
    :cond_10
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->access$200(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 164
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->access$302(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;Z)Z

    .line 165
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->access$400(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;Z)V

    :cond_24
    return-void
.end method
