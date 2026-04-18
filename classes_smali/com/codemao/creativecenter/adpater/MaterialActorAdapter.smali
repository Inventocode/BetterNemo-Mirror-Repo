.class public Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MaterialActorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;,
        Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$CollectHolder;,
        Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$RecordHolder;,
        Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$TopHolder;,
        Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BottomHolder;,
        Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$TextHolder;,
        Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BgHolder;,
        Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$SoundHolder;,
        Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder;,
        Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$ActorHolder;,
        Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private action:I

.field private canRecord:Z

.field private context:Landroid/content/Context;

.field private final dp1:I

.field private final dp6:I

.field private isPad:Z

.field private isShowCollectDeleteBtn:Z

.field private listener:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;

.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private musicPlayListener:Lcom/codemao/creativecenter/utils/Mp3PlayController;

.field onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

.field private selectDatas:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorBean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroidx/databinding/ObservableField;Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;ILandroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/databinding/ObservableField<",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorBean;",
            ">;>;",
            "Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;",
            "I",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 80
    new-instance p7, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$1;

    invoke-direct {p7, p0}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$1;-><init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)V

    iput-object p7, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    const/4 p7, 0x0

    .line 94
    iput-boolean p7, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->isShowCollectDeleteBtn:Z

    .line 96
    new-instance p7, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$2;

    invoke-direct {p7, p0}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$2;-><init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)V

    iput-object p7, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->musicPlayListener:Lcom/codemao/creativecenter/utils/Mp3PlayController;

    .line 127
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object p7

    iget-boolean p7, p7, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    iput-boolean p7, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->isPad:Z

    .line 130
    iput-object p2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->mDatas:Ljava/util/List;

    const-string p2, "layout_inflater"

    .line 131
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 132
    iput-object p3, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->selectDatas:Landroidx/databinding/ObservableField;

    .line 133
    iput-object p4, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->listener:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;

    .line 134
    iput p5, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->action:I

    .line 135
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->context:Landroid/content/Context;

    .line 136
    iput-object p6, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 p2, 0x40c00000  # 6.0f

    .line 139
    invoke-static {p1, p2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->dp6:I

    const/high16 p2, 0x40800000  # 4.0f

    .line 140
    invoke-static {p1, p2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    const/high16 p2, 0x3f800000  # 1.0f

    .line 141
    invoke-static {p1, p2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->dp1:I

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;Lcom/codemao/creativestore/bean/MaterialActorBean;)V
    .registers 2

    .line 62
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->chooseItem(Lcom/codemao/creativestore/bean/MaterialActorBean;)V

    return-void
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;Lcom/codemao/creativestore/bean/MaterialActorBean;)V
    .registers 2

    .line 62
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->unChooseItem(Lcom/codemao/creativestore/bean/MaterialActorBean;)V

    return-void
.end method

.method static synthetic access$200(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Ljava/util/List;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->mDatas:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Landroid/content/Context;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Z
    .registers 1

    .line 62
    iget-boolean p0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->isPad:Z

    return p0
.end method

.method static synthetic access$500(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Z
    .registers 1

    .line 62
    iget-boolean p0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->isShowCollectDeleteBtn:Z

    return p0
.end method

.method static synthetic access$502(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;Z)Z
    .registers 2

    .line 62
    iput-boolean p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->isShowCollectDeleteBtn:Z

    return p1
.end method

.method static synthetic access$600(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->listener:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Lcom/codemao/creativecenter/utils/Mp3PlayController;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->musicPlayListener:Lcom/codemao/creativecenter/utils/Mp3PlayController;

    return-object p0
.end method

.method static synthetic access$900(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)I
    .registers 1

    .line 62
    iget p0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->action:I

    return p0
.end method

.method private chooseItem(Lcom/codemao/creativestore/bean/MaterialActorBean;)V
    .registers 4

    .line 307
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 308
    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 309
    instance-of v1, v0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$ActorHolder;

    if-eqz v1, :cond_1b

    .line 310
    check-cast v0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$ActorHolder;

    .line 311
    iget-object v0, v0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->ivAnim:Lcom/codemao/creativecenter/customview/AnimImageView;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/AnimImageView;->startAnim()V

    .line 314
    :cond_1b
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->selectDatas:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_28

    .line 316
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_28
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->selectDatas:Landroidx/databinding/ObservableField;

    invoke-virtual {p1}, Landroidx/databinding/BaseObservable;->notifyChange()V

    return-void
.end method

.method private unChooseItem(Lcom/codemao/creativestore/bean/MaterialActorBean;)V
    .registers 5

    .line 291
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 292
    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 293
    instance-of v1, v0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$ActorHolder;

    if-eqz v1, :cond_32

    .line 294
    check-cast v0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$ActorHolder;

    .line 295
    iget-object v1, v0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->ivAnim:Lcom/codemao/creativecenter/customview/AnimImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/customview/AnimImageView;->showAnimImage(I)V

    .line 296
    iget-object v1, v0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->ivAnim:Lcom/codemao/creativecenter/customview/AnimImageView;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/customview/AnimImageView;->stopAnim()V

    .line 297
    iget-object v0, v0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 299
    :cond_32
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->selectDatas:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3f

    .line 301
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 303
    :cond_3f
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->selectDatas:Landroidx/databinding/ObservableField;

    invoke-virtual {p1}, Landroidx/databinding/BaseObservable;->notifyChange()V

    return-void
.end method


# virtual methods
.method public cancelCollectionManagerMode()V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 323
    :goto_2
    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 324
    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 325
    instance-of v3, v2, Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;

    if-eqz v3, :cond_20

    .line 326
    check-cast v2, Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;

    invoke-virtual {v2, v0}, Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;->setOpenManagerMode(Z)V

    .line 327
    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->listener:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;

    if-eqz v2, :cond_20

    .line 328
    invoke-interface {v2, v0}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;->clickCollectManager(Z)V

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_23
    return-void
.end method

.method public getItemCount()I
    .registers 2

    .line 242
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 3

    .line 247
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 248
    instance-of v0, p1, Lcom/codemao/creativestore/bean/MaterialActorBean;

    if-eqz v0, :cond_c

    const/4 p1, 0x1

    return p1

    .line 250
    :cond_c
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_17

    .line 251
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 252
    :cond_17
    instance-of v0, p1, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;

    if-eqz v0, :cond_1d

    const/4 p1, 0x4

    return p1

    .line 254
    :cond_1d
    instance-of v0, p1, Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;

    if-eqz v0, :cond_2d

    .line 255
    check-cast p1, Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;->isHeader()Z

    move-result p1

    if-eqz p1, :cond_2b

    const/4 p1, 0x2

    return p1

    :cond_2b
    const/4 p1, 0x3

    return p1

    .line 260
    :cond_2d
    instance-of p1, p1, Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;

    if-eqz p1, :cond_33

    const/4 p1, 0x5

    return p1

    :cond_33
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 62
    check-cast p1, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->onBindViewHolder(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;I)V
    .registers 6

    .line 187
    instance-of v0, p1, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$ActorHolder;

    if-eqz v0, :cond_13

    .line 188
    check-cast p1, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$ActorHolder;

    .line 189
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$ActorHolder;->bindData(Lcom/codemao/creativestore/bean/MaterialActorBean;)V

    goto/16 :goto_12a

    .line 190
    :cond_13
    instance-of v0, p1, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$TextHolder;

    if-eqz v0, :cond_73

    .line 191
    invoke-virtual {p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialTextBinding;

    .line 192
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 193
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_38

    .line 194
    iget v2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->dp1:I

    goto :goto_41

    :cond_38
    iget-boolean v2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->isPad:Z

    if-eqz v2, :cond_3f

    const/16 v2, 0x1c

    goto :goto_41

    :cond_3f
    iget v2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->dp6:I

    :goto_41
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v0, :cond_48

    .line 196
    iget v2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->dp1:I

    goto :goto_50

    :cond_48
    iget-boolean v2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->isPad:Z

    if-eqz v2, :cond_4e

    const/4 v2, 0x3

    goto :goto_50

    :cond_4e
    iget v2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->dp6:I

    :goto_50
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eqz v0, :cond_59

    .line 198
    iget v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->dp6:I

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_5c

    :cond_59
    const/4 v0, -0x2

    .line 200
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 202
    :goto_5c
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialTextBinding;->setName(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    goto/16 :goto_12a

    .line 210
    :cond_73
    instance-of v0, p1, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BgHolder;

    if-eqz v0, :cond_86

    .line 211
    check-cast p1, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BgHolder;

    .line 212
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BgHolder;->bindData(Lcom/codemao/creativestore/bean/MaterialActorBean;)V

    goto/16 :goto_12a

    .line 213
    :cond_86
    instance-of v0, p1, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$SoundHolder;

    if-eqz v0, :cond_99

    .line 214
    check-cast p1, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$SoundHolder;

    .line 215
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$SoundHolder;->bindData(Lcom/codemao/creativestore/bean/MaterialActorBean;)V

    goto/16 :goto_12a

    .line 216
    :cond_99
    instance-of v0, p1, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$RecordHolder;

    if-eqz v0, :cond_d7

    .line 217
    check-cast p1, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$RecordHolder;

    .line 218
    invoke-virtual {p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    sget v0, Lcom/codemao/creativecenter/BR;->listener:I

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->listener:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;

    invoke-virtual {p2, v0, v1}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 219
    invoke-virtual {p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBinding;

    .line 220
    iget-object p2, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBinding;->ivRecord:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->canRecord:Z

    if-eqz v0, :cond_b9

    sget v0, Lcom/codemao/creativecenter/R$drawable;->creative_icon_recoder_enable:I

    goto :goto_bb

    :cond_b9
    sget v0, Lcom/codemao/creativecenter/R$drawable;->creatice_icon_recoder_unable:I

    :goto_bb
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 221
    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBinding;->tvRecord:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-boolean v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->canRecord:Z

    if-eqz v0, :cond_cd

    sget v0, Lcom/codemao/creativecenter/R$color;->creative_FFF:I

    goto :goto_cf

    :cond_cd
    sget v0, Lcom/codemao/creativecenter/R$color;->creative_60FFF:I

    :goto_cf
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_12a

    .line 222
    :cond_d7
    instance-of v0, p1, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder;

    if-eqz v0, :cond_e9

    .line 223
    check-cast p1, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder;

    .line 224
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;

    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder;->bindData(Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;)V

    goto :goto_12a

    .line 225
    :cond_e9
    instance-of v0, p1, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$TopHolder;

    if-eqz v0, :cond_fb

    .line 226
    check-cast p1, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$TopHolder;

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;

    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$TopHolder;->bindData(Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;)V

    goto :goto_12a

    .line 227
    :cond_fb
    instance-of v0, p1, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BottomHolder;

    if-eqz v0, :cond_10d

    .line 228
    check-cast p1, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BottomHolder;

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;

    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BottomHolder;->bindData(Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;)V

    goto :goto_12a

    .line 229
    :cond_10d
    instance-of v0, p1, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$CollectHolder;

    if-eqz v0, :cond_11f

    .line 230
    check-cast p1, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$CollectHolder;

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;

    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$CollectHolder;->bindData(Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;)V

    goto :goto_12a

    .line 232
    :cond_11f
    invoke-virtual {p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    sget p2, Lcom/codemao/creativecenter/BR;->listener:I

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->listener:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;

    invoke-virtual {p1, p2, v0}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    :goto_12a
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;
    .registers 8

    const/4 v0, 0x0

    if-eqz p2, :cond_a4

    const/4 v1, 0x7

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p2, v4, :cond_69

    if-eq p2, v3, :cond_45

    if-eq p2, v2, :cond_35

    const/4 v1, 0x4

    if-eq p2, v1, :cond_25

    const/4 v1, 0x5

    if-eq p2, v1, :cond_15

    const/4 p1, 0x0

    return-object p1

    .line 180
    :cond_15
    new-instance p2, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$CollectHolder;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_layout_material_collect:I

    invoke-static {v1, v2, p1, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialCollectBinding;

    invoke-direct {p2, p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$CollectHolder;-><init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialCollectBinding;)V

    return-object p2

    .line 178
    :cond_25
    new-instance p2, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_item_adapter_material_loading:I

    invoke-static {v1, v2, p1, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    invoke-direct {p2, p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder;-><init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;)V

    return-object p2

    .line 176
    :cond_35
    new-instance p2, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BottomHolder;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_layout_material_bottom:I

    invoke-static {v1, v2, p1, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;

    invoke-direct {p2, p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BottomHolder;-><init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;)V

    return-object p2

    .line 171
    :cond_45
    iget p2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->action:I

    if-ne p2, v1, :cond_59

    .line 172
    new-instance p2, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$RecordHolder;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_layout_material_recorder:I

    invoke-static {v1, v2, p1, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBinding;

    invoke-direct {p2, p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$RecordHolder;-><init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBinding;)V

    return-object p2

    .line 174
    :cond_59
    new-instance p2, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$TopHolder;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_layout_material_top:I

    invoke-static {v1, v2, p1, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBinding;

    invoke-direct {p2, p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$TopHolder;-><init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBinding;)V

    return-object p2

    .line 155
    :cond_69
    iget p2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->action:I

    if-eq p2, v4, :cond_94

    if-eq p2, v3, :cond_94

    if-eq p2, v2, :cond_84

    if-eq p2, v1, :cond_74

    goto :goto_a4

    .line 163
    :cond_74
    new-instance p2, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$SoundHolder;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_layout_material_sound:I

    invoke-static {v1, v2, p1, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;

    invoke-direct {p2, p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$SoundHolder;-><init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;)V

    return-object p2

    .line 157
    :cond_84
    new-instance p2, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BgHolder;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_item_adapter_material_background:I

    invoke-static {v1, v2, p1, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    invoke-direct {p2, p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BgHolder;-><init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;)V

    return-object p2

    .line 160
    :cond_94
    new-instance p2, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$ActorHolder;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_item_adapter_material_actor:I

    invoke-static {v1, v2, p1, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    invoke-direct {p2, p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$ActorHolder;-><init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;)V

    return-object p2

    .line 167
    :cond_a4
    :goto_a4
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/codemao/creativecenter/R$layout;->creative_item_adapter_material_text:I

    invoke-static {p2, v1, p1, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialTextBinding;

    .line 168
    new-instance p2, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$TextHolder;

    invoke-direct {p2, p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$TextHolder;-><init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialTextBinding;)V

    return-object p2
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 5

    .line 268
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 269
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 270
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getRecycledView(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    :goto_f
    if-eqz v0, :cond_23

    .line 272
    instance-of v2, v0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;

    if-eqz v2, :cond_1a

    .line 273
    check-cast v0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->unbind()V

    .line 275
    :cond_1a
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getRecycledView(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_f

    :cond_23
    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2

    .line 62
    check-cast p1, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->onViewDetachedFromWindow(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;)V
    .registers 2

    .line 282
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 283
    invoke-virtual {p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->unbind()V

    return-void
.end method

.method public setCanRecordVoice(Z)V
    .registers 2

    .line 237
    iput-boolean p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->canRecord:Z

    return-void
.end method

.method public stopMusicWhenDestroy()V
    .registers 2

    .line 287
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->musicPlayListener:Lcom/codemao/creativecenter/utils/Mp3PlayController;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/Mp3PlayController;->destroy()V

    return-void
.end method
