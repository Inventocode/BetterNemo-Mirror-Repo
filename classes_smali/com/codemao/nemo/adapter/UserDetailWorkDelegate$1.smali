.class Lcom/codemao/nemo/adapter/UserDetailWorkDelegate$1;
.super Ljava/lang/Object;
.source "UserDetailWorkDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/UserDetailWorkDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/UserDetailWorkDelegate;

.field final synthetic val$data:Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;

.field final synthetic val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/UserDetailWorkDelegate;Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;I)V
    .registers 5

    .line 84
    iput-object p1, p0, Lcom/codemao/nemo/adapter/UserDetailWorkDelegate$1;->this$0:Lcom/codemao/nemo/adapter/UserDetailWorkDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/UserDetailWorkDelegate$1;->val$data:Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;

    iput-object p3, p0, Lcom/codemao/nemo/adapter/UserDetailWorkDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    iput p4, p0, Lcom/codemao/nemo/adapter/UserDetailWorkDelegate$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 88
    iget-object p1, p0, Lcom/codemao/nemo/adapter/UserDetailWorkDelegate$1;->this$0:Lcom/codemao/nemo/adapter/UserDetailWorkDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/UserDetailWorkDelegate;->access$000(Lcom/codemao/nemo/adapter/UserDetailWorkDelegate;)Lcom/codemao/nemo/adapter/UserDetailWorkDelegate$MyPublishWorkCallBack;

    move-result-object p1

    if-eqz p1, :cond_28

    iget-object p1, p0, Lcom/codemao/nemo/adapter/UserDetailWorkDelegate$1;->val$data:Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->getPublish_time()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_28

    .line 89
    iget-object p1, p0, Lcom/codemao/nemo/adapter/UserDetailWorkDelegate$1;->this$0:Lcom/codemao/nemo/adapter/UserDetailWorkDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/UserDetailWorkDelegate;->access$000(Lcom/codemao/nemo/adapter/UserDetailWorkDelegate;)Lcom/codemao/nemo/adapter/UserDetailWorkDelegate$MyPublishWorkCallBack;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/adapter/UserDetailWorkDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    const v1, 0x7f0a0447

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/adapter/UserDetailWorkDelegate$1;->val$position:I

    invoke-interface {p1, v0, v1}, Lcom/codemao/nemo/adapter/UserDetailWorkDelegate$MyPublishWorkCallBack;->toWorkDetail(Landroid/widget/ImageView;I)V

    :cond_28
    return-void
.end method
