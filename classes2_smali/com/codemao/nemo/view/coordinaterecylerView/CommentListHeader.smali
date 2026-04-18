.class public Lcom/codemao/nemo/view/coordinaterecylerView/CommentListHeader;
.super Landroid/widget/RelativeLayout;
.source "CommentListHeader.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshHeader;


# instance fields
.field private ivLoading:Lcom/airbnb/lottie/LottieAnimationView;

.field private mContainer:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0}, Lcom/codemao/nemo/view/coordinaterecylerView/CommentListHeader;->initView()V

    return-void
.end method

.method private initView()V
    .registers 5

    .line 48
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d02e4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommentListHeader;->mContainer:Landroid/widget/RelativeLayout;

    .line 49
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    .line 50
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 51
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 53
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommentListHeader;->mContainer:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v3, 0x42480000  # 50.0f

    invoke-static {v3}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v3

    invoke-direct {v2, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0a03cb

    .line 54
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommentListHeader;->ivLoading:Lcom/airbnb/lottie/LottieAnimationView;

    return-void
.end method


# virtual methods
.method public getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;
    .registers 2

    .line 67
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 1

    return-object p0
.end method

.method public isSupportHorizontalDrag()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I
    .registers 3

    .line 101
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommentListHeader;->ivLoading:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    const/4 p1, 0x0

    return p1
.end method

.method public onHorizontalDrag(FII)V
    .registers 4

    return-void
.end method

.method public onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V
    .registers 4

    return-void
.end method

.method public onMoving(ZFIII)V
    .registers 6

    const p1, 0x3fb33333  # 1.4f

    cmpl-float p3, p2, p1

    if-ltz p3, :cond_d

    .line 83
    iget-object p2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommentListHeader;->ivLoading:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setScale(F)V

    goto :goto_12

    .line 85
    :cond_d
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommentListHeader;->ivLoading:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setScale(F)V

    :goto_12
    return-void
.end method

.method public onReleased(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V
    .registers 4

    .line 91
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommentListHeader;->ivLoading:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method public onStartAnimator(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V
    .registers 4

    return-void
.end method

.method public onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V
    .registers 4

    return-void
.end method

.method public varargs setPrimaryColors([I)V
    .registers 2

    return-void
.end method
