.class Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$2;
.super Ljava/lang/Object;
.source "DiscoverySearchUserDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;

.field final synthetic val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;I)V
    .registers 4

    .line 84
    iput-object p1, p0, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$2;->this$0:Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$2;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    iput p3, p0, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 88
    iget-object p1, p0, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$2;->this$0:Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;->access$200(Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;)Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$UserCallBack;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 89
    iget-object p1, p0, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$2;->this$0:Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;->access$200(Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;)Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$UserCallBack;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$2;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    const v1, 0x7f0a043c

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$2;->val$position:I

    invoke-interface {p1, v0, v1}, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$UserCallBack;->toUserDetail(Landroid/widget/ImageView;I)V

    :cond_1c
    return-void
.end method
