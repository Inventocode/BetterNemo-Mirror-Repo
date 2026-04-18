.class Lcom/codemao/nemo/fragment/LatestFragmentV3$2;
.super Ljava/lang/Object;
.source "LatestFragmentV3.java"

# interfaces
.implements Lcom/codemao/nemo/adapter/LatestWorkDelegate$RecommendWorkCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/LatestFragmentV3;->initDelegate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/LatestFragmentV3;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3$2;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toUserDetail(Ljava/lang/String;JJ)V
    .registers 14

    .line 129
    iget-object v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3$2;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v5, "最新页"

    const-string v7, ""

    move-object v2, p1

    move-wide v3, p2

    invoke-static/range {v1 .. v7}, Lcom/codemao/nemo/activity/UserDetailActivity;->goDetail(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toWorkDetail(Landroid/widget/ImageView;JLjava/lang/String;I)V
    .registers 13

    .line 119
    iget-object v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3$2;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/LatestFragmentV3;->access$100(Lcom/codemao/nemo/fragment/LatestFragmentV3;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    add-int/2addr p5, v2

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "无"

    aput-object v2, v0, v1

    const-string v1, "最新页-点击作品卡片"

    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p5}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkRank(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p5

    invoke-virtual {p5, v2}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setThemeTag(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p5

    invoke-virtual {p5}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p5

    invoke-static {v1, p5}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 124
    iget-object p5, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3$2;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    invoke-virtual {p5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v5, "最新页"

    const-string v6, ""

    move-object v1, p1

    move-object v2, p4

    move-wide v3, p2

    invoke-static/range {v0 .. v6}, Lcom/codemao/nemo/activity/WorkDetailActivity;->goDetailWithAnim(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
