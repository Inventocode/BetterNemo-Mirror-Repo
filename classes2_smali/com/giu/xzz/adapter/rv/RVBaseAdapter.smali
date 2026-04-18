.class public Lcom/giu/xzz/adapter/rv/RVBaseAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RVBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/giu/xzz/adapter/rv/RVBaseAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

.field private mItemClickListener:Lcom/giu/xzz/adapter/rv/RVBaseAdapter$OnItemClickListener;

.field private mItemViewDelegateManager:Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegateManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->mData:Ljava/util/List;

    .line 28
    new-instance p1, Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegateManager;

    invoke-direct {p1}, Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegateManager;-><init>()V

    iput-object p1, p0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->mItemViewDelegateManager:Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegateManager;

    return-void
.end method

.method static synthetic access$000(Lcom/giu/xzz/adapter/rv/RVBaseAdapter;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter$OnItemClickListener;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->mItemClickListener:Lcom/giu/xzz/adapter/rv/RVBaseAdapter$OnItemClickListener;

    return-object p0
.end method

.method private final convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;I)V
    .registers 5

    .line 67
    iget-object v0, p0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->mItemViewDelegateManager:Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegateManager;

    iget-object v1, p0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->mData:Ljava/util/List;

    invoke-virtual {v0, p1, v1, p2}, Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegateManager;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V

    return-void
.end method

.method private hasMultiItemViewDelegate()Z
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->mItemViewDelegateManager:Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegateManager;

    invoke-virtual {v0}, Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegateManager;->getItemViewDelegateCount()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method


# virtual methods
.method protected addClickListener(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;I)V
    .registers 4

    .line 71
    invoke-virtual {p0, p2}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->isEnabled(I)Z

    move-result p2

    if-nez p2, :cond_7

    return-void

    .line 74
    :cond_7
    invoke-virtual {p1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getRoot()Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter$1;-><init>(Lcom/giu/xzz/adapter/rv/RVBaseAdapter;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-virtual {p1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getRoot()Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter$2;-><init>(Lcom/giu/xzz/adapter/rv/RVBaseAdapter;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public addItemViewDelegate(ILcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;
    .registers 4

    .line 121
    iget-object v0, p0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->mItemViewDelegateManager:Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegateManager;

    invoke-virtual {v0, p1, p2}, Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegateManager;->addItemViewDelegate(ILcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)V

    return-object p0
.end method

.method public addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->mItemViewDelegateManager:Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegateManager;

    invoke-virtual {v0, p1}, Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegateManager;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)V

    return-object p0
.end method

.method public getData()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->mData:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    return v0
.end method

.method public getItemViewType(I)I
    .registers 4

    .line 33
    invoke-direct {p0}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->hasMultiItemViewDelegate()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 34
    iget-object v0, p0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->mItemViewDelegateManager:Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegateManager;

    iget-object v1, p0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->mData:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegateManager;->getItemViewType(Ljava/util/List;I)I

    move-result p1

    return p1

    .line 36
    :cond_f
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method protected isEnabled(I)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 18
    check-cast p1, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->onBindViewHolder(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;I)V
    .registers 3

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;
    .registers 5

    .line 41
    iget-object v0, p0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->mItemViewDelegateManager:Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegateManager;

    invoke-virtual {v0, p2}, Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegateManager;->getItemViewDelegate(I)Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;

    move-result-object v0

    .line 42
    invoke-interface {v0}, Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;->getItemViewLayoutId()I

    move-result v0

    .line 43
    iget-object v1, p0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->createRVBaseViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->mHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 44
    invoke-virtual {p1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->onViewHolderCreated(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Landroid/view/View;)V

    .line 45
    iget-object p1, p0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->mHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addClickListener(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;I)V

    .line 46
    iget-object p1, p0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->mHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    return-object p1
.end method

.method protected onViewHolderCreated(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Landroid/view/View;)V
    .registers 3

    return-void
.end method
