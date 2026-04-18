.class Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter$2;
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

.field final synthetic val$viewHolder:Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;ILcom/codemao/toolssdk/image_selector/bean/Image;Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;)V
    .registers 5

    .line 51
    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter$2;->this$0:Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;

    iput p2, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter$2;->val$position:I

    iput-object p3, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter$2;->val$item:Lcom/codemao/toolssdk/image_selector/bean/Image;

    iput-object p4, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter$2;->val$viewHolder:Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 54
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter$2;->this$0:Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;->access$000(Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;)Lcom/codemao/toolssdk/image_selector/common/OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_38

    .line 55
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter$2;->this$0:Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;->access$000(Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;)Lcom/codemao/toolssdk/image_selector/common/OnItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter$2;->val$position:I

    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter$2;->val$item:Lcom/codemao/toolssdk/image_selector/bean/Image;

    invoke-interface {p1, v0, v1}, Lcom/codemao/toolssdk/image_selector/common/OnItemClickListener;->onCheckedClick(ILcom/codemao/toolssdk/image_selector/bean/Image;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_38

    .line 57
    sget-object p1, Lcom/codemao/toolssdk/image_selector/common/Constant;->imageList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter$2;->val$item:Lcom/codemao/toolssdk/image_selector/bean/Image;

    iget-object v0, v0, Lcom/codemao/toolssdk/image_selector/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 58
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter$2;->val$viewHolder:Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    sget v0, Lcom/codemao/toolssdk/R$id;->ivPhotoCheaked:I

    sget v1, Lcom/codemao/toolssdk/R$drawable;->toolsdk_ic_checked:I

    invoke-virtual {p1, v0, v1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->setImageResource(II)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    goto :goto_38

    .line 60
    :cond_2f
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter$2;->val$viewHolder:Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    sget v0, Lcom/codemao/toolssdk/R$id;->ivPhotoCheaked:I

    sget v1, Lcom/codemao/toolssdk/R$drawable;->toolsdk_ic_uncheck:I

    invoke-virtual {p1, v0, v1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->setImageResource(II)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    :cond_38
    :goto_38
    return-void
.end method
