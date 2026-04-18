.class Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$1;
.super Ljava/lang/Object;
.source "PublishSearchItemDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/PublishSearchData$PublishData;)V
    .registers 4

    .line 53
    iput-object p1, p0, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$1;->this$0:Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    iput-object p3, p0, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$1;->val$data:Lcom/codemao/nemo/bean/PublishSearchData$PublishData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 56
    iget-object v0, p0, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$1;->this$0:Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;->access$000(Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;)I

    move-result v0

    if-gtz v0, :cond_15

    .line 57
    iget-object v0, p0, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$1$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$1$1;-><init>(Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_34

    .line 65
    :cond_15
    iget-object v0, p0, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    const v1, 0x7f0a055f

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v0, p0, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$1;->val$data:Lcom/codemao/nemo/bean/PublishSearchData$PublishData;

    iget-object v3, v0, Lcom/codemao/nemo/bean/PublishSearchData$PublishData;->work_name:Ljava/lang/String;

    iget-object v0, p0, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$1;->this$0:Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;->access$100(Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    iget-object v0, p0, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$1;->this$0:Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;->access$000(Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;)I

    move-result v7

    const-string v5, "#6F60DD"

    invoke-static/range {v2 .. v7}, Lcom/codemao/nemo/util/StringUtil;->setHighLight(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    :goto_34
    return-void
.end method
