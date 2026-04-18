.class Lcom/codemao/nemo/adapter/TrendsRecTopAdapter$1;
.super Ljava/lang/Object;
.source "TrendsRecTopAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;->onBindViewHolder(Lcom/codemao/nemo/adapter/TrendsRecTopAdapter$MyHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;

.field final synthetic val$i:I

.field final synthetic val$typeItemData:Lcom/codemao/nemo/bean/TrendsRecInfo;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;ILcom/codemao/nemo/bean/TrendsRecInfo;)V
    .registers 4

    .line 81
    iput-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter$1;->this$0:Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;

    iput p2, p0, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter$1;->val$i:I

    iput-object p3, p0, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter$1;->val$typeItemData:Lcom/codemao/nemo/bean/TrendsRecInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/String;

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter$1;->val$i:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string/jumbo v1, "动态页-点击社区达人用户头像"

    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter$1;->val$i:I

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

    .line 86
    iget-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter$1;->this$0:Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;->access$000(Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter$1;->val$typeItemData:Lcom/codemao/nemo/bean/TrendsRecInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/TrendsRecInfo;->getUser_info()Lcom/codemao/nemo/bean/TrendsRecUserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/TrendsRecUserInfo;->getAvatar()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter$1;->val$typeItemData:Lcom/codemao/nemo/bean/TrendsRecInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/TrendsRecInfo;->getUser_info()Lcom/codemao/nemo/bean/TrendsRecUserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/TrendsRecUserInfo;->getUser_id()J

    move-result-wide v2

    const-string/jumbo v4, "动态页"

    const-string v5, ""

    const-string v6, ""

    invoke-static/range {v0 .. v6}, Lcom/codemao/nemo/activity/UserDetailActivity;->goDetail(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
