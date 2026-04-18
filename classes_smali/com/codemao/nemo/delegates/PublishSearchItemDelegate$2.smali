.class Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$2;
.super Ljava/lang/Object;
.source "PublishSearchItemDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;

.field final synthetic val$data:Lcom/codemao/nemo/bean/PublishSearchData$PublishData;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;Lcom/codemao/nemo/bean/PublishSearchData$PublishData;)V
    .registers 3

    .line 71
    iput-object p1, p0, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$2;->this$0:Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$2;->val$data:Lcom/codemao/nemo/bean/PublishSearchData$PublishData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 75
    iget-object p1, p0, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$2;->this$0:Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;->access$200(Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;)Landroid/app/Activity;

    move-result-object v0

    iget-object p1, p0, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$2;->val$data:Lcom/codemao/nemo/bean/PublishSearchData$PublishData;

    iget-wide v1, p1, Lcom/codemao/nemo/bean/PublishSearchData$PublishData;->id:J

    iget-object v3, p1, Lcom/codemao/nemo/bean/PublishSearchData$PublishData;->preview:Ljava/lang/String;

    const-string/jumbo v4, "我的已发布搜索页"

    const-string v5, ""

    invoke-static/range {v0 .. v5}, Lcom/codemao/nemo/activity/WorkDetailActivity;->goDetail(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
