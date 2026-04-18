.class public Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;
.super Ljava/lang/Object;
.source "ViewSkeletonScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ethanhua/skeleton/ViewSkeletonScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mShimmer:Z

.field private mShimmerAngle:I

.field private mShimmerColor:I

.field private mShimmerDuration:I

.field private mSkeletonLayoutResID:I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;->mShimmer:Z

    const/16 v0, 0x3e8

    .line 99
    iput v0, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;->mShimmerDuration:I

    const/16 v0, 0x14

    .line 100
    iput v0, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;->mShimmerAngle:I

    .line 103
    iput-object p1, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;->mView:Landroid/view/View;

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/ethanhua/skeleton/R$color;->shimmer_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;->mShimmerColor:I

    return-void
.end method

.method static synthetic access$000(Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;)Landroid/view/View;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;)I
    .registers 1

    .line 94
    iget p0, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;->mSkeletonLayoutResID:I

    return p0
.end method

.method static synthetic access$200(Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;)Z
    .registers 1

    .line 94
    iget-boolean p0, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;->mShimmer:Z

    return p0
.end method

.method static synthetic access$300(Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;)I
    .registers 1

    .line 94
    iget p0, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;->mShimmerDuration:I

    return p0
.end method

.method static synthetic access$400(Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;)I
    .registers 1

    .line 94
    iget p0, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;->mShimmerAngle:I

    return p0
.end method

.method static synthetic access$500(Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;)I
    .registers 1

    .line 94
    iget p0, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;->mShimmerColor:I

    return p0
.end method


# virtual methods
.method public angle(I)Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;
    .registers 2

    .line 146
    iput p1, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;->mShimmerAngle:I

    return-object p0
.end method

.method public color(I)Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;
    .registers 3

    .line 119
    iget-object v0, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;->mShimmerColor:I

    return-object p0
.end method

.method public duration(I)Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;
    .registers 2

    .line 138
    iput p1, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;->mShimmerDuration:I

    return-object p0
.end method

.method public load(I)Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;
    .registers 2

    .line 111
    iput p1, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;->mSkeletonLayoutResID:I

    return-object p0
.end method

.method public shimmer(Z)Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;
    .registers 2

    .line 127
    iput-boolean p1, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;->mShimmer:Z

    return-object p0
.end method

.method public show()Lcom/ethanhua/skeleton/ViewSkeletonScreen;
    .registers 3

    .line 151
    new-instance v0, Lcom/ethanhua/skeleton/ViewSkeletonScreen;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ethanhua/skeleton/ViewSkeletonScreen;-><init>(Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;Lcom/ethanhua/skeleton/ViewSkeletonScreen$1;)V

    .line 152
    invoke-virtual {v0}, Lcom/ethanhua/skeleton/ViewSkeletonScreen;->show()V

    return-object v0
.end method
