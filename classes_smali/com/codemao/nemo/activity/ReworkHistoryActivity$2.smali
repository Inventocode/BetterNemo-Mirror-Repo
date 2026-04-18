.class Lcom/codemao/nemo/activity/ReworkHistoryActivity$2;
.super Ljava/lang/Object;
.source "ReworkHistoryActivity.java"

# interfaces
.implements Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate$ReworkCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/ReworkHistoryActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/ReworkHistoryActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/ReworkHistoryActivity;)V
    .registers 2

    .line 123
    iput-object p1, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity$2;->this$0:Lcom/codemao/nemo/activity/ReworkHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMore()V
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity$2;->this$0:Lcom/codemao/nemo/activity/ReworkHistoryActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->access$008(Lcom/codemao/nemo/activity/ReworkHistoryActivity;)I

    .line 127
    iget-object v0, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity$2;->this$0:Lcom/codemao/nemo/activity/ReworkHistoryActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->access$100(Lcom/codemao/nemo/activity/ReworkHistoryActivity;)V

    return-void
.end method

.method public toUserDetail(Landroid/widget/ImageView;JLjava/lang/String;J)V
    .registers 14

    .line 133
    iget-object v0, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity$2;->this$0:Lcom/codemao/nemo/activity/ReworkHistoryActivity;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p5, ""

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v4, "再创作历史"

    const-string v6, ""

    move-object v1, p4

    move-wide v2, p2

    invoke-static/range {v0 .. v6}, Lcom/codemao/nemo/activity/UserDetailActivity;->goDetail(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
