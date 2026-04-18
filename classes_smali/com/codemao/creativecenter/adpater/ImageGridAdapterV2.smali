.class public Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;
.super Landroid/widget/BaseAdapter;
.source "ImageGridAdapterV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;,
        Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$OnItemChooseListener;
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
            "Lcom/codemao/creativestore/bean/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSelectedImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/Image;",
            ">;"
        }
    .end annotation
.end field

.field private maxCount:I

.field private onItemChooseListener:Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$OnItemChooseListener;

.field private resultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private showCamera:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ZILcom/codemao/creativecenter/adpater/ImageGridAdapterV2$OnItemChooseListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZI",
            "Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$OnItemChooseListener;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->showCamera:Z

    .line 39
    iput-boolean v0, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->isMulti:Z

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->mImages:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->mSelectedImages:Ljava/util/List;

    const v0, 0x1869f

    .line 44
    iput v0, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->maxCount:I

    .line 47
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->mInflater:Landroid/view/LayoutInflater;

    .line 49
    iput-boolean p3, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->showCamera:Z

    const-string p3, "window"

    .line 50
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 51
    iput-object p2, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->resultList:Ljava/util/List;

    .line 53
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 54
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 55
    iget p1, p2, Landroid/graphics/Point;->x:I

    .line 56
    div-int/2addr p1, p4

    iput p1, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->mGridWidth:I

    .line 57
    iput-object p5, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->onItemChooseListener:Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$OnItemChooseListener;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;)Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$OnItemChooseListener;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->onItemChooseListener:Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$OnItemChooseListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;)Z
    .registers 1

    .line 31
    iget-boolean p0, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->isMulti:Z

    return p0
.end method

.method static synthetic access$200(Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;)Ljava/util/List;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->resultList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;Landroid/view/View;)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->showIndicator(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;)I
    .registers 1

    .line 31
    iget p0, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->maxCount:I

    return p0
.end method

.method static synthetic access$500(Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;)Landroid/content/Context;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getImageByPath(Ljava/lang/String;)Lcom/codemao/creativestore/bean/Image;
    .registers 5

    .line 146
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->mImages:Ljava/util/List;

    if-eqz v0, :cond_27

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_27

    .line 147
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->mImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/Image;

    if-eqz v1, :cond_10

    .line 148
    iget-object v2, v1, Lcom/codemao/creativestore/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    return-object v1

    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSelcetImageByPath(Ljava/lang/String;)Lcom/codemao/creativestore/bean/Image;
    .registers 5

    .line 135
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->mSelectedImages:Ljava/util/List;

    if-eqz v0, :cond_25

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_25

    .line 136
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->mSelectedImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/Image;

    .line 137
    iget-object v2, v1, Lcom/codemao/creativestore/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    return-object v1

    :cond_25
    const/4 p1, 0x0

    return-object p1
.end method

.method private showIndicator(Landroid/view/View;)V
    .registers 4

    const/4 v0, 0x0

    .line 237
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const v0, 0x3f4ccccd  # 0.8f

    .line 238
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 239
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 240
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const/high16 v0, 0x3f800000  # 1.0f

    .line 241
    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 191
    iget-boolean v0, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->showCamera:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->mImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_d
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->mImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_13
    return v0
.end method

.method public getItem(I)Lcom/codemao/creativestore/bean/Image;
    .registers 3

    .line 196
    iget-boolean v0, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->showCamera:Z

    if-eqz v0, :cond_13

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 200
    :cond_8
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->mImages:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/Image;

    return-object p1

    .line 202
    :cond_13
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->mImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/Image;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->getItem(I)Lcom/codemao/creativestore/bean/Image;

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

    .line 183
    iget-boolean v0, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->showCamera:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    if-nez p1, :cond_8

    const/4 v1, 0x0

    :cond_8
    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    .line 214
    invoke-virtual {p0}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->isShowCamera()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    if-nez p1, :cond_12

    .line 216
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->mInflater:Landroid/view/LayoutInflater;

    sget p2, Lcom/codemao/creativecenter/R$layout;->creative_mis_list_item_camerav2:I

    invoke-virtual {p1, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_12
    if-nez p2, :cond_22

    .line 223
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_mis_list_item_image_v2:I

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 224
    new-instance p3, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;

    invoke-direct {p3, p0, p2}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;-><init>(Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;Landroid/view/View;)V

    goto :goto_28

    .line 226
    :cond_22
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;

    :goto_28
    if-eqz p3, :cond_31

    .line 230
    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->getItem(I)Lcom/codemao/creativestore/bean/Image;

    move-result-object v0

    invoke-virtual {p3, v0, p1}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;->bindData(Lcom/codemao/creativestore/bean/Image;I)V

    :cond_31
    return-object p2
.end method

.method public getViewTypeCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public isShowCamera()Z
    .registers 2

    .line 70
    iget-boolean v0, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->showCamera:Z

    return v0
.end method

.method public reseetMSelectImage(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 119
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 120
    :goto_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 121
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->getSelcetImageByPath(Ljava/lang/String;)Lcom/codemao/creativestore/bean/Image;

    move-result-object v2

    if-nez v2, :cond_25

    .line 123
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->getImageByPath(Ljava/lang/String;)Lcom/codemao/creativestore/bean/Image;

    move-result-object v2

    :cond_25
    if-eqz v2, :cond_2a

    .line 126
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 129
    :cond_2d
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->mSelectedImages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 130
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->mSelectedImages:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 131
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public select(Lcom/codemao/creativestore/bean/Image;)V
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->mSelectedImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 88
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->mSelectedImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 90
    :cond_e
    iget-boolean v0, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->isMulti:Z

    if-nez v0, :cond_17

    .line 91
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->mSelectedImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    :cond_17
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->mSelectedImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
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
            "Lcom/codemao/creativestore/bean/Image;",
            ">;)V"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->mSelectedImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_10

    .line 168
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_10

    .line 169
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->mImages:Ljava/util/List;

    goto :goto_15

    .line 171
    :cond_10
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->mImages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 173
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

    .line 104
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

    .line 105
    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->getImageByPath(Ljava/lang/String;)Lcom/codemao/creativestore/bean/Image;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 107
    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->mSelectedImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 110
    :cond_1c
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->mSelectedImages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_27

    .line 111
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_27
    return-void
.end method

.method public setMaxCount(I)V
    .registers 2

    .line 157
    iput p1, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->maxCount:I

    return-void
.end method

.method public setShowCamera(Z)V
    .registers 3

    .line 74
    iget-boolean v0, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->showCamera:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 77
    :cond_5
    iput-boolean p1, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->showCamera:Z

    .line 78
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public showSelectIndicator(Z)V
    .registers 2

    .line 66
    iput-boolean p1, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->isMulti:Z

    return-void
.end method
