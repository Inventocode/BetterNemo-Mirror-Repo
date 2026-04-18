.class Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$9;
.super Ljava/lang/Object;
.source "DiscoveryUserSearchFragmentV2.java"

# interfaces
.implements Lcom/codemao/nemo/adapter/EmptyUserDelegate$UserCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->setEmptyData(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;)V
    .registers 2

    .line 388
    iput-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public followUser(JI)V
    .registers 5

    .line 402
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    if-nez v0, :cond_13

    .line 403
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "搜索页-主页-点击前往登录（关注）"

    invoke-static {p1, p3, p2}, Lcom/codemao/nemo/view/UnLoginXpopup;->showUnLoginForRecordHobbiesTipsDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 408
    :cond_13
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;

    invoke-virtual {v0, p1, p2, p3}, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->followEmpty(JI)V

    return-void
.end method

.method public toUserDetail(Landroid/widget/ImageView;I)V
    .registers 10

    .line 391
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->rvEmpty:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_b

    return-void

    :cond_b
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;

    invoke-static {v2}, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->access$000(Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/bean/EmptyUserInfo;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/EmptyUserInfo;->getUser_id()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "搜索页-主页-点击可能关注的人"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 395
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;

    invoke-static {v3}, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->access$000(Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/nemo/bean/EmptyUserInfo;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/EmptyUserInfo;->getUser_id()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setFollowUserId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 396
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->access$000(Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/EmptyUserInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/EmptyUserInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->access$000(Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/EmptyUserInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/EmptyUserInfo;->getUser_id()J

    move-result-wide v2

    const-string v4, "发现搜索页"

    const-string v5, ""

    const-string v6, ""

    invoke-static/range {v0 .. v6}, Lcom/codemao/nemo/activity/UserDetailActivity;->goDetail(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
