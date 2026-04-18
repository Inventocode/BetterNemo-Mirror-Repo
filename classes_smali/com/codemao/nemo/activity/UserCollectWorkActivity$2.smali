.class Lcom/codemao/nemo/activity/UserCollectWorkActivity$2;
.super Ljava/lang/Object;
.source "UserCollectWorkActivity.java"

# interfaces
.implements Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$LoadingListener;


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

    .line 165
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$2;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .registers 3

    .line 173
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$2;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 174
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$2;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showError()V

    return-void

    .line 177
    :cond_10
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$2;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->access$202(Lcom/codemao/nemo/activity/UserCollectWorkActivity;Z)Z

    .line 178
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$2;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->access$300(Lcom/codemao/nemo/activity/UserCollectWorkActivity;)V

    return-void
.end method
