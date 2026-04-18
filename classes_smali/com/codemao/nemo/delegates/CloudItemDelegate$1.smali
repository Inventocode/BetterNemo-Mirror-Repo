.class Lcom/codemao/nemo/delegates/CloudItemDelegate$1;
.super Ljava/lang/Object;
.source "CloudItemDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/delegates/CloudItemDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/delegates/CloudItemDelegate;

.field final synthetic val$data:Lcom/codemao/nemo/bean/CloudData;

.field final synthetic val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/delegates/CloudItemDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/CloudData;)V
    .registers 4

    .line 93
    iput-object p1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$1;->this$0:Lcom/codemao/nemo/delegates/CloudItemDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    iput-object p3, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$1;->val$data:Lcom/codemao/nemo/bean/CloudData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 96
    iget-object v0, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$1;->this$0:Lcom/codemao/nemo/delegates/CloudItemDelegate;

    iget-object v1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    const v2, 0x7f0a055f

    invoke-virtual {v1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/delegates/CloudItemDelegate;->access$002(Lcom/codemao/nemo/delegates/CloudItemDelegate;I)I

    .line 97
    iget-object v0, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    invoke-virtual {v0, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v3

    iget-object v0, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$1;->val$data:Lcom/codemao/nemo/bean/CloudData;

    iget-object v4, v0, Lcom/codemao/nemo/bean/CloudData;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$1;->this$0:Lcom/codemao/nemo/delegates/CloudItemDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/delegates/CloudItemDelegate;->access$100(Lcom/codemao/nemo/delegates/CloudItemDelegate;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$1;->this$0:Lcom/codemao/nemo/delegates/CloudItemDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/delegates/CloudItemDelegate;->access$000(Lcom/codemao/nemo/delegates/CloudItemDelegate;)I

    move-result v8

    const-string v6, "#6F60DD"

    const/4 v7, 0x1

    invoke-static/range {v3 .. v8}, Lcom/codemao/nemo/util/StringUtil;->setHighLight(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
