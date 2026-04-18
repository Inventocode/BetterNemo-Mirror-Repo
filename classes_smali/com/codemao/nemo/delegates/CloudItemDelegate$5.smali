.class Lcom/codemao/nemo/delegates/CloudItemDelegate$5;
.super Ljava/lang/Object;
.source "CloudItemDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/delegates/CloudItemDelegate;->downloadEndUI(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/CloudData;)V
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

    .line 355
    iput-object p1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$5;->this$0:Lcom/codemao/nemo/delegates/CloudItemDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$5;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    iput-object p3, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$5;->val$data:Lcom/codemao/nemo/bean/CloudData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 358
    iget-object v0, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$5;->this$0:Lcom/codemao/nemo/delegates/CloudItemDelegate;

    invoke-virtual {v0}, Lcom/codemao/nemo/delegates/CloudItemDelegate;->stopDownloadAnim()V

    .line 359
    iget-object v0, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$5;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    const v1, 0x7f0a01f3

    const v2, 0x7f080137

    invoke-virtual {v0, v1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setImageResource(II)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 360
    iget-object v0, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$5;->val$data:Lcom/codemao/nemo/bean/CloudData;

    iget v1, v0, Lcom/codemao/nemo/bean/CloudData;->template_type:I

    const/4 v2, 0x4

    const v3, 0x7f0a05fc

    const/4 v4, 0x2

    if-ne v1, v4, :cond_25

    .line 361
    iget-object v0, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$5;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    invoke-virtual {v0, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3d

    .line 362
    :cond_25
    iget-wide v0, v0, Lcom/codemao/nemo/bean/CloudData;->publish_time:J

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_37

    .line 363
    iget-object v0, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$5;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    invoke-virtual {v0, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3d

    .line 365
    :cond_37
    iget-object v0, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$5;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    :goto_3d
    return-void
.end method
