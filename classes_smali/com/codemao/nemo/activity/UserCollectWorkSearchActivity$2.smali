.class Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$2;
.super Ljava/lang/Object;
.source "UserCollectWorkSearchActivity.java"

# interfaces
.implements Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate$UserCollectWorkCallBack;


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

    .line 119
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$2;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(I)V
    .registers 5

    .line 122
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$2;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 125
    :cond_b
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$2;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->access$000(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/CollectWorkInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CollectWorkInfo;->getId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->access$100(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;J)V

    return-void
.end method

.method public toWorkDetail(Landroid/widget/ImageView;JLjava/lang/String;I)V
    .registers 13

    .line 130
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$2;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_b

    return-void

    :cond_b
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    add-int/2addr p5, v1

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    const-string/jumbo v0, "搜索页-我的收藏-点击搜索作品"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkRank(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 135
    iget-object v1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$2;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    const-string/jumbo v5, "用户收藏搜索页"

    const-string v6, ""

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v1 .. v6}, Lcom/codemao/nemo/activity/WorkDetailActivity;->goDetail(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$2;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    invoke-virtual {p1, p2, p3}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->searchUserCollectWorkSync(J)V

    return-void
.end method
