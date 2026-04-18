.class Lcom/codemao/nemo/delegates/CloudItemDelegate$3;
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

.field final synthetic val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/delegates/CloudItemDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V
    .registers 3

    .line 168
    iput-object p1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$3;->this$0:Lcom/codemao/nemo/delegates/CloudItemDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$3;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 171
    iget-object v0, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$3;->this$0:Lcom/codemao/nemo/delegates/CloudItemDelegate;

    iget-object v1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$3;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/delegates/CloudItemDelegate;->downloadStartUI(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    return-void
.end method
