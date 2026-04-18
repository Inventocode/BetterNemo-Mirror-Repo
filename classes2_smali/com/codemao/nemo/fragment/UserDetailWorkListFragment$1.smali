.class Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$1;
.super Ljava/lang/Object;
.source "UserDetailWorkListFragment.java"

# interfaces
.implements Lcom/codemao/nemo/adapter/UserDetailWorkDelegate$MyPublishWorkCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->initDelegate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$1;->this$0:Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toWorkDetail(Landroid/widget/ImageView;I)V
    .registers 9

    .line 74
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$1;->this$0:Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_b

    return-void

    :cond_b
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 77
    iget-object v1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$1;->this$0:Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;

    invoke-static {v1}, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->access$000(Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;)Z

    move-result v1

    const-string v2, "主态"

    const-string v3, "客态"

    if-eqz v1, :cond_1d

    move-object v1, v2

    goto :goto_1e

    :cond_1d
    move-object v1, v3

    :goto_1e
    aput-object v1, p1, v0

    const-string v0, "个人主页-点击作品卡片"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    iget-object v1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$1;->this$0:Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;

    invoke-static {v1}, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->access$000(Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;)Z

    move-result v1

    if-eqz v1, :cond_32

    goto :goto_33

    :cond_32
    move-object v2, v3

    :goto_33
    invoke-virtual {p1, v2}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setUserState(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 80
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$1;->this$0:Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;

    .line 81
    iget-object p2, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$1;->this$0:Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->getId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->getPreview()Ljava/lang/String;

    move-result-object v3

    const-string v4, "个人主页"

    const-string v5, ""

    invoke-static/range {v0 .. v5}, Lcom/codemao/nemo/activity/WorkDetailActivity;->goDetail(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
