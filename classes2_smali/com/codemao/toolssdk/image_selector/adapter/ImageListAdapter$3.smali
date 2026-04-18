.class Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter$3;
.super Ljava/lang/Object;
.source "ImageListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;->onBindData(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;ILcom/codemao/toolssdk/image_selector/bean/Image;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;

.field final synthetic val$item:Lcom/codemao/toolssdk/image_selector/bean/Image;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;ILcom/codemao/toolssdk/image_selector/bean/Image;)V
    .registers 4

    .line 68
    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter$3;->this$0:Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;

    iput p2, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter$3;->val$position:I

    iput-object p3, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter$3;->val$item:Lcom/codemao/toolssdk/image_selector/bean/Image;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 71
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter$3;->this$0:Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;->access$000(Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;)Lcom/codemao/toolssdk/image_selector/common/OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 72
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter$3;->this$0:Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;->access$000(Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;)Lcom/codemao/toolssdk/image_selector/common/OnItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter$3;->val$position:I

    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter$3;->val$item:Lcom/codemao/toolssdk/image_selector/bean/Image;

    invoke-interface {p1, v0, v1}, Lcom/codemao/toolssdk/image_selector/common/OnItemClickListener;->onImageClick(ILcom/codemao/toolssdk/image_selector/bean/Image;)V

    :cond_15
    return-void
.end method
