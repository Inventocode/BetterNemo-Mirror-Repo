.class Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$2;
.super Ljava/lang/Object;
.source "DiscoverySearchWorkDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;

.field final synthetic val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;I)V
    .registers 4

    .line 99
    iput-object p1, p0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$2;->this$0:Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$2;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    iput p3, p0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 103
    iget-object p1, p0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$2;->this$0:Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;->access$300(Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;)Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$WorkCallBack;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 104
    iget-object p1, p0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$2;->this$0:Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;->access$300(Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;)Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$WorkCallBack;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$2;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    const v1, 0x7f0a0447

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$2;->val$position:I

    invoke-interface {p1, v0, v1}, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$WorkCallBack;->toWorkDetail(Landroid/widget/ImageView;I)V

    :cond_1c
    return-void
.end method
