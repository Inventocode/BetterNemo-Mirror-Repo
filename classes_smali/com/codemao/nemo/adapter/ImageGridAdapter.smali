.class public Lcom/codemao/nemo/adapter/ImageGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImageGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/adapter/ImageGridAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private isMulti:Z

.field private mContext:Landroid/content/Context;

.field final mGridWidth:I

.field private mImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSelectedImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/Image;",
            ">;"
        }
    .end annotation
.end field

.field private showCamera:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZI)V
    .registers 5

    .line 45
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter;->showCamera:Z

    .line 38
    iput-boolean v0, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter;->isMulti:Z

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter;->mImages:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter;->mSelectedImages:Ljava/util/List;

    .line 46
    iput-object p1, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 48
    iput-boolean p2, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter;->showCamera:Z

    const-string p2, "window"

    .line 49
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 51
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xd

    if-lt p2, v0, :cond_41

    .line 52
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 53
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 54
    iget p1, p2, Landroid/graphics/Point;->x:I

    goto :goto_49

    .line 56
    :cond_41
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result p1

    .line 58
    :goto_49
    div-int/2addr p1, p3

    iput p1, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter;->mGridWidth:I

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/ImageGridAdapter;)Ljava/util/List;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter;->mSelectedImages:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/adapter/ImageGridAdapter;)Landroid/content/Context;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getImageByPath(Ljava/lang/String;)Lcom/codemao/nemo/bean/Image;
    .registers 5

    .line 117
    iget-object v0, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter;->mImages:Ljava/util/List;

    if-eqz v0, :cond_25

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_25

    .line 118
    iget-object v0, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter;->mImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/Image;

    .line 119
    iget-object v2, v1, Lcom/codemao/nemo/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    return-object v1

    :cond_25
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 158
    iget-boolean v0, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter;->showCamera:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter;->mImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_d
    iget-object v0, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter;->mImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_13
    return v0
.end method

.method public getItem(I)Lcom/codemao/nemo/bean/Image;
    .registers 3

    .line 163
    iget-boolean v0, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter;->showCamera:Z

    if-eqz v0, :cond_13

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 167
    :cond_8
    iget-object v0, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter;->mImages:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/Image;

    return-object p1

    .line 169
    :cond_13
    iget-object v0, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter;->mImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/Image;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 29
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/adapter/ImageGridAdapter;->getItem(I)Lcom/codemao/nemo/bean/Image;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 4

    .line 150
    iget-boolean v0, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter;->showCamera:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    if-nez p1, :cond_8

    const/4 v1, 0x0

    :cond_8
    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    .line 181
    invoke-virtual {p0}, Lcom/codemao/nemo/adapter/ImageGridAdapter;->isShowCamera()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    if-nez p1, :cond_13

    .line 183
    iget-object p1, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p2, 0x7f0d0290

    invoke-virtual {p1, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_13
    if-nez p2, :cond_24

    .line 190
    iget-object p2, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0292

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 191
    new-instance p3, Lcom/codemao/nemo/adapter/ImageGridAdapter$ViewHolder;

    invoke-direct {p3, p0, p2}, Lcom/codemao/nemo/adapter/ImageGridAdapter$ViewHolder;-><init>(Lcom/codemao/nemo/adapter/ImageGridAdapter;Landroid/view/View;)V

    goto :goto_2a

    .line 193
    :cond_24
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/codemao/nemo/adapter/ImageGridAdapter$ViewHolder;

    :goto_2a
    if-eqz p3, :cond_33

    .line 197
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/adapter/ImageGridAdapter;->getItem(I)Lcom/codemao/nemo/bean/Image;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/codemao/nemo/adapter/ImageGridAdapter$ViewHolder;->bindData(Lcom/codemao/nemo/bean/Image;)V

    :cond_33
    return-object p2
.end method

.method public getViewTypeCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public isShowCamera()Z
    .registers 2

    .line 79
    iget-boolean v0, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter;->showCamera:Z

    return v0
.end method

.method public select(Lcom/codemao/nemo/bean/Image;)V
    .registers 3

    .line 88
    iget-object v0, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter;->mSelectedImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 89
    iget-object v0, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter;->mSelectedImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 91
    :cond_e
    iget-boolean v0, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter;->isMulti:Z

    if-nez v0, :cond_17

    .line 92
    iget-object v0, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter;->mSelectedImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 94
    :cond_17
    iget-object v0, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter;->mSelectedImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :goto_1c
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/Image;",
            ">;)V"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter;->mSelectedImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_10

    .line 135
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_10

    .line 136
    iput-object p1, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter;->mImages:Ljava/util/List;

    goto :goto_15

    .line 138
    :cond_10
    iget-object p1, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter;->mImages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 140
    :goto_15
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setDefaultSelected(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 105
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    invoke-direct {p0, v0}, Lcom/codemao/nemo/adapter/ImageGridAdapter;->getImageByPath(Ljava/lang/String;)Lcom/codemao/nemo/bean/Image;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 108
    iget-object v1, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter;->mSelectedImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 111
    :cond_1c
    iget-object p1, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter;->mSelectedImages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_27

    .line 112
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_27
    return-void
.end method

.method public setShowCamera(Z)V
    .registers 3

    .line 71
    iget-boolean v0, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter;->showCamera:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 74
    :cond_5
    iput-boolean p1, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter;->showCamera:Z

    .line 75
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public showSelectIndicator(Z)V
    .registers 2

    .line 67
    iput-boolean p1, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter;->isMulti:Z

    return-void
.end method
