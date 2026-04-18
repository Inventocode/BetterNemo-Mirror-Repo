.class Lcom/codemao/nemo/adapter/TrendsUpdateDelegate$1;
.super Ljava/lang/Object;
.source "TrendsUpdateDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/TrendsUpdateDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/TrendsUpdateDelegate;

.field final synthetic val$data:Lcom/codemao/nemo/bean/TrendsInfo;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/TrendsUpdateDelegate;Lcom/codemao/nemo/bean/TrendsInfo;)V
    .registers 3

    .line 51
    iput-object p1, p0, Lcom/codemao/nemo/adapter/TrendsUpdateDelegate$1;->this$0:Lcom/codemao/nemo/adapter/TrendsUpdateDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/TrendsUpdateDelegate$1;->val$data:Lcom/codemao/nemo/bean/TrendsInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    const-string/jumbo v0, "动态页-点击作品入口"

    .line 54
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/codemao/nemo/adapter/TrendsUpdateDelegate$1;->this$0:Lcom/codemao/nemo/adapter/TrendsUpdateDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/TrendsUpdateDelegate;->access$000(Lcom/codemao/nemo/adapter/TrendsUpdateDelegate;)Landroid/content/Context;

    move-result-object v0

    iget-object p1, p0, Lcom/codemao/nemo/adapter/TrendsUpdateDelegate$1;->val$data:Lcom/codemao/nemo/bean/TrendsInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/TrendsInfo;->getDynamic_info()Lcom/codemao/nemo/bean/TrendsDetailInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/TrendsDetailInfo;->getWork_id()J

    move-result-wide v1

    iget-object p1, p0, Lcom/codemao/nemo/adapter/TrendsUpdateDelegate$1;->val$data:Lcom/codemao/nemo/bean/TrendsInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/TrendsInfo;->getDynamic_info()Lcom/codemao/nemo/bean/TrendsDetailInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/TrendsDetailInfo;->getPreview()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "动态页"

    const-string v5, ""

    invoke-static/range {v0 .. v5}, Lcom/codemao/nemo/activity/WorkDetailActivity;->goDetail(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
