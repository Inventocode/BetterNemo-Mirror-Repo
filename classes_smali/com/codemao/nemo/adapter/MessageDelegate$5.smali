.class Lcom/codemao/nemo/adapter/MessageDelegate$5;
.super Ljava/lang/Object;
.source "MessageDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/MessageDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/MessageDelegate;

.field final synthetic val$data:Lcom/codemao/nemo/bean/MessageVO;

.field final synthetic val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/MessageDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/MessageVO;)V
    .registers 4

    .line 129
    iput-object p1, p0, Lcom/codemao/nemo/adapter/MessageDelegate$5;->this$0:Lcom/codemao/nemo/adapter/MessageDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/MessageDelegate$5;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    iput-object p3, p0, Lcom/codemao/nemo/adapter/MessageDelegate$5;->val$data:Lcom/codemao/nemo/bean/MessageVO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 133
    iget-object p1, p0, Lcom/codemao/nemo/adapter/MessageDelegate$5;->this$0:Lcom/codemao/nemo/adapter/MessageDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/MessageDelegate;->access$000(Lcom/codemao/nemo/adapter/MessageDelegate;)Lcom/codemao/nemo/adapter/MessageDelegate$RecommendWorkCallBack;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/adapter/MessageDelegate$5;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    const v1, 0x7f0a043c

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/adapter/MessageDelegate$5;->val$data:Lcom/codemao/nemo/bean/MessageVO;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/MessageVO;->getWork()Lcom/codemao/nemo/bean/MessageVO$MessageWork;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/codemao/nemo/adapter/MessageDelegate$RecommendWorkCallBack;->toWorkDetail(Landroid/widget/ImageView;Lcom/codemao/nemo/bean/MessageVO$MessageWork;)V

    return-void
.end method
