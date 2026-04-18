.class Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate$1;
.super Ljava/lang/Object;
.source "LatestOtherWorkItemDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;

.field final synthetic val$data:Lcom/codemao/nemo/bean/LatestWorkInfo;

.field final synthetic val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;Lcom/codemao/nemo/bean/LatestWorkInfo;ILcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V
    .registers 5

    .line 99
    iput-object p1, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate$1;->this$0:Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate$1;->val$data:Lcom/codemao/nemo/bean/LatestWorkInfo;

    iput p3, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate$1;->val$position:I

    iput-object p4, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate$1;->val$data:Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getWork_id()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, p1, v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate$1;->val$position:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    iget-object v0, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate$1;->this$0:Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;->access$000(Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, p1, v2

    const-string/jumbo v0, "最新页-点击作品卡片"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate$1;->val$data:Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getWork_id()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate$1;->val$position:I

    add-int/2addr v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkRank(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    iget-object v1, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate$1;->this$0:Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;

    invoke-static {v1}, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;->access$000(Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setThemeTag(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 105
    iget-object p1, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate$1;->this$0:Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;->access$100(Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;)Landroid/app/Activity;

    move-result-object v0

    iget-object p1, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    const v1, 0x7f0a0447

    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    iget-object p1, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate$1;->val$data:Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getPreview()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate$1;->val$data:Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getWork_id()J

    move-result-wide v3

    const-string/jumbo v5, "最新页"

    const-string v6, ""

    invoke-static/range {v0 .. v6}, Lcom/codemao/nemo/activity/WorkDetailActivity;->goDetailWithAnim(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
