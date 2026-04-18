.class public Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;
.super Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;
.source "FolderListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter<",
        "Lcom/codemao/toolssdk/image_selector/bean/Folder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private folderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/image_selector/bean/Folder;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/codemao/toolssdk/image_selector/common/OnFolderChangeListener;

.field private selected:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/codemao/toolssdk/image_selector/config/ISListConfig;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/image_selector/bean/Folder;",
            ">;",
            "Lcom/codemao/toolssdk/image_selector/config/ISListConfig;",
            ")V"
        }
    .end annotation

    const/4 p3, 0x1

    new-array p3, p3, [I

    .line 31
    sget v0, Lcom/codemao/toolssdk/R$layout;->toolsdk_item_img_sel_folder:I

    const/4 v1, 0x0

    aput v0, p3, v1

    invoke-direct {p0, p1, p2, p3}, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[I)V

    .line 27
    iput v1, p0, Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;->selected:I

    .line 32
    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;->folderList:Ljava/util/List;

    return-void
.end method

.method private getTotalImageSize()I
    .registers 4

    .line 79
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;->folderList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_25

    .line 80
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;->folderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/toolssdk/image_selector/bean/Folder;

    .line 81
    iget-object v2, v2, Lcom/codemao/toolssdk/image_selector/bean/Folder;->images:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_11

    :cond_25
    return v1
.end method


# virtual methods
.method public convert(Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;ILcom/codemao/toolssdk/image_selector/bean/Folder;)V
    .registers 9

    const-string v0, "张"

    const-string v1, "共"

    if-nez p2, :cond_4d

    .line 40
    sget v2, Lcom/codemao/toolssdk/R$id;->tvFolderName:I

    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;->context:Landroid/content/Context;

    sget v4, Lcom/codemao/toolssdk/R$string;->toolsdk_album_all_picture:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->setText(ILjava/lang/String;)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;

    move-result-object v2

    sget v3, Lcom/codemao/toolssdk/R$id;->tvImageNum:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;->getTotalImageSize()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->setText(ILjava/lang/String;)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;

    .line 41
    sget v0, Lcom/codemao/toolssdk/R$id;->ivFolder:I

    invoke-virtual {p1, v0}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 42
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;->folderList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8f

    .line 43
    invoke-static {}, Lcom/codemao/toolssdk/image_selector/ISNav;->getInstance()Lcom/codemao/toolssdk/image_selector/ISNav;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;->context:Landroid/content/Context;

    iget-object p3, p3, Lcom/codemao/toolssdk/image_selector/bean/Folder;->cover:Lcom/codemao/toolssdk/image_selector/bean/Image;

    iget-object p3, p3, Lcom/codemao/toolssdk/image_selector/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {v1, v2, p3, v0}, Lcom/codemao/toolssdk/image_selector/ISNav;->displayImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_8f

    .line 46
    :cond_4d
    sget v2, Lcom/codemao/toolssdk/R$id;->tvFolderName:I

    iget-object v3, p3, Lcom/codemao/toolssdk/image_selector/bean/Folder;->name:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->setText(ILjava/lang/String;)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;

    move-result-object v2

    sget v3, Lcom/codemao/toolssdk/R$id;->tvImageNum:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lcom/codemao/toolssdk/image_selector/bean/Folder;->images:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->setText(ILjava/lang/String;)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;

    .line 47
    sget v0, Lcom/codemao/toolssdk/R$id;->ivFolder:I

    invoke-virtual {p1, v0}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 48
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;->folderList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8f

    .line 49
    invoke-static {}, Lcom/codemao/toolssdk/image_selector/ISNav;->getInstance()Lcom/codemao/toolssdk/image_selector/ISNav;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;->context:Landroid/content/Context;

    iget-object p3, p3, Lcom/codemao/toolssdk/image_selector/bean/Folder;->cover:Lcom/codemao/toolssdk/image_selector/bean/Image;

    iget-object p3, p3, Lcom/codemao/toolssdk/image_selector/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {v1, v2, p3, v0}, Lcom/codemao/toolssdk/image_selector/ISNav;->displayImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 53
    :cond_8f
    :goto_8f
    sget p3, Lcom/codemao/toolssdk/R$id;->viewLine:I

    invoke-virtual {p0}, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-eq p2, v0, :cond_9c

    const/4 v0, 0x1

    goto :goto_9d

    :cond_9c
    const/4 v0, 0x0

    :goto_9d
    invoke-virtual {p1, p3, v0}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->setVisible(IZ)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;

    .line 55
    iget p3, p0, Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;->selected:I

    if-ne p3, p2, :cond_aa

    .line 56
    sget p3, Lcom/codemao/toolssdk/R$id;->indicator:I

    invoke-virtual {p1, p3, v1}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->setVisible(IZ)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;

    goto :goto_af

    .line 58
    :cond_aa
    sget p3, Lcom/codemao/toolssdk/R$id;->indicator:I

    invoke-virtual {p1, p3, v2}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->setVisible(IZ)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;

    .line 61
    :goto_af
    invoke-virtual {p1}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->getConvertView()Landroid/view/View;

    move-result-object p1

    new-instance p3, Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter$1;

    invoke-direct {p3, p0, p2}, Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter$1;-><init>(Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;ILjava/lang/Object;)V
    .registers 4

    .line 21
    check-cast p3, Lcom/codemao/toolssdk/image_selector/bean/Folder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;->convert(Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;ILcom/codemao/toolssdk/image_selector/bean/Folder;)V

    return-void
.end method

.method public getSelectIndex()I
    .registers 2

    .line 95
    iget v0, p0, Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;->selected:I

    return v0
.end method

.method public setOnFloderChangeListener(Lcom/codemao/toolssdk/image_selector/common/OnFolderChangeListener;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;->listener:Lcom/codemao/toolssdk/image_selector/common/OnFolderChangeListener;

    return-void
.end method

.method public setSelectIndex(I)V
    .registers 4

    .line 88
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;->listener:Lcom/codemao/toolssdk/image_selector/common/OnFolderChangeListener;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;->folderList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/toolssdk/image_selector/bean/Folder;

    invoke-interface {v0, p1, v1}, Lcom/codemao/toolssdk/image_selector/common/OnFolderChangeListener;->onChange(ILcom/codemao/toolssdk/image_selector/bean/Folder;)V

    .line 89
    :cond_f
    iget v0, p0, Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;->selected:I

    if-ne v0, p1, :cond_14

    return-void

    .line 90
    :cond_14
    iput p1, p0, Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;->selected:I

    .line 91
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
