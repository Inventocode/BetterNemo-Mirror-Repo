.class public Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;
.super Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;
.source "ImageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter<",
        "Lcom/codemao/toolssdk/image_selector/bean/Image;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private listener:Lcom/codemao/toolssdk/image_selector/common/OnItemClickListener;

.field private mutiSelect:Z

.field private showCamera:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/image_selector/bean/Image;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 30
    sget v1, Lcom/codemao/toolssdk/R$layout;->toolsdk_item_img_sel:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/codemao/toolssdk/R$layout;->toolsdk_item_img_sel_take_photo:I

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-direct {p0, p1, p2, v0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[I)V

    .line 31
    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;)Lcom/codemao/toolssdk/image_selector/common/OnItemClickListener;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;->listener:Lcom/codemao/toolssdk/image_selector/common/OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getItemViewType(I)I
    .registers 2

    if-nez p1, :cond_8

    .line 101
    iget-boolean p1, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;->showCamera:Z

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method protected onBindData(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;ILcom/codemao/toolssdk/image_selector/bean/Image;)V
    .registers 7

    if-nez p2, :cond_1c

    .line 37
    iget-boolean v0, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;->showCamera:Z

    if-eqz v0, :cond_1c

    .line 38
    sget v0, Lcom/codemao/toolssdk/R$id;->ivTakePhoto:I

    invoke-virtual {p1, v0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 39
    sget v0, Lcom/codemao/toolssdk/R$drawable;->toolsdk_ic_take_photo:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    new-instance v0, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter$1;-><init>(Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;ILcom/codemao/toolssdk/image_selector/bean/Image;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 50
    :cond_1c
    iget-boolean v0, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;->mutiSelect:Z

    if-eqz v0, :cond_2e

    .line 51
    sget v0, Lcom/codemao/toolssdk/R$id;->ivPhotoCheaked:I

    invoke-virtual {p1, v0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter$2;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter$2;-><init>(Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;ILcom/codemao/toolssdk/image_selector/bean/Image;Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    :cond_2e
    new-instance v0, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter$3;

    invoke-direct {v0, p0, p2, p3}, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter$3;-><init>(Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;ILcom/codemao/toolssdk/image_selector/bean/Image;)V

    invoke-virtual {p1, v0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->setOnItemViewClickListener(Landroid/view/View$OnClickListener;)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    .line 76
    sget p2, Lcom/codemao/toolssdk/R$id;->ivImage:I

    invoke-virtual {p1, p2}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 77
    invoke-static {}, Lcom/codemao/toolssdk/image_selector/ISNav;->getInstance()Lcom/codemao/toolssdk/image_selector/ISNav;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;->context:Landroid/content/Context;

    iget-object v2, p3, Lcom/codemao/toolssdk/image_selector/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p2}, Lcom/codemao/toolssdk/image_selector/ISNav;->displayImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 79
    iget-boolean p2, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;->mutiSelect:Z

    if-eqz p2, :cond_69

    .line 80
    sget p2, Lcom/codemao/toolssdk/R$id;->ivPhotoCheaked:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->setVisible(IZ)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    .line 81
    sget-object v0, Lcom/codemao/toolssdk/image_selector/common/Constant;->imageList:Ljava/util/ArrayList;

    iget-object p3, p3, Lcom/codemao/toolssdk/image_selector/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_63

    .line 82
    sget p3, Lcom/codemao/toolssdk/R$drawable;->toolsdk_ic_checked:I

    invoke-virtual {p1, p2, p3}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->setImageResource(II)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    goto :goto_6f

    .line 84
    :cond_63
    sget p3, Lcom/codemao/toolssdk/R$drawable;->toolsdk_ic_uncheck:I

    invoke-virtual {p1, p2, p3}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->setImageResource(II)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    goto :goto_6f

    .line 87
    :cond_69
    sget p2, Lcom/codemao/toolssdk/R$id;->ivPhotoCheaked:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->setVisible(IZ)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    :goto_6f
    return-void
.end method

.method protected bridge synthetic onBindData(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;ILjava/lang/Object;)V
    .registers 4

    .line 22
    check-cast p3, Lcom/codemao/toolssdk/image_selector/bean/Image;

    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;->onBindData(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;ILcom/codemao/toolssdk/image_selector/bean/Image;)V

    return-void
.end method

.method public setMutiSelect(Z)V
    .registers 2

    .line 96
    iput-boolean p1, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;->mutiSelect:Z

    return-void
.end method

.method public setOnItemClickListener(Lcom/codemao/toolssdk/image_selector/common/OnItemClickListener;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;->listener:Lcom/codemao/toolssdk/image_selector/common/OnItemClickListener;

    return-void
.end method

.method public setShowCamera(Z)V
    .registers 2

    .line 92
    iput-boolean p1, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImageListAdapter;->showCamera:Z

    return-void
.end method
