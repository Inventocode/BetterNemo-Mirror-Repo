.class Lcom/codemao/nemo/adapter/WorkDetailBottomDelegate$1;
.super Ljava/lang/Object;
.source "WorkDetailBottomDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/WorkDetailBottomDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/WorkDetailBottomDelegate;

.field final synthetic val$data:Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/WorkDetailBottomDelegate;Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;)V
    .registers 3

    .line 69
    iput-object p1, p0, Lcom/codemao/nemo/adapter/WorkDetailBottomDelegate$1;->this$0:Lcom/codemao/nemo/adapter/WorkDetailBottomDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/WorkDetailBottomDelegate$1;->val$data:Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/nemo/adapter/WorkDetailBottomDelegate$1;->val$data:Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;->getWork_id()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/codemao/nemo/adapter/WorkDetailBottomDelegate$1;->this$0:Lcom/codemao/nemo/adapter/WorkDetailBottomDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/adapter/WorkDetailBottomDelegate;->access$000(Lcom/codemao/nemo/adapter/WorkDetailBottomDelegate;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p1, v2

    const-string/jumbo v0, "作品详情页-点击作品卡片"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/codemao/nemo/adapter/WorkDetailBottomDelegate$1;->val$data:Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;->getWork_id()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    iget-object v1, p0, Lcom/codemao/nemo/adapter/WorkDetailBottomDelegate$1;->this$0:Lcom/codemao/nemo/adapter/WorkDetailBottomDelegate;

    invoke-static {v1}, Lcom/codemao/nemo/adapter/WorkDetailBottomDelegate;->access$000(Lcom/codemao/nemo/adapter/WorkDetailBottomDelegate;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkColumn(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 75
    iget-object p1, p0, Lcom/codemao/nemo/adapter/WorkDetailBottomDelegate$1;->this$0:Lcom/codemao/nemo/adapter/WorkDetailBottomDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/WorkDetailBottomDelegate;->access$100(Lcom/codemao/nemo/adapter/WorkDetailBottomDelegate;)Landroid/content/Context;

    move-result-object v0

    iget-object p1, p0, Lcom/codemao/nemo/adapter/WorkDetailBottomDelegate$1;->val$data:Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;->getWork_id()J

    move-result-wide v1

    iget-object p1, p0, Lcom/codemao/nemo/adapter/WorkDetailBottomDelegate$1;->val$data:Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;->getPreview()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "作品详情页"

    const-string v5, ""

    invoke-static/range {v0 .. v5}, Lcom/codemao/nemo/activity/WorkDetailActivity;->goDetail(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
