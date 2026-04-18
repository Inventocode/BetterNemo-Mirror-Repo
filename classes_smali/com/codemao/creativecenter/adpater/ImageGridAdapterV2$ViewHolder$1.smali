.class Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder$1;
.super Ljava/lang/Object;
.source "ImageGridAdapterV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;->bindData(Lcom/codemao/creativestore/bean/Image;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;

.field final synthetic val$data:Lcom/codemao/creativestore/bean/Image;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;Lcom/codemao/creativestore/bean/Image;I)V
    .registers 4

    .line 271
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;

    iput-object p2, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder$1;->val$data:Lcom/codemao/creativestore/bean/Image;

    iput p3, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 274
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;->this$0:Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->access$000(Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;)Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$OnItemChooseListener;

    move-result-object p1

    if-eqz p1, :cond_36

    .line 275
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;->this$0:Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->access$100(Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;)Z

    move-result p1

    if-nez p1, :cond_27

    .line 276
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;->this$0:Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->access$200(Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder$1;->val$data:Lcom/codemao/creativestore/bean/Image;

    iget-object v0, v0, Lcom/codemao/creativestore/bean/Image;->path:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    return-void

    .line 280
    :cond_27
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;->this$0:Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->access$000(Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;)Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$OnItemChooseListener;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder$1;->val$data:Lcom/codemao/creativestore/bean/Image;

    iget v1, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder$1;->val$position:I

    invoke-interface {p1, v0, v1}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$OnItemChooseListener;->onItemSelect(Lcom/codemao/creativestore/bean/Image;I)V

    :cond_36
    return-void
.end method
