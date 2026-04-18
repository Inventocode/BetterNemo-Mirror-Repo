.class public abstract Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "EasyRVAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private footerViewId:I

.field private headerViewId:I

.field protected layoutIds:[I

.field protected mContext:Landroid/content/Context;

.field private mConvertViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFooterView:Landroid/view/View;

.field private mHeaderView:Landroid/view/View;

.field protected mLInflater:Landroid/view/LayoutInflater;

.field protected mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;Ljava/util/List;[I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;[I)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->headerViewId:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->footerViewId:I

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mConvertViews:Landroid/util/SparseArray;

    .line 37
    iput-object p1, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mList:Ljava/util/List;

    .line 39
    iput-object p3, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->layoutIds:[I

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mLInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private getPosition(I)I
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mHeaderView:Landroid/view/View;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mFooterView:Landroid/view/View;

    if-eqz v0, :cond_a

    :cond_8
    add-int/lit8 p1, p1, -0x1

    :cond_a
    return p1
.end method


# virtual methods
.method public getItemCount()I
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mHeaderView:Landroid/view/View;

    if-nez v0, :cond_13

    iget-object v1, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mFooterView:Landroid/view/View;

    if-nez v1, :cond_13

    .line 82
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_12

    :cond_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_12
    return v0

    :cond_13
    if-eqz v0, :cond_25

    .line 83
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mFooterView:Landroid/view/View;

    if-eqz v0, :cond_25

    .line 84
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mList:Ljava/util/List;

    const/4 v1, 0x2

    if-nez v0, :cond_1f

    goto :goto_24

    :cond_1f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v1, v0

    :goto_24
    return v1

    .line 86
    :cond_25
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mList:Ljava/util/List;

    const/4 v1, 0x1

    if-nez v0, :cond_2b

    goto :goto_30

    :cond_2b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v1, v0

    :goto_30
    return v1
.end method

.method public getItemViewType(I)I
    .registers 3

    if-nez p1, :cond_8

    .line 92
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_8

    const/4 p1, -0x1

    return p1

    .line 95
    :cond_8
    invoke-virtual {p0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_16

    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mFooterView:Landroid/view/View;

    if-eqz v0, :cond_16

    const/4 p1, -0x2

    return p1

    .line 98
    :cond_16
    invoke-direct {p0, p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->getPosition(I)I

    move-result p1

    .line 99
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->getLayoutIndex(ILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getLayoutIndex(ILjava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)I"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    .line 108
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 109
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 110
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_15

    .line 111
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 112
    new-instance v0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter$1;-><init>(Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;Landroidx/recyclerview/widget/GridLayoutManager;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_15
    return-void
.end method

.method protected abstract onBindData(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;",
            "ITT;)V"
        }
    .end annotation
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 20
    check-cast p1, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    invoke-virtual {p0, p1, p2}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->onBindViewHolder(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;I)V
    .registers 5

    .line 72
    invoke-virtual {p0, p2}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    return-void

    .line 73
    :cond_8
    invoke-virtual {p0, p2}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_10

    return-void

    .line 74
    :cond_10
    invoke-direct {p0, p2}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->getPosition(I)I

    move-result p2

    .line 75
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 76
    invoke-virtual {p0, p1, p2, v0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->onBindData(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;
    .registers 5

    .line 45
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_13

    const/4 v1, -0x1

    if-ne p2, v1, :cond_13

    .line 46
    new-instance p1, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    iget-object p2, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->headerViewId:I

    iget-object v1, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mHeaderView:Landroid/view/View;

    invoke-direct {p1, p2, v0, v1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;-><init>(Landroid/content/Context;ILandroid/view/View;)V

    return-object p1

    :cond_13
    if-eqz v0, :cond_24

    const/4 v0, -0x2

    if-ne p2, v0, :cond_24

    .line 49
    new-instance p1, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    iget-object p2, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->footerViewId:I

    iget-object v1, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mFooterView:Landroid/view/View;

    invoke-direct {p1, p2, v0, v1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;-><init>(Landroid/content/Context;ILandroid/view/View;)V

    return-object p1

    :cond_24
    if-ltz p2, :cond_61

    .line 51
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->layoutIds:[I

    array-length v1, v0

    if-gt p2, v1, :cond_61

    .line 54
    array-length v1, v0

    if-eqz v1, :cond_59

    .line 57
    aget p2, v0, p2

    .line 58
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mConvertViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_41

    .line 60
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mLInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 62
    :cond_41
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    if-eqz p1, :cond_51

    .line 63
    invoke-virtual {p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getLayoutId()I

    move-result v1

    if-eq v1, p2, :cond_50

    goto :goto_51

    :cond_50
    return-object p1

    .line 64
    :cond_51
    :goto_51
    new-instance p1, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    iget-object v1, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1, p2, v0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;-><init>(Landroid/content/Context;ILandroid/view/View;)V

    return-object p1

    .line 55
    :cond_59
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "not layoutId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_61
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "layoutIndex"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2

    .line 20
    check-cast p1, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->onViewAttachedToWindow(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;)V
    .registers 4

    .line 127
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 128
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 129
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v1, :cond_1d

    .line 130
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 131
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p1

    if-nez p1, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    :cond_1d
    return-void
.end method

.method public setHeaderView(I)Landroid/view/View;
    .registers 4

    .line 158
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mLInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mHeaderView:Landroid/view/View;

    .line 159
    iput p1, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->headerViewId:I

    const/4 p1, 0x0

    .line 160
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 161
    iget-object p1, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mHeaderView:Landroid/view/View;

    return-object p1
.end method
