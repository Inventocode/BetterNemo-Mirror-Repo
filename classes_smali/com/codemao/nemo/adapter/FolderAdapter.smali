.class public Lcom/codemao/nemo/adapter/FolderAdapter;
.super Landroid/widget/BaseAdapter;
.source "FolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/adapter/FolderAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field lastSelected:I

.field private mContext:Landroid/content/Context;

.field private mFolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/Folder;",
            ">;"
        }
    .end annotation
.end field

.field mImageSize:I

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 37
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/adapter/FolderAdapter;->mFolders:Ljava/util/List;

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/codemao/nemo/adapter/FolderAdapter;->lastSelected:I

    .line 38
    iput-object p1, p0, Lcom/codemao/nemo/adapter/FolderAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 39
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/codemao/nemo/adapter/FolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 40
    iget-object p1, p0, Lcom/codemao/nemo/adapter/FolderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07016a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/adapter/FolderAdapter;->mImageSize:I

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/FolderAdapter;)Landroid/content/Context;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/codemao/nemo/adapter/FolderAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getTotalImageSize()I
    .registers 4

    .line 120
    iget-object v0, p0, Lcom/codemao/nemo/adapter/FolderAdapter;->mFolders:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_25

    .line 121
    iget-object v0, p0, Lcom/codemao/nemo/adapter/FolderAdapter;->mFolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/bean/Folder;

    .line 122
    iget-object v2, v2, Lcom/codemao/nemo/bean/Folder;->images:Ljava/util/List;

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

    .line 59
    iget-object v0, p0, Lcom/codemao/nemo/adapter/FolderAdapter;->mFolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Lcom/codemao/nemo/bean/Folder;
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 65
    :cond_4
    iget-object v0, p0, Lcom/codemao/nemo/adapter/FolderAdapter;->mFolders:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/Folder;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/adapter/FolderAdapter;->getItem(I)Lcom/codemao/nemo/bean/Folder;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectIndex()I
    .registers 2

    .line 136
    iget v0, p0, Lcom/codemao/nemo/adapter/FolderAdapter;->lastSelected:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    const/4 v0, 0x0

    if-nez p2, :cond_12

    .line 77
    iget-object p2, p0, Lcom/codemao/nemo/adapter/FolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0291

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 78
    new-instance p3, Lcom/codemao/nemo/adapter/FolderAdapter$ViewHolder;

    invoke-direct {p3, p0, p2}, Lcom/codemao/nemo/adapter/FolderAdapter$ViewHolder;-><init>(Lcom/codemao/nemo/adapter/FolderAdapter;Landroid/view/View;)V

    goto :goto_18

    .line 80
    :cond_12
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/codemao/nemo/adapter/FolderAdapter$ViewHolder;

    :goto_18
    if-eqz p3, :cond_7f

    if-nez p1, :cond_68

    .line 84
    iget-object v1, p3, Lcom/codemao/nemo/adapter/FolderAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const v2, 0x7f1201b9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 85
    iget-object v1, p3, Lcom/codemao/nemo/adapter/FolderAdapter$ViewHolder;->size:Landroid/widget/TextView;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/codemao/nemo/adapter/FolderAdapter;->getTotalImageSize()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/codemao/nemo/adapter/FolderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1201c0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%d%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v1, p0, Lcom/codemao/nemo/adapter/FolderAdapter;->mFolders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6f

    .line 87
    iget-object v1, p0, Lcom/codemao/nemo/adapter/FolderAdapter;->mFolders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/Folder;

    if-eqz v1, :cond_5f

    goto :goto_6f

    .line 103
    :cond_5f
    iget-object v1, p3, Lcom/codemao/nemo/adapter/FolderAdapter$ViewHolder;->cover:Landroid/widget/ImageView;

    const v2, 0x7f0805ab

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6f

    .line 107
    :cond_68
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/adapter/FolderAdapter;->getItem(I)Lcom/codemao/nemo/bean/Folder;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/codemao/nemo/adapter/FolderAdapter$ViewHolder;->bindData(Lcom/codemao/nemo/bean/Folder;)V

    .line 109
    :cond_6f
    :goto_6f
    iget v1, p0, Lcom/codemao/nemo/adapter/FolderAdapter;->lastSelected:I

    if-ne v1, p1, :cond_79

    .line 110
    iget-object p1, p3, Lcom/codemao/nemo/adapter/FolderAdapter$ViewHolder;->indicator:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7f

    .line 112
    :cond_79
    iget-object p1, p3, Lcom/codemao/nemo/adapter/FolderAdapter$ViewHolder;->indicator:Landroid/widget/ImageView;

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7f
    :goto_7f
    return-object p2
.end method

.method public setData(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/Folder;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 49
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 50
    iput-object p1, p0, Lcom/codemao/nemo/adapter/FolderAdapter;->mFolders:Ljava/util/List;

    goto :goto_10

    .line 52
    :cond_b
    iget-object p1, p0, Lcom/codemao/nemo/adapter/FolderAdapter;->mFolders:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 54
    :goto_10
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelectIndex(I)V
    .registers 3

    .line 129
    iget v0, p0, Lcom/codemao/nemo/adapter/FolderAdapter;->lastSelected:I

    if-ne v0, p1, :cond_5

    return-void

    .line 131
    :cond_5
    iput p1, p0, Lcom/codemao/nemo/adapter/FolderAdapter;->lastSelected:I

    .line 132
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
