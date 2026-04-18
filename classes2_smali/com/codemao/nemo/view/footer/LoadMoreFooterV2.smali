.class public Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;
.super Landroid/widget/LinearLayout;
.source "LoadMoreFooterV2.java"

# interfaces
.implements Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;


# instance fields
.field private largePad:Z

.field private leftLine:Landroid/view/View;

.field private mContainer:Landroid/view/View;

.field private mLoadMoreText:Landroid/widget/TextView;

.field private mProgressBar:Lcom/airbnb/lottie/LottieAnimationView;

.field private rightLine:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0}, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->initView()V

    return-void
.end method

.method private initView()V
    .registers 4

    .line 41
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->largePad:Z

    .line 43
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d025f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->mContainer:Landroid/view/View;

    const v1, 0x7f0a07f2

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->mLoadMoreText:Landroid/widget/TextView;

    .line 46
    iget-object v0, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->mContainer:Landroid/view/View;

    const v1, 0x7f0a0350

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->mProgressBar:Lcom/airbnb/lottie/LottieAnimationView;

    .line 47
    iget-object v0, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->mContainer:Landroid/view/View;

    const v1, 0x7f0a0983

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->leftLine:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->mContainer:Landroid/view/View;

    const v1, 0x7f0a0989

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->rightLine:Landroid/view/View;

    const/4 v0, 0x4

    .line 50
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 52
    iget-boolean v0, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->largePad:Z

    if-eqz v0, :cond_51

    const/high16 v0, 0x41f00000  # 30.0f

    goto :goto_53

    :cond_51
    const/high16 v0, 0x41a00000  # 20.0f

    :goto_53
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    .line 53
    iget-object v1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->leftLine:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 54
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 55
    iget-object v1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->rightLine:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 56
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 57
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method


# virtual methods
.method public changeState(I)V
    .registers 5

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_87

    const/4 v2, 0x1

    if-eq p1, v2, :cond_6a

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4d

    const/4 v2, 0x3

    if-eq p1, v2, :cond_30

    const/4 v2, 0x4

    if-eq p1, v2, :cond_13

    goto/16 :goto_a3

    .line 71
    :cond_13
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->mLoadMoreText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->leftLine:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->rightLine:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->mProgressBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 75
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->mProgressBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_a3

    .line 103
    :cond_30
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->leftLine:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->rightLine:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->mLoadMoreText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->mProgressBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 107
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->mProgressBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_a3

    .line 95
    :cond_4d
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->mLoadMoreText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->leftLine:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->rightLine:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->mProgressBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 99
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->mProgressBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_a3

    .line 87
    :cond_6a
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->leftLine:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->rightLine:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->mLoadMoreText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->mProgressBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 91
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->mProgressBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_a3

    .line 79
    :cond_87
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->mProgressBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 80
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->mProgressBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->mLoadMoreText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->leftLine:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->rightLine:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_a3
    return-void
.end method

.method public setContentLayoutParams(I)V
    .registers 5

    .line 61
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 62
    iget-boolean v1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->largePad:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    const/high16 v1, 0x41700000  # 15.0f

    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    invoke-virtual {v0, v2, v1, v2, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 63
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method public setVisible(Z)V
    .registers 2

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_6

    :cond_4
    const/16 p1, 0x8

    .line 115
    :goto_6
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
