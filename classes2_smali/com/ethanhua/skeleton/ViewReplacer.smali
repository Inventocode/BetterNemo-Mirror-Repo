.class public Lcom/ethanhua/skeleton/ViewReplacer;
.super Ljava/lang/Object;
.source "ViewReplacer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.ethanhua.skeleton.ViewReplacer"


# instance fields
.field private mCurrentView:Landroid/view/View;

.field private mSourceParentView:Landroid/view/ViewGroup;

.field private final mSourceView:Landroid/view/View;

.field private final mSourceViewId:I

.field private mSourceViewIndexInParent:I

.field private final mSourceViewLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private mTargetView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/ethanhua/skeleton/ViewReplacer;->mSourceViewIndexInParent:I

    .line 24
    iput-object p1, p0, Lcom/ethanhua/skeleton/ViewReplacer;->mSourceView:Landroid/view/View;

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/ethanhua/skeleton/ViewReplacer;->mSourceViewLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 26
    iput-object p1, p0, Lcom/ethanhua/skeleton/ViewReplacer;->mCurrentView:Landroid/view/View;

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iput p1, p0, Lcom/ethanhua/skeleton/ViewReplacer;->mSourceViewId:I

    return-void
.end method

.method private init()Z
    .registers 5

    .line 81
    iget-object v0, p0, Lcom/ethanhua/skeleton/ViewReplacer;->mSourceParentView:Landroid/view/ViewGroup;

    if-nez v0, :cond_2f

    .line 82
    iget-object v0, p0, Lcom/ethanhua/skeleton/ViewReplacer;->mSourceView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/ethanhua/skeleton/ViewReplacer;->mSourceParentView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_19

    .line 84
    sget-object v0, Lcom/ethanhua/skeleton/ViewReplacer;->TAG:Ljava/lang/String;

    const-string v2, "the source view have not attach to any view"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 87
    :cond_19
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_1d
    if-ge v1, v0, :cond_2f

    .line 89
    iget-object v2, p0, Lcom/ethanhua/skeleton/ViewReplacer;->mSourceView:Landroid/view/View;

    iget-object v3, p0, Lcom/ethanhua/skeleton/ViewReplacer;->mSourceParentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, v3, :cond_2c

    .line 90
    iput v1, p0, Lcom/ethanhua/skeleton/ViewReplacer;->mSourceViewIndexInParent:I

    goto :goto_2f

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_2f
    :goto_2f
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getTargetView()Landroid/view/View;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/ethanhua/skeleton/ViewReplacer;->mTargetView:Landroid/view/View;

    return-object v0
.end method

.method public replace(Landroid/view/View;)V
    .registers 5

    .line 42
    iget-object v0, p0, Lcom/ethanhua/skeleton/ViewReplacer;->mCurrentView:Landroid/view/View;

    if-ne v0, p1, :cond_5

    return-void

    .line 45
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 48
    :cond_14
    invoke-direct {p0}, Lcom/ethanhua/skeleton/ViewReplacer;->init()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 49
    iput-object p1, p0, Lcom/ethanhua/skeleton/ViewReplacer;->mTargetView:Landroid/view/View;

    .line 50
    iget-object p1, p0, Lcom/ethanhua/skeleton/ViewReplacer;->mSourceParentView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/ethanhua/skeleton/ViewReplacer;->mCurrentView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 51
    iget-object p1, p0, Lcom/ethanhua/skeleton/ViewReplacer;->mTargetView:Landroid/view/View;

    iget v0, p0, Lcom/ethanhua/skeleton/ViewReplacer;->mSourceViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 52
    iget-object p1, p0, Lcom/ethanhua/skeleton/ViewReplacer;->mSourceParentView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/ethanhua/skeleton/ViewReplacer;->mTargetView:Landroid/view/View;

    iget v1, p0, Lcom/ethanhua/skeleton/ViewReplacer;->mSourceViewIndexInParent:I

    iget-object v2, p0, Lcom/ethanhua/skeleton/ViewReplacer;->mSourceViewLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object p1, p0, Lcom/ethanhua/skeleton/ViewReplacer;->mTargetView:Landroid/view/View;

    iput-object p1, p0, Lcom/ethanhua/skeleton/ViewReplacer;->mCurrentView:Landroid/view/View;

    :cond_39
    return-void
.end method

.method public restore()V
    .registers 5

    .line 58
    iget-object v0, p0, Lcom/ethanhua/skeleton/ViewReplacer;->mSourceParentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1b

    .line 59
    iget-object v1, p0, Lcom/ethanhua/skeleton/ViewReplacer;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 60
    iget-object v0, p0, Lcom/ethanhua/skeleton/ViewReplacer;->mSourceParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ethanhua/skeleton/ViewReplacer;->mSourceView:Landroid/view/View;

    iget v2, p0, Lcom/ethanhua/skeleton/ViewReplacer;->mSourceViewIndexInParent:I

    iget-object v3, p0, Lcom/ethanhua/skeleton/ViewReplacer;->mSourceViewLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-object v0, p0, Lcom/ethanhua/skeleton/ViewReplacer;->mSourceView:Landroid/view/View;

    iput-object v0, p0, Lcom/ethanhua/skeleton/ViewReplacer;->mCurrentView:Landroid/view/View;

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/ethanhua/skeleton/ViewReplacer;->mTargetView:Landroid/view/View;

    :cond_1b
    return-void
.end method
