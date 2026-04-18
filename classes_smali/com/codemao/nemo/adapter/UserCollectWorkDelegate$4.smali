.class Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$4;
.super Ljava/lang/Object;
.source "UserCollectWorkDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;

.field final synthetic val$data:Lcom/codemao/nemo/bean/CollectWorkInfo;

.field final synthetic val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

.field final synthetic val$isAbate:Z


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;ZLcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/CollectWorkInfo;)V
    .registers 5

    .line 126
    iput-object p1, p0, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$4;->this$0:Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;

    iput-boolean p2, p0, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$4;->val$isAbate:Z

    iput-object p3, p0, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$4;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    iput-object p4, p0, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$4;->val$data:Lcom/codemao/nemo/bean/CollectWorkInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 130
    iget-boolean p1, p0, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$4;->val$isAbate:Z

    if-nez p1, :cond_22

    .line 131
    iget-object p1, p0, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$4;->this$0:Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;->access$100(Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;)Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$UserCollectWorkCallBack;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$4;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    const v1, 0x7f0a0447

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$4;->val$data:Lcom/codemao/nemo/bean/CollectWorkInfo;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CollectWorkInfo;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$4;->val$data:Lcom/codemao/nemo/bean/CollectWorkInfo;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/CollectWorkInfo;->getPreview()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$UserCollectWorkCallBack;->toWorkDetail(Landroid/widget/ImageView;JLjava/lang/String;)V

    :cond_22
    return-void
.end method
