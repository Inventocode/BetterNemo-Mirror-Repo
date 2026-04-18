.class Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$1$1;
.super Ljava/lang/Object;
.source "PublishSearchItemDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$1;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$1;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$1$1;->this$1:Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 60
    iget-object v0, p0, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$1$1;->this$1:Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$1;

    iget-object v1, v0, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$1;->this$0:Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;

    iget-object v0, v0, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    const v2, 0x7f0a055f

    invoke-virtual {v0, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-static {v1, v0}, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;->access$002(Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;I)I

    .line 61
    iget-object v0, p0, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$1$1;->this$1:Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$1;

    iget-object v0, v0, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    invoke-virtual {v0, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v3

    iget-object v0, p0, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$1$1;->this$1:Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$1;

    iget-object v1, v0, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$1;->val$data:Lcom/codemao/nemo/bean/PublishSearchData$PublishData;

    iget-object v4, v1, Lcom/codemao/nemo/bean/PublishSearchData$PublishData;->work_name:Ljava/lang/String;

    iget-object v0, v0, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$1;->this$0:Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;->access$100(Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$1$1;->this$1:Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$1;

    iget-object v0, v0, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$1;->this$0:Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;->access$000(Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;)I

    move-result v8

    const-string v6, "#6F60DD"

    const/4 v7, 0x2

    invoke-static/range {v3 .. v8}, Lcom/codemao/nemo/util/StringUtil;->setHighLight(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
