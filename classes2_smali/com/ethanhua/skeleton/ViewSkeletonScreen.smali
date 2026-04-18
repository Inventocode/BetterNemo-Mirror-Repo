.class public Lcom/ethanhua/skeleton/ViewSkeletonScreen;
.super Ljava/lang/Object;
.source "ViewSkeletonScreen.java"

# interfaces
.implements Lcom/ethanhua/skeleton/SkeletonScreen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.ethanhua.skeleton.ViewSkeletonScreen"


# instance fields
.field private final mActualView:Landroid/view/View;

.field private final mShimmer:Z

.field private final mShimmerAngle:I

.field private final mShimmerColor:I

.field private final mShimmerDuration:I

.field private final mSkeletonResID:I

.field private final mViewReplacer:Lcom/ethanhua/skeleton/ViewReplacer;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;)V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;->access$000(Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen;->mActualView:Landroid/view/View;

    .line 31
    invoke-static {p1}, Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;->access$100(Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;)I

    move-result v0

    iput v0, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen;->mSkeletonResID:I

    .line 32
    invoke-static {p1}, Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;->access$200(Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen;->mShimmer:Z

    .line 33
    invoke-static {p1}, Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;->access$300(Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;)I

    move-result v0

    iput v0, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen;->mShimmerDuration:I

    .line 34
    invoke-static {p1}, Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;->access$400(Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;)I

    move-result v0

    iput v0, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen;->mShimmerAngle:I

    .line 35
    invoke-static {p1}, Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;->access$500(Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;)I

    move-result v0

    iput v0, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen;->mShimmerColor:I

    .line 36
    new-instance v0, Lcom/ethanhua/skeleton/ViewReplacer;

    invoke-static {p1}, Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;->access$000(Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ethanhua/skeleton/ViewReplacer;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen;->mViewReplacer:Lcom/ethanhua/skeleton/ViewReplacer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;Lcom/ethanhua/skeleton/ViewSkeletonScreen$1;)V
    .registers 3

    .line 19
    invoke-direct {p0, p1}, Lcom/ethanhua/skeleton/ViewSkeletonScreen;-><init>(Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;)V

    return-void
.end method

.method private generateShimmerContainerLayout(Landroid/view/ViewGroup;)Lio/supercharge/shimmerlayout/ShimmerLayout;
    .registers 5

    .line 40
    iget-object v0, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen;->mActualView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/ethanhua/skeleton/R$layout;->layout_shimmer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/supercharge/shimmerlayout/ShimmerLayout;

    .line 41
    iget v0, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen;->mShimmerColor:I

    invoke-virtual {p1, v0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->setShimmerColor(I)V

    .line 42
    iget v0, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen;->mShimmerAngle:I

    invoke-virtual {p1, v0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->setShimmerAngle(I)V

    .line 43
    iget v0, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen;->mShimmerDuration:I

    invoke-virtual {p1, v0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->setShimmerAnimationDuration(I)V

    .line 44
    iget-object v0, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen;->mActualView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen;->mSkeletonResID:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_3b

    .line 47
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    :cond_3b
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 50
    new-instance v0, Lcom/ethanhua/skeleton/ViewSkeletonScreen$1;

    invoke-direct {v0, p0, p1}, Lcom/ethanhua/skeleton/ViewSkeletonScreen$1;-><init>(Lcom/ethanhua/skeleton/ViewSkeletonScreen;Lio/supercharge/shimmerlayout/ShimmerLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 61
    invoke-virtual {p1}, Lio/supercharge/shimmerlayout/ShimmerLayout;->startShimmerAnimation()V

    return-object p1
.end method

.method private generateSkeletonLoadingView()Landroid/view/View;
    .registers 5

    .line 66
    iget-object v0, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen;->mActualView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_11

    .line 68
    sget-object v0, Lcom/ethanhua/skeleton/ViewSkeletonScreen;->TAG:Ljava/lang/String;

    const-string v1, "the source view have not attach to any view"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_11
    check-cast v0, Landroid/view/ViewGroup;

    .line 72
    iget-boolean v1, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen;->mShimmer:Z

    if-eqz v1, :cond_1c

    .line 73
    invoke-direct {p0, v0}, Lcom/ethanhua/skeleton/ViewSkeletonScreen;->generateShimmerContainerLayout(Landroid/view/ViewGroup;)Lio/supercharge/shimmerlayout/ShimmerLayout;

    move-result-object v0

    return-object v0

    .line 75
    :cond_1c
    iget-object v1, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen;->mActualView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen;->mSkeletonResID:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public hide()V
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen;->mViewReplacer:Lcom/ethanhua/skeleton/ViewReplacer;

    invoke-virtual {v0}, Lcom/ethanhua/skeleton/ViewReplacer;->getTargetView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lio/supercharge/shimmerlayout/ShimmerLayout;

    if-eqz v0, :cond_15

    .line 89
    iget-object v0, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen;->mViewReplacer:Lcom/ethanhua/skeleton/ViewReplacer;

    invoke-virtual {v0}, Lcom/ethanhua/skeleton/ViewReplacer;->getTargetView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/supercharge/shimmerlayout/ShimmerLayout;

    invoke-virtual {v0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->stopShimmerAnimation()V

    .line 91
    :cond_15
    iget-object v0, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen;->mViewReplacer:Lcom/ethanhua/skeleton/ViewReplacer;

    invoke-virtual {v0}, Lcom/ethanhua/skeleton/ViewReplacer;->restore()V

    return-void
.end method

.method public show()V
    .registers 3

    .line 80
    invoke-direct {p0}, Lcom/ethanhua/skeleton/ViewSkeletonScreen;->generateSkeletonLoadingView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 82
    iget-object v1, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen;->mViewReplacer:Lcom/ethanhua/skeleton/ViewReplacer;

    invoke-virtual {v1, v0}, Lcom/ethanhua/skeleton/ViewReplacer;->replace(Landroid/view/View;)V

    :cond_b
    return-void
.end method
