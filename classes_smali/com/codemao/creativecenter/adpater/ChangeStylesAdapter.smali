.class public Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ChangeStylesAdapter.java"

# interfaces
.implements Lcom/codemao/creativecenter/callback/OnItemChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$BaseViewHolder;,
        Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$BottomHolder;,
        Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$ActorHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$BaseViewHolder;",
        ">;",
        "Lcom/codemao/creativecenter/callback/OnItemChangeListener;"
    }
.end annotation


# instance fields
.field private actorVO:Lcom/codemao/creativestore/bean/ActorVO;

.field private context:Landroid/content/Context;

.field private createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

.field private currentIndex:I

.field private dragRecyclerView:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private selectStyle:Ljava/lang/String;

.field private styles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;)V
    .registers 6

    .line 56
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const-string v0, "layout_inflater"

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 58
    iput-object p2, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->actorVO:Lcom/codemao/creativestore/bean/ActorVO;

    .line 59
    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->styles:Ljava/util/List;

    .line 60
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->context:Landroid/content/Context;

    .line 61
    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/ActorVO;->getCurrent_style_id()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->currentIndex:I

    .line 62
    iput-object p4, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->dragRecyclerView:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    .line 63
    iput-object p3, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Ljava/util/List;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->styles:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/bean/ActorVO;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->actorVO:Lcom/codemao/creativestore/bean/ActorVO;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)I
    .registers 1

    .line 43
    iget p0, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->currentIndex:I

    return p0
.end method

