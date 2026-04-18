.class Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$2;
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

.field final synthetic val$typeItemData:Lcom/codemao/nemo/bean/TrendsRecInfo;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;ILcom/codemao/nemo/bean/TrendsRecInfo;)V
    .registers 4

    .line 76
    iput-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$2;->this$0:Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;

    iput p2, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$2;->val$i:I

    iput-object p3, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$2;->val$typeItemData:Lcom/codemao/nemo/bean/TrendsRecInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$2;->val$i:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, p1, v3

    const-string v0, "2"

    aput-object v0, p1, v2

    const-string/jumbo v3, "动态页-点击推荐用户作品"

    invoke-static {v3, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$2;->val$i:I

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setUserRank(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkRank(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 82
    iget-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$2;->this$0:Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;->access$000(Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$2;->val$typeItemData:Lcom/codemao/nemo/bean/TrendsRecInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/TrendsRecInfo;->getNew_publish_work()Lcom/codemao/nemo/bean/TrendsRecWorkInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/TrendsRecWorkInfo;->getWork_id()J

    move-result-wide v1

    iget-object p1, p0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$2;->val$typeItemData:Lcom/codemao/nemo/bean/TrendsRecInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/TrendsRecInfo;->getNew_publish_work()Lcom/codemao/nemo/bean/TrendsRecWorkInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/TrendsRecWorkInfo;->getPreview()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "动态页"

    const-string v5, ""

    invoke-static/range {v0 .. v5}, Lcom/codemao/nemo/activity/WorkDetailActivity;->goDetail(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
