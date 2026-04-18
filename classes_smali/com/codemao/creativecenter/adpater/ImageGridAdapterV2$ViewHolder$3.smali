.class Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder$3;
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


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;)V
    .registers 2

    .line 298
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder$3;->this$1:Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 301
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder$3;->this$1:Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;->this$0:Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->access$000(Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;)Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$OnItemChooseListener;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 302
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder$3;->this$1:Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;->this$0:Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->access$000(Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;)Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$OnItemChooseListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$OnItemChooseListener;->onCoverClick()V

    :cond_15
    return-void
.end method
