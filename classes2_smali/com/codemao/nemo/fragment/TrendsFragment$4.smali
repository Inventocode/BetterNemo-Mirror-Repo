.class Lcom/codemao/nemo/fragment/TrendsFragment$4;
.super Ljava/lang/Object;
.source "TrendsFragment.java"

# interfaces
.implements Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$FollowCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/TrendsFragment;->showFind()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/TrendsFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/TrendsFragment;)V
    .registers 2

    .line 232
    iput-object p1, p0, Lcom/codemao/nemo/fragment/TrendsFragment$4;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public follow(JI)V
    .registers 9

    if-ltz p3, :cond_6d

    .line 235
    iget-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment$4;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/TrendsFragment;->access$100(Lcom/codemao/nemo/fragment/TrendsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_11

    goto :goto_6d

    .line 238
    :cond_11
    iget-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment$4;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/TrendsFragment;->access$100(Lcom/codemao/nemo/fragment/TrendsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/TrendsRecInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/TrendsRecInfo;->getUser_info()Lcom/codemao/nemo/bean/TrendsRecUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/TrendsRecUserInfo;->isFollowed()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 239
    iget-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment$4;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/codemao/nemo/fragment/TrendsFragment;->unFollow(JI)V

    goto :goto_6d

    :cond_2d
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, p3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "动态页-点击关注推荐用户"

    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 242
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setUserRank(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 243
    iget-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment$4;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/codemao/nemo/fragment/TrendsFragment;->followUser(JI)V

    :cond_6d
    :goto_6d
    return-void
.end method