.method static synthetic access$302(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;I)I
    .registers 2

    .line 43
    iput p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->currentIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->dragRecyclerView:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Landroid/content/Context;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$602(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->selectStyle:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getCurrentIndex()I
    .registers 2

    .line 84
    iget v0, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->currentIndex:I

    return v0
.end method

.method public getItemCount()I
    .registers 2

    .line 302
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->styles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .registers 3

    .line 308
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->styles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3
    .param p2  # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 43
    check-cast p1, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->onBindViewHolder(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$BaseViewHolder;I)V
    .registers 9
    .param p2  # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 95
    instance-of v0, p1, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$ActorHolder;

    if-eqz v0, :cond_f2

    .line 97
    invoke-virtual {p1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$BaseViewHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;

    .line 99
    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->styles:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$BaseViewHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    .line 104
    invoke-virtual {v3, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getStyleUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->ivShow:Landroid/widget/ImageView;

    .line 105
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 108
    iget-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->tvPosition:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget v1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->currentIndex:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v1, :cond_51

    const/4 v1, 0x1

    goto :goto_52

    :cond_51
    const/4 v1, 0x0

    :goto_52
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->setIsSelect(Ljava/lang/Boolean;)V

    .line 112
    iget-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->viewBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget v4, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->currentIndex:I

    const/16 v5, 0x8

    if-ne p2, v4, :cond_63

    const/4 v4, 0x0

    goto :goto_65

    :cond_63
    const/16 v4, 0x8

    :goto_65
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 113
    iget-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->ivCopy:Landroid/widget/ImageView;

    iget v4, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->currentIndex:I

    if-ne p2, v4, :cond_70

    const/4 v4, 0x0

    goto :goto_72

    :cond_70
    const/16 v4, 0x8

    :goto_72
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->ivDel:Landroid/widget/ImageView;

    iget v4, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->currentIndex:I

    if-ne p2, v4, :cond_7d

    const/4 v4, 0x0

    goto :goto_7f

    :cond_7d
    const/16 v4, 0x8

    :goto_7f
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    iget-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->ivEdit:Landroid/widget/ImageView;

    iget v4, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->currentIndex:I

    if-ne p2, v4, :cond_8a

    const/4 v4, 0x0

    goto :goto_8c

    :cond_8a
    const/16 v4, 0x8

    :goto_8c
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->styles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v2, :cond_9c

    iget v1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->currentIndex:I

    if-ne p2, v1, :cond_9c

    goto :goto_9d

    :cond_9c
    const/4 v2, 0x0

    :goto_9d
    if-eqz v2, :cond_ac

    .line 120
    iget-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->ivEdit:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    iget-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->ivDel:Landroid/widget/ImageView;

    sget v3, Lcom/codemao/creativecenter/R$drawable;->creative_icon_style_edit:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b3

    .line 123
    :cond_ac
    iget-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->ivDel:Landroid/widget/ImageView;

    sget v3, Lcom/codemao/creativecenter/R$drawable;->creative_icon_style_del:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    :goto_b3
    iget-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 128
    iget-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->ivCopy:Landroid/widget/ImageView;

    new-instance v3, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$1;

    invoke-direct {v3, p0, p2}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$1;-><init>(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;I)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->ivDel:Landroid/widget/ImageView;

    new-instance v3, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$2;

    invoke-direct {v3, p0, v2, v0, p2}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$2;-><init>(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;ZLcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;I)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->ivEdit:Landroid/widget/ImageView;

    new-instance v2, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$3;

    invoke-direct {v2, p0, p2}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$3;-><init>(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v2, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$4;

    invoke-direct {v2, p0, p2}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$4;-><init>(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object p2, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$5;

    invoke-direct {v1, p0, p1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$5;-><init>(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$BaseViewHolder;)V

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 258
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    goto :goto_10e

    .line 260
    :cond_f2
    invoke-virtual {p1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$BaseViewHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleFooterBinding;

    .line 261
    iget-object v0, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleFooterBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 262
    iget-object p2, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleFooterBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$6;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$6;-><init>(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    :goto_10e
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$BaseViewHolder;
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_13

    .line 73
    new-instance p2, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$BottomHolder;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_item_adapter_change_style_footer:I

    invoke-static {v1, v2, p1, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleFooterBinding;

    invoke-direct {p2, p0, p1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$BottomHolder;-><init>(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleFooterBinding;)V

    return-object p2

    .line 71
    :cond_13
    new-instance p2, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$ActorHolder;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_item_adapter_change_style:I

    invoke-static {v1, v2, p1, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;

    invoke-direct {p2, p0, p1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$ActorHolder;-><init>(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;)V

    return-object p2
.end method

.method public onFinishDrag()V
    .registers 5

    .line 357
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->actorVO:Lcom/codemao/creativestore/bean/ActorVO;

    iget-boolean v0, v0, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 358
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    const-string/jumbo v2, "背景造型页面"

    const-string/jumbo v3, "背景-移动"

    invoke-virtual {v0, v2, v3, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_22

    .line 360
    :cond_15
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    const-string/jumbo v2, "角色造型页面"

    const-string/jumbo v3, "造型-移动"

    invoke-virtual {v0, v2, v3, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 362
    :goto_22
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemDrop(I)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public onItemMoved(II)V
    .registers 6

    .line 320
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->styles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_9

    return-void

    :cond_9
    if-ge p1, p2, :cond_17

    move v0, p1

    :goto_c
    if-ge v0, p2, :cond_24

    .line 324
    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->styles:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move v0, v2

    goto :goto_c

    :cond_17
    move v0, p1

    :goto_18
    if-le v0, p2, :cond_24

    .line 329
    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->styles:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 333
    :cond_24
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->styles:Ljava/util/List;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->selectStyle:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 334
    iget v1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->currentIndex:I

    if-eq v0, v1, :cond_3f

    .line 335
    iput v0, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->currentIndex:I

    .line 336
    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->actorVO:Lcom/codemao/creativestore/bean/ActorVO;

    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->styles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/codemao/creativestore/bean/ActorVO;->setCurrent_style_id(Ljava/lang/String;)V

    .line 345
    :cond_3f
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public setCurrentIndex(I)V
    .registers 4

    .line 88
    iput p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->currentIndex:I

    .line 89
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->actorVO:Lcom/codemao/creativestore/bean/ActorVO;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->styles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/ActorVO;->setCurrent_style_id(Ljava/lang/String;)V

    return-void
.end method
