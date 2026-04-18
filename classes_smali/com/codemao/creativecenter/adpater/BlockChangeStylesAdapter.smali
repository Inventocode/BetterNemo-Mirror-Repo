.class public Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BlockChangeStylesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter$BaseViewHolder;,
        Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter$ActorHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter$BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

.field private currentIndex:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

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
.method public constructor <init>(Landroid/content/Context;Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/presenter/CreateUtils;I)V
    .registers 6

    .line 37
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const-string v0, "layout_inflater"

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 39
    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter;->styles:Ljava/util/List;

    .line 40
    iput p4, p0, Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter;->currentIndex:I

    .line 41
    iput-object p3, p0, Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    return-void
.end method

.method static synthetic access$002(Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter;I)I
    .registers 2

    .line 28
    iput p1, p0, Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter;->currentIndex:I

    return p1
.end method


# virtual methods
.method public getCurrentIndex()I
    .registers 2

    .line 58
    iget v0, p0, Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter;->currentIndex:I

    return v0
.end method

.method public getItemCount()I
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter;->styles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 28
    check-cast p1, Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter$BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter;->onBindViewHolder(Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter$BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter$BaseViewHolder;I)V
    .registers 6

    .line 64
    invoke-virtual {p1}, Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter$BaseViewHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;

    .line 66
    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter;->styles:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter$BaseViewHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    .line 69
    invoke-virtual {v2, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getStyleUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->ivShow:Landroid/widget/ImageView;

    .line 70
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 72
    iget-object p1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->tvPosition:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget p1, p0, Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter;->currentIndex:I

    if-ne p2, p1, :cond_4b

    const/4 p1, 0x1

    goto :goto_4c

    :cond_4b
    const/4 p1, 0x0

    :goto_4c
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->setIsSelect(Ljava/lang/Boolean;)V

    .line 75
    iget-object p1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->ivCopy:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    iget-object p1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->ivDel:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    iget-object p1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->ivEdit:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    iget-object p1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->viewBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 79
    iget-object p1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 82
    iget-object p1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance p2, Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter$1;

    invoke-direct {p2, p0}, Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter$1;-><init>(Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter$BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter$BaseViewHolder;
    .registers 6

    .line 48
    new-instance p2, Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter$ActorHolder;

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/codemao/creativecenter/R$layout;->creative_item_adapter_change_style:I

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;

    invoke-direct {p2, p0, p1}, Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter$ActorHolder;-><init>(Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter;Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;)V

    return-object p2
.end method
