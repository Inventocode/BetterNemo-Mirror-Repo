.class Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$4;
.super Ljava/lang/Object;
.source "TrendsRecUserAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;->onBindViewHolder(Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$MyHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;

.field final synthetic val$i:I

.field final synthetic val$userInfo:Lcom/codemao/nemo/bean/TrendsRecUserInfo;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;ILcom/codemao/nemo/bean/TrendsRecUserInfo;)V
    .registers 4

    .line 98
    iput-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$4;->this$0:Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;

    iput p2, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$4;->val$i:I

    iput-object p3, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$4;->val$userInfo:Lcom/codemao/nemo/bean/TrendsRecUserInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/String;

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$4;->val$i:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string/jumbo v1, "动态页-点击推荐用户徽章"

    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$4;->val$i:I

    add-int/2addr v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setUserRank(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 103
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$4;->val$userInfo:Lcom/codemao/nemo/bean/TrendsRecUserInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/TrendsRecUserInfo;->getAuthor_level()I

    move-result v0

    iget-object v1, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$4;->this$0:Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;

    invoke-static {v1}, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;->access$000(Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/codemao/nemo/util/UserLevelupHelper;->showLevelDetail(ILandroid/content/Context;)V

    return-void
.end method
