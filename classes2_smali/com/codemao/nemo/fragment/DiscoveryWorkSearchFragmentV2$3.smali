.class Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$3;
.super Ljava/lang/Object;
.source "DiscoveryWorkSearchFragmentV2.java"

# interfaces
.implements Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$WorkCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->initDelegate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;)V
    .registers 2

    .line 134
    iput-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toWorkDetail(Landroid/widget/ImageView;I)V
    .registers 9

    .line 137
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_b

    return-void

    :cond_b
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;

    iget-object v2, v2, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, p1, v3

    const-string v0, "搜索页-主页-点击搜索的作品"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;

    iget-object v4, v4, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkRank(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 142
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->getId()J

    move-result-wide v1

    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->getPreview()Ljava/lang/String;

    move-result-object v3

    const-string v4, "发页搜索页"

    const-string v5, ""

    invoke-static/range {v0 .. v5}, Lcom/codemao/nemo/activity/WorkDetailActivity;->goDetail(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
