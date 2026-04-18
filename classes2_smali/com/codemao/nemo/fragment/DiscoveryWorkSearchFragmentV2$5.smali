.class Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$5;
.super Ljava/lang/Object;
.source "DiscoveryWorkSearchFragmentV2.java"

# interfaces
.implements Lcom/codemao/nemo/adapter/EmptyWorkDelegate$EmptyWorkCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->setEmptyData(Ljava/util/List;)V
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

    .line 216
    iput-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$5;->this$0:Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toWorkDetail(Landroid/widget/ImageView;JLjava/lang/String;)V
    .registers 11

    .line 221
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$5;->this$0:Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->rvEmpty:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_b

    return-void

    :cond_b
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "搜索页-主页-点击可能喜欢作品"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 225
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

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 226
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$5;->this$0:Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "发现搜索页"

    const-string v5, ""

    move-wide v1, p2

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/codemao/nemo/activity/WorkDetailActivity;->goDetail(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
