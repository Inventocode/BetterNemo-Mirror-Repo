.class Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$1;
.super Ljava/lang/Object;
.source "UserFollowersOrFansActivity.java"

# interfaces
.implements Lcom/codemao/nemo/adapter/UserFollowersAndFansDelegate$UserCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$1;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public followUser(JI)V
    .registers 5

    .line 142
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$1;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->follow(JI)V

    return-void
.end method

.method public toUserDetail(Landroid/widget/ImageView;I)V
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 129
    iget-object v2, v0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$1;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    iget-object v2, v2, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_f

    return-void

    .line 132
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$1;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    invoke-virtual {v3}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-点击用户卡片"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 133
    iget-object v2, v0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$1;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    invoke-static {v2}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->access$000(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;)I

    move-result v2

    if-nez v2, :cond_5f

    .line 134
    iget-object v3, v0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$1;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    invoke-static {v3}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->access$100(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/bean/UserFanAndFollowInfo;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/UserFanAndFollowInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object v4

    iget-object v2, v0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$1;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    invoke-static {v2}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->access$100(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/UserFanAndFollowInfo;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/UserFanAndFollowInfo;->getId()J

    move-result-wide v5

    const-string/jumbo v7, "用户粉丝列表"

    const-string v8, ""

    const-string v9, ""

    invoke-static/range {v3 .. v9}, Lcom/codemao/nemo/activity/UserDetailActivity;->goDetail(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_89

    .line 136
    :cond_5f
    iget-object v10, v0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$1;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    invoke-static {v10}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->access$100(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/bean/UserFanAndFollowInfo;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/UserFanAndFollowInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object v11

    iget-object v2, v0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$1;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    invoke-static {v2}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->access$100(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/UserFanAndFollowInfo;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/UserFanAndFollowInfo;->getId()J

    move-result-wide v12

    const-string/jumbo v14, "用户关注列表"

    const-string v15, ""

    const-string v16, ""

    invoke-static/range {v10 .. v16}, Lcom/codemao/nemo/activity/UserDetailActivity;->goDetail(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_89
    return-void
.end method
