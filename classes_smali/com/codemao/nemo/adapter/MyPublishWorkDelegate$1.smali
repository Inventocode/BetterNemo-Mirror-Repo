.class Lcom/codemao/nemo/adapter/MyPublishWorkDelegate$1;
.super Ljava/lang/Object;
.source "MyPublishWorkDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/MyPublishWorkDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/MyPublishWorkDelegate;

.field final synthetic val$data:Lcom/codemao/nemo/bean/UserPublishedWorkInfo;

.field final synthetic val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/MyPublishWorkDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/UserPublishedWorkInfo;)V
    .registers 4

    .line 53
    iput-object p1, p0, Lcom/codemao/nemo/adapter/MyPublishWorkDelegate$1;->this$0:Lcom/codemao/nemo/adapter/MyPublishWorkDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/MyPublishWorkDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    iput-object p3, p0, Lcom/codemao/nemo/adapter/MyPublishWorkDelegate$1;->val$data:Lcom/codemao/nemo/bean/UserPublishedWorkInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 57
    iget-object p1, p0, Lcom/codemao/nemo/adapter/MyPublishWorkDelegate$1;->this$0:Lcom/codemao/nemo/adapter/MyPublishWorkDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/MyPublishWorkDelegate;->access$000(Lcom/codemao/nemo/adapter/MyPublishWorkDelegate;)Lcom/codemao/nemo/adapter/MyPublishWorkDelegate$MyPublishWorkCallBack;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 58
    iget-object p1, p0, Lcom/codemao/nemo/adapter/MyPublishWorkDelegate$1;->this$0:Lcom/codemao/nemo/adapter/MyPublishWorkDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/MyPublishWorkDelegate;->access$000(Lcom/codemao/nemo/adapter/MyPublishWorkDelegate;)Lcom/codemao/nemo/adapter/MyPublishWorkDelegate$MyPublishWorkCallBack;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/adapter/MyPublishWorkDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    const v1, 0x7f0a0447

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/adapter/MyPublishWorkDelegate$1;->val$data:Lcom/codemao/nemo/bean/UserPublishedWorkInfo;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/codemao/nemo/adapter/MyPublishWorkDelegate$1;->val$data:Lcom/codemao/nemo/bean/UserPublishedWorkInfo;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->getPreview()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/codemao/nemo/adapter/MyPublishWorkDelegate$MyPublishWorkCallBack;->toWorkDetail(Landroid/widget/ImageView;JLjava/lang/String;)V

    :cond_26
    return-void
.end method
