.class Lcom/codemao/nemo/activity/UserCollectWorkActivity$1;
.super Ljava/lang/Object;
.source "UserCollectWorkActivity.java"

# interfaces
.implements Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$UserCollectWorkCallBack;


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

    .line 137
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$1;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(I)V
    .registers 5

    .line 140
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$1;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->rvComment:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 143
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$1;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    invoke-virtual {v1}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-点击删除按钮"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$1;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->access$000(Lcom/codemao/nemo/activity/UserCollectWorkActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/CollectWorkInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CollectWorkInfo;->getId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->access$100(Lcom/codemao/nemo/activity/UserCollectWorkActivity;J)V

    return-void
.end method

.method public toWorkDetail(Landroid/widget/ImageView;JLjava/lang/String;)V
    .registers 12

    .line 149
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$1;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->rvComment:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_b

    return-void

    .line 152
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$1;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    invoke-virtual {v0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-点击作品卡片"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$1;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    const-string/jumbo v5, "用户收藏列表"

    const-string v6, ""

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v1 .. v6}, Lcom/codemao/nemo/activity/WorkDetailActivity;->goDetail(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
