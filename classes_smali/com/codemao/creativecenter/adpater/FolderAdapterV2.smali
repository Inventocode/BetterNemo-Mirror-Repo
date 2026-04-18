.class public Lcom/codemao/creativecenter/adpater/FolderAdapterV2;
.super Landroid/widget/BaseAdapter;
.source "FolderAdapterV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/adpater/FolderAdapterV2$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/Folder;",
            ">;"
        }
    .end annotation
.end field

.field private mImageSize:I

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/adpater/FolderAdapterV2;->mFolders:Ljava/util/List;

    .line 36
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/FolderAdapterV2;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/FolderAdapterV2;->mInflater:Landroid/view/LayoutInflater;

    .line 38
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/FolderAdapterV2;->mContext:Landroid/content/Context;

    const/high16 v0, 0x42800000  # 64.0f

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/adpater/FolderAdapterV2;->mImageSize:I

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/adpater/FolderAdapterV2;)Landroid/content/Context;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/codemao/creativecenter/adpater/FolderAdapterV2;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getTotalImageSize()I
    .registers 4

    .line 103
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/FolderAdapterV2;->mFolders:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_25

    .line 104
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/FolderAdapterV2;->mFolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/Folder;

    .line 105
    iget-object v2, v2, Lcom/codemao/creativestore/bean/Folder;->images:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_11

    :cond_25
    return v1
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/FolderAdapterV2;->mFolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Lcom/codemao/creativestore/bean/Folder;
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 63
    :cond_4
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/FolderAdapterV2;->mFolders:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/Folder;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 27
    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/adpater/FolderAdapterV2;->getItem(I)Lcom/codemao/creativestore/bean/Folder;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    const/4 v0, 0x0

    if-nez p2, :cond_11

    .line 75
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/FolderAdapterV2;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/codemao/creativecenter/R$layout;->creative_mis_list_item_folderv2:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 76
    new-instance p3, Lcom/codemao/creativecenter/adpater/FolderAdapterV2$ViewHolder;

    invoke-direct {p3, p0, p2}, Lcom/codemao/creativecenter/adpater/FolderAdapterV2$ViewHolder;-><init>(Lcom/codemao/creativecenter/adpater/FolderAdapterV2;Landroid/view/View;)V

    goto :goto_17

    .line 78
    :cond_11
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/codemao/creativecenter/adpater/FolderAdapterV2$ViewHolder;

    :goto_17
    if-eqz p3, :cond_7c

    .line 81
    iget-object v1, p3, Lcom/codemao/creativecenter/adpater/FolderAdapterV2$ViewHolder;->cover:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/codemao/creativecenter/adpater/FolderAdapterV2;->mImageSize:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 82
    iget-object v1, p3, Lcom/codemao/creativecenter/adpater/FolderAdapterV2$ViewHolder;->cover:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/codemao/creativecenter/adpater/FolderAdapterV2;->mImageSize:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez p1, :cond_75

    .line 84
    iget-object p1, p3, Lcom/codemao/creativecenter/adpater/FolderAdapterV2$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/FolderAdapterV2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_all_pictures:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object p1, p3, Lcom/codemao/creativecenter/adpater/FolderAdapterV2$ViewHolder;->size:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/codemao/creativecenter/adpater/FolderAdapterV2;->getTotalImageSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/FolderAdapterV2;->mFolders:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7c

    .line 87
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/FolderAdapterV2;->mFolders:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/Folder;

    if-eqz p1, :cond_6d

    goto :goto_7c

    .line 90
    :cond_6d
    iget-object p1, p3, Lcom/codemao/creativecenter/adpater/FolderAdapterV2$ViewHolder;->cover:Landroid/widget/ImageView;

    sget p3, Lcom/codemao/creativecenter/R$drawable;->creative_mis_default_error:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7c

    .line 94
    :cond_75
    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/adpater/FolderAdapterV2;->getItem(I)Lcom/codemao/creativestore/bean/Folder;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/codemao/creativecenter/adpater/FolderAdapterV2$ViewHolder;->bindData(Lcom/codemao/creativestore/bean/Folder;)V

    :cond_7c
    :goto_7c
    return-object p2
.end method

.method public setData(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/Folder;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 47
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 48
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/FolderAdapterV2;->mFolders:Ljava/util/List;

    goto :goto_10

    .line 50
    :cond_b
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/FolderAdapterV2;->mFolders:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 52
    :goto_10
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
