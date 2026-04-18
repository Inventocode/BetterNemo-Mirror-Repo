.class Lcom/codemao/nemo/fragment/MessageFragment$1;
.super Ljava/lang/Object;
.source "MessageFragment.java"

# interfaces
.implements Lcom/codemao/nemo/adapter/MessageDelegate$RecommendWorkCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/MessageFragment;->initDelegate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/MessageFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/MessageFragment;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/codemao/nemo/fragment/MessageFragment$1;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toUserDetail(Landroid/widget/ImageView;Ljava/lang/String;J)V
    .registers 12

    .line 97
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MessageFragment$1;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/MessageFragment;->access$000(Lcom/codemao/nemo/fragment/MessageFragment;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 100
    :cond_9
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MessageFragment$1;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_14

    return-void

    .line 103
    :cond_14
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MessageFragment$1;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/MessageFragment;->access$100(Lcom/codemao/nemo/fragment/MessageFragment;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-string v3, ""

    const-string v4, "消息页-点击用户头像"

    if-ne p1, v2, :cond_60

    new-array p1, v1, [Ljava/lang/String;

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "点赞作品"

    aput-object v0, p1, v2

    invoke-static {v4, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setNoticeUserId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setNoticeType(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_a5

    .line 106
    :cond_60
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MessageFragment$1;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/MessageFragment;->access$100(Lcom/codemao/nemo/fragment/MessageFragment;)I

    move-result p1

    const/4 v5, 0x3

    if-ne p1, v5, :cond_a5

    new-array p1, v1, [Ljava/lang/String;

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "被再创作"

    aput-object v0, p1, v2

    invoke-static {v4, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setNoticeUserId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setNoticeType(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 111
    :cond_a5
    :goto_a5
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MessageFragment$1;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "消息列表"

    const-string v5, ""

    const-string v6, ""

    move-object v1, p2

    move-wide v2, p3

    invoke-static/range {v0 .. v6}, Lcom/codemao/nemo/activity/UserDetailActivity;->goDetail(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toWorkDetail(Landroid/widget/ImageView;Lcom/codemao/nemo/bean/MessageVO$MessageWork;)V
    .registers 10

    .line 116
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MessageFragment$1;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/MessageFragment;->access$000(Lcom/codemao/nemo/fragment/MessageFragment;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 119
    :cond_9
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MessageFragment$1;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_14

    return-void

    .line 122
    :cond_14
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MessageFragment$1;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/MessageFragment;->access$100(Lcom/codemao/nemo/fragment/MessageFragment;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-string v3, ""

    const-string v4, "消息页-点击作品卡片"

    if-ne p1, v2, :cond_68

    new-array p1, v1, [Ljava/lang/String;

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->getWork_id()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "点赞作品"

    aput-object v0, p1, v2

    invoke-static {v4, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->getWork_id()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setNoticeType(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_b5

    .line 125
    :cond_68
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MessageFragment$1;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/MessageFragment;->access$100(Lcom/codemao/nemo/fragment/MessageFragment;)I

    move-result p1

    const/4 v5, 0x3

    if-ne p1, v5, :cond_b5

    new-array p1, v1, [Ljava/lang/String;

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->getWork_id()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "被再创作"

    aput-object v0, p1, v2

    invoke-static {v4, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->getWork_id()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setNoticeType(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 131
    :cond_b5
    :goto_b5
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->isIs_delete()Z

    move-result p1

    if-nez p1, :cond_dc

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->getPublish_at()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_c6

    goto :goto_dc

    .line 135
    :cond_c6
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MessageFragment$1;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->getWork_id()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->getPreview()Ljava/lang/String;

    move-result-object v3

    const-string v4, "消息列表"

    const-string v5, ""

    invoke-static/range {v0 .. v5}, Lcom/codemao/nemo/activity/WorkDetailActivity;->goDetail(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 132
    :cond_dc
    :goto_dc
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MessageFragment$1;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "作品已失效"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method
