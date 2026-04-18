.class Lcom/codemao/nemo/delegates/CloudItemDelegate$6;
.super Ljava/lang/Object;
.source "CloudItemDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/delegates/CloudItemDelegate;->resetUI(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/delegates/CloudItemDelegate;

.field final synthetic val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/delegates/CloudItemDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V
    .registers 3

    .line 382
    iput-object p1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$6;->this$0:Lcom/codemao/nemo/delegates/CloudItemDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$6;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 385
    iget-object v0, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$6;->this$0:Lcom/codemao/nemo/delegates/CloudItemDelegate;

    invoke-virtual {v0}, Lcom/codemao/nemo/delegates/CloudItemDelegate;->stopDownloadAnim()V

    .line 386
    iget-object v0, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$6;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    const v1, 0x7f0a01f3

    const v2, 0x7f080137

    invoke-virtual {v0, v1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setImageResource(II)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    return-void
.end method
