.class public Lcom/ethanhua/skeleton/SkeletonAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SkeletonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mColor:I

.field private mItemCount:I

.field private mLayoutReference:I

.field private mShimmer:Z

.field private mShimmerAngle:I

.field private mShimmerDuration:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 46
    iget v0, p0, Lcom/ethanhua/skeleton/SkeletonAdapter;->mItemCount:I

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 35
    iget-boolean p2, p0, Lcom/ethanhua/skeleton/SkeletonAdapter;->mShimmer:Z

    if-eqz p2, :cond_1a

    .line 36
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lio/supercharge/shimmerlayout/ShimmerLayout;

    .line 37
    iget p2, p0, Lcom/ethanhua/skeleton/SkeletonAdapter;->mShimmerDuration:I

    invoke-virtual {p1, p2}, Lio/supercharge/shimmerlayout/ShimmerLayout;->setShimmerAnimationDuration(I)V

    .line 38
    iget p2, p0, Lcom/ethanhua/skeleton/SkeletonAdapter;->mShimmerAngle:I

    invoke-virtual {p1, p2}, Lio/supercharge/shimmerlayout/ShimmerLayout;->setShimmerAngle(I)V

    .line 39
    iget p2, p0, Lcom/ethanhua/skeleton/SkeletonAdapter;->mColor:I

    invoke-virtual {p1, p2}, Lio/supercharge/shimmerlayout/ShimmerLayout;->setShimmerColor(I)V

    .line 40
    invoke-virtual {p1}, Lio/supercharge/shimmerlayout/ShimmerLayout;->startShimmerAnimation()V

    :cond_1a
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 6

    .line 25
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 26
    iget-boolean v0, p0, Lcom/ethanhua/skeleton/SkeletonAdapter;->mShimmer:Z

    if-eqz v0, :cond_14

    .line 27
    new-instance v0, Lcom/ethanhua/skeleton/ShimmerViewHolder;

    iget v1, p0, Lcom/ethanhua/skeleton/SkeletonAdapter;->mLayoutReference:I

    invoke-direct {v0, p2, p1, v1}, Lcom/ethanhua/skeleton/ShimmerViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)V

    return-object v0

    .line 29
    :cond_14
    new-instance v0, Lcom/ethanhua/skeleton/SkeletonAdapter$1;

    iget v1, p0, Lcom/ethanhua/skeleton/SkeletonAdapter;->mLayoutReference:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/ethanhua/skeleton/SkeletonAdapter$1;-><init>(Lcom/ethanhua/skeleton/SkeletonAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method public setItemCount(I)V
    .registers 2

    .line 54
    iput p1, p0, Lcom/ethanhua/skeleton/SkeletonAdapter;->mItemCount:I

    return-void
.end method

.method public setLayoutReference(I)V
    .registers 2

    .line 50
    iput p1, p0, Lcom/ethanhua/skeleton/SkeletonAdapter;->mLayoutReference:I

    return-void
.end method

.method public setShimmerAngle(I)V
    .registers 2

    .line 70
    iput p1, p0, Lcom/ethanhua/skeleton/SkeletonAdapter;->mShimmerAngle:I

    return-void
.end method

.method public setShimmerColor(I)V
    .registers 2

    .line 58
    iput p1, p0, Lcom/ethanhua/skeleton/SkeletonAdapter;->mColor:I

    return-void
.end method

.method public setShimmerDuration(I)V
    .registers 2

    .line 66
    iput p1, p0, Lcom/ethanhua/skeleton/SkeletonAdapter;->mShimmerDuration:I

    return-void
.end method

.method public shimmer(Z)V
    .registers 2

    .line 62
    iput-boolean p1, p0, Lcom/ethanhua/skeleton/SkeletonAdapter;->mShimmer:Z

    return-void
.end method
