.class public Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MaterialDrawerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BaseViewHolder;,
        Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BgHolder;,
        Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$ActorHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private isBgAction:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

.field private recycleView:Landroidx/recyclerview/widget/RecyclerView;

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
.method public constructor <init>(Landroid/content/Context;Landroidx/databinding/ObservableField;ZLandroidx/recyclerview/widget/RecyclerView;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/databinding/ObservableField<",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorBean;",
            ">;>;Z",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 87
    new-instance v0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$1;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$1;-><init>(Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    const-string v0, "layout_inflater"

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 45
    iput-object p2, p0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;->selectDatas:Landroidx/databinding/ObservableField;

    .line 46
    iput-boolean p3, p0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;->isBgAction:Z

    .line 47
    iput-object p4, p0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;)Landroidx/databinding/ObservableField;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;->selectDatas:Landroidx/databinding/ObservableField;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;I)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;->chooseItem(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;I)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;->unChooseItem(I)V

    return-void
.end method

.method private chooseItem(I)V
    .registers 3

    .line 115
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 116
    instance-of v0, p1, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$ActorHolder;

    if-eqz v0, :cond_15

    .line 117
    check-cast p1, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$ActorHolder;

    .line 118
    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->ivAnim:Lcom/codemao/creativecenter/customview/AnimImageView;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/AnimImageView;->startAnim()V

    :cond_15
    return-void
.end method

.method private unChooseItem(I)V
    .registers 4

    .line 105
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 107
    instance-of v0, p1, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$ActorHolder;

    if-eqz v0, :cond_1f

    .line 108
    check-cast p1, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$ActorHolder;

    .line 109
    iget-object v0, p1, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->ivAnim:Lcom/codemao/creativecenter/customview/AnimImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/AnimImageView;->showAnimImage(I)V

    .line 110
    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->ivAnim:Lcom/codemao/creativecenter/customview/AnimImageView;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/AnimImageView;->stopAnim()V

    :cond_1f
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;->selectDatas:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 36
    check-cast p1, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;->onBindViewHolder(Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BaseViewHolder;I)V
    .registers 6

    .line 67
    instance-of v0, p1, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$ActorHolder;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_31

    .line 68
    check-cast p1, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$ActorHolder;

    .line 69
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;->selectDatas:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$ActorHolder;->bindData(Lcom/codemao/creativestore/bean/MaterialActorBean;)V

    .line 70
    invoke-virtual {p1}, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BaseViewHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->ivChoose:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    invoke-virtual {p1}, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BaseViewHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->ivCollectChoose:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5e

    .line 72
    :cond_31
    instance-of v0, p1, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BgHolder;

    if-eqz v0, :cond_5e

    .line 73
    check-cast p1, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BgHolder;

    .line 74
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;->selectDatas:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BgHolder;->bindData(Lcom/codemao/creativestore/bean/MaterialActorBean;)V

    .line 75
    invoke-virtual {p1}, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BaseViewHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->ivChoose:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    invoke-virtual {p1}, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BaseViewHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->ivCollectChoose:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5e
    :goto_5e
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BaseViewHolder;
    .registers 6

    .line 53
    iget-boolean p2, p0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;->isBgAction:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_15

    .line 54
    new-instance p2, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BgHolder;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_item_adapter_material_background:I

    invoke-static {v1, v2, p1, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    invoke-direct {p2, p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BgHolder;-><init>(Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;)V

    return-object p2

    .line 56
    :cond_15
    new-instance p2, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$ActorHolder;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_item_adapter_material_actor:I

    invoke-static {v1, v2, p1, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    invoke-direct {p2, p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$ActorHolder;-><init>(Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;)V

    return-object p2
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2

    .line 36
    check-cast p1, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;->onViewDetachedFromWindow(Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BaseViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BaseViewHolder;)V
    .registers 2

    .line 61
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
