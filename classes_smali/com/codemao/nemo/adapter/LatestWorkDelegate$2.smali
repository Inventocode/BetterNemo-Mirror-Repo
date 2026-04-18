.class Lcom/codemao/nemo/adapter/LatestWorkDelegate$2;
.super Ljava/lang/Object;
.source "LatestWorkDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/LatestWorkDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/LatestWorkDelegate;

.field final synthetic val$data:Lcom/codemao/nemo/bean/LatestWorkInfo;

.field final synthetic val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/LatestWorkDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/LatestWorkInfo;I)V
    .registers 5

    .line 60
    iput-object p1, p0, Lcom/codemao/nemo/adapter/LatestWorkDelegate$2;->this$0:Lcom/codemao/nemo/adapter/LatestWorkDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/LatestWorkDelegate$2;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    iput-object p3, p0, Lcom/codemao/nemo/adapter/LatestWorkDelegate$2;->val$data:Lcom/codemao/nemo/bean/LatestWorkInfo;

    iput p4, p0, Lcom/codemao/nemo/adapter/LatestWorkDelegate$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 64
    iget-object p1, p0, Lcom/codemao/nemo/adapter/LatestWorkDelegate$2;->this$0:Lcom/codemao/nemo/adapter/LatestWorkDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/LatestWorkDelegate;->access$000(Lcom/codemao/nemo/adapter/LatestWorkDelegate;)Lcom/codemao/nemo/adapter/LatestWorkDelegate$RecommendWorkCallBack;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 65
    iget-object p1, p0, Lcom/codemao/nemo/adapter/LatestWorkDelegate$2;->this$0:Lcom/codemao/nemo/adapter/LatestWorkDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/LatestWorkDelegate;->access$000(Lcom/codemao/nemo/adapter/LatestWorkDelegate;)Lcom/codemao/nemo/adapter/LatestWorkDelegate$RecommendWorkCallBack;

    move-result-object v0

    iget-object p1, p0, Lcom/codemao/nemo/adapter/LatestWorkDelegate$2;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    const v1, 0x7f0a0447

    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    iget-object p1, p0, Lcom/codemao/nemo/adapter/LatestWorkDelegate$2;->val$data:Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getWork_id()J

    move-result-wide v2

    iget-object p1, p0, Lcom/codemao/nemo/adapter/LatestWorkDelegate$2;->val$data:Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getPreview()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/codemao/nemo/adapter/LatestWorkDelegate$2;->val$position:I

    invoke-interface/range {v0 .. v5}, Lcom/codemao/nemo/adapter/LatestWorkDelegate$RecommendWorkCallBack;->toWorkDetail(Landroid/widget/ImageView;JLjava/lang/String;I)V

    :cond_28
    return-void
.end method
