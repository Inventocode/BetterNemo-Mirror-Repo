.class Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate$5;
.super Ljava/lang/Object;
.source "UserCollectWorkSearchDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;

.field final synthetic val$data:Lcom/codemao/nemo/bean/CollectWorkInfo;

.field final synthetic val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

.field final synthetic val$isAbate:Z

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;ZLcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/CollectWorkInfo;I)V
    .registers 6

    .line 158
    iput-object p1, p0, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate$5;->this$0:Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;

    iput-boolean p2, p0, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate$5;->val$isAbate:Z

    iput-object p3, p0, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate$5;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    iput-object p4, p0, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate$5;->val$data:Lcom/codemao/nemo/bean/CollectWorkInfo;

    iput p5, p0, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate$5;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 162
    iget-boolean p1, p0, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate$5;->val$isAbate:Z

    if-nez p1, :cond_24

    .line 163
    iget-object p1, p0, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate$5;->this$0:Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;->access$300(Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;)Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate$UserCollectWorkCallBack;

    move-result-object v0

    iget-object p1, p0, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate$5;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    const v1, 0x7f0a0447

    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    iget-object p1, p0, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate$5;->val$data:Lcom/codemao/nemo/bean/CollectWorkInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CollectWorkInfo;->getId()J

    move-result-wide v2

    iget-object p1, p0, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate$5;->val$data:Lcom/codemao/nemo/bean/CollectWorkInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CollectWorkInfo;->getPreview()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate$5;->val$position:I

    invoke-interface/range {v0 .. v5}, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate$UserCollectWorkCallBack;->toWorkDetail(Landroid/widget/ImageView;JLjava/lang/String;I)V

    :cond_24
    return-void
.end method
