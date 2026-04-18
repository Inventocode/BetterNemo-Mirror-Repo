.class public Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;
.super Ljava/lang/Object;
.source "RecyclerViewSkeletonScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mActualAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private mFrozen:Z

.field private mItemCount:I

.field private mItemResID:I

.field private final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mShimmer:Z

.field private mShimmerAngle:I

.field private mShimmerColor:I

.field private mShimmerDuration:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 4

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->mShimmer:Z

    const/16 v1, 0xa

    .line 50
    iput v1, p0, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->mItemCount:I

    .line 51
    sget v1, Lcom/ethanhua/skeleton/R$layout;->layout_default_item_skeleton:I

    iput v1, p0, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->mItemResID:I

    const/16 v1, 0x3e8

    .line 53
    iput v1, p0, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->mShimmerDuration:I

    const/16 v1, 0x14

    .line 54
    iput v1, p0, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->mShimmerAngle:I

    .line 55
    iput-boolean v0, p0, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->mFrozen:Z

    .line 58
    iput-object p1, p0, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 59
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/ethanhua/skeleton/R$color;->shimmer_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->mShimmerColor:I

    return-void
.end method

.method static synthetic access$000(Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->mActualAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;)I
    .registers 1

    .line 46
    iget p0, p0, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->mItemCount:I

    return p0
.end method

.method static synthetic access$300(Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;)I
    .registers 1

    .line 46
    iget p0, p0, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->mItemResID:I

    return p0
.end method

.method static synthetic access$400(Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;)Z
    .registers 1

    .line 46
    iget-boolean p0, p0, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->mShimmer:Z

    return p0
.end method

.method static synthetic access$500(Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;)I
    .registers 1

    .line 46
    iget p0, p0, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->mShimmerColor:I

    return p0
.end method

.method static synthetic access$600(Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;)I
    .registers 1

    .line 46
    iget p0, p0, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->mShimmerAngle:I

    return p0
.end method

.method static synthetic access$700(Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;)I
    .registers 1

    .line 46
    iget p0, p0, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->mShimmerDuration:I

    return p0
.end method

.method static synthetic access$800(Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;)Z
    .registers 1

    .line 46
    iget-boolean p0, p0, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->mFrozen:Z

    return p0
.end method


# virtual methods
.method public adapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->mActualAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method public angle(I)Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;
    .registers 2

    .line 109
    iput p1, p0, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->mShimmerAngle:I

    return-object p0
.end method

.method public color(I)Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;
    .registers 3

    .line 101
    iget-object v0, p0, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->mShimmerColor:I

    return-object p0
.end method

.method public count(I)Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;
    .registers 2

    .line 74
    iput p1, p0, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->mItemCount:I

    return-object p0
.end method

.method public duration(I)Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;
    .registers 2

    .line 93
    iput p1, p0, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->mShimmerDuration:I

    return-object p0
.end method

.method public load(I)Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;
    .registers 2

    .line 117
    iput p1, p0, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->mItemResID:I

    return-object p0
.end method

.method public shimmer(Z)Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;
    .registers 2

    .line 82
    iput-boolean p1, p0, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->mShimmer:Z

    return-object p0
.end method

.method public show()Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen;
    .registers 3

    .line 131
    new-instance v0, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen;-><init>(Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$1;)V

    .line 132
    invoke-virtual {v0}, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen;->show()V

    return-object v0
.end method
