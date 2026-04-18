.class public Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RVBaseViewHolder.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private root:Landroid/view/View;

.field private views:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 4

    .line 42
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 43
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->views:Landroidx/collection/SparseArrayCompat;

    .line 44
    iput-object p1, p0, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->root:Landroid/view/View;

    return-void
.end method

.method public static createRVBaseViewHolder(Landroid/content/Context;Landroid/view/View;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;
    .registers 3

    .line 55
    new-instance v0, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v0
.end method

.method public static createRVBaseViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;
    .registers 5

    .line 49
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 50
    new-instance p2, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object p2
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getImageView(I)Landroid/widget/ImageView;
    .registers 2

    .line 85
    invoke-virtual {p0, p1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    return-object p1
.end method

.method public getProgressBar(I)Landroid/widget/ProgressBar;
    .registers 2

    .line 93
    invoke-virtual {p0, p1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    return-object p1
.end method

.method public getRoot()Landroid/view/View;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->root:Landroid/view/View;

    return-object v0
.end method

.method public getTextView(I)Landroid/widget/TextView;
    .registers 2

    .line 77
    invoke-virtual {p0, p1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    return-object p1
.end method

.method public getView(I)Landroid/view/View;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->views:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_15

    .line 62
    iget-object v0, p0, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->root:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->views:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, p1, v0}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    :cond_15
    return-object v0
.end method

.method public getVisible(I)Z
    .registers 2

    .line 151
    invoke-virtual {p0, p1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public setImageResource(II)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;
    .registers 3

    .line 111
    invoke-virtual {p0, p1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p0
.end method

.method public varargs setOnClickListener(Landroid/view/View$OnClickListener;[I)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;
    .registers 6

    .line 260
    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_10

    aget v2, p2, v1

    .line 261
    invoke-virtual {p0, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    return-object p0
.end method

.method public setProgress(II)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;
    .registers 3

    .line 156
    invoke-virtual {p0, p1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getProgressBar(I)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-object p0
.end method

.method public setText(ILjava/lang/String;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;
    .registers 3

    .line 101
    invoke-virtual {p0, p1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;
    .registers 3

    .line 146
    invoke-virtual {p0, p1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_8

    const/4 p2, 0x0

    goto :goto_a

    :cond_8
    const/16 p2, 0x8

    :goto_a
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method
