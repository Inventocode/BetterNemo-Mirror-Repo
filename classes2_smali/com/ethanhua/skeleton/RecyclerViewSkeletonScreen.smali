.class public Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen;
.super Ljava/lang/Object;
.source "RecyclerViewSkeletonScreen.java"

# interfaces
.implements Lcom/ethanhua/skeleton/SkeletonScreen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;
    }
.end annotation


# instance fields
.field private final mActualAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mRecyclerViewFrozen:Z

.field private final mSkeletonAdapter:Lcom/ethanhua/skeleton/SkeletonAdapter;


# direct methods
.method private constructor <init>(Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;)V
    .registers 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1}, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->access$000(Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    invoke-static {p1}, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->access$100(Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iput-object v0, p0, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen;->mActualAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 23
    new-instance v0, Lcom/ethanhua/skeleton/SkeletonAdapter;

    invoke-direct {v0}, Lcom/ethanhua/skeleton/SkeletonAdapter;-><init>()V

    iput-object v0, p0, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen;->mSkeletonAdapter:Lcom/ethanhua/skeleton/SkeletonAdapter;

    .line 24
    invoke-static {p1}, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->access$200(Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ethanhua/skeleton/SkeletonAdapter;->setItemCount(I)V

    .line 25
    invoke-static {p1}, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->access$300(Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ethanhua/skeleton/SkeletonAdapter;->setLayoutReference(I)V

    .line 26
    invoke-static {p1}, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->access$400(Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ethanhua/skeleton/SkeletonAdapter;->shimmer(Z)V

    .line 27
    invoke-static {p1}, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->access$500(Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ethanhua/skeleton/SkeletonAdapter;->setShimmerColor(I)V

    .line 28
    invoke-static {p1}, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->access$600(Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ethanhua/skeleton/SkeletonAdapter;->setShimmerAngle(I)V

    .line 29
    invoke-static {p1}, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->access$700(Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ethanhua/skeleton/SkeletonAdapter;->setShimmerDuration(I)V

    .line 30
    invoke-static {p1}, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->access$800(Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen;->mRecyclerViewFrozen:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$1;)V
    .registers 3

    .line 13
    invoke-direct {p0, p1}, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen;-><init>(Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;)V

    return-void
.end method


# virtual methods
.method public hide()V
    .registers 3

    .line 43
    iget-object v0, p0, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen;->mActualAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public show()V
    .registers 3

    .line 35
    iget-object v0, p0, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen;->mSkeletonAdapter:Lcom/ethanhua/skeleton/SkeletonAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 36
    iget-object v0, p0, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen;->mRecyclerViewFrozen:Z

    if-eqz v0, :cond_19

    .line 37
    iget-object v0, p0, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutFrozen(Z)V

    :cond_19
    return-void
.end method
