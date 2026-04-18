.class public Lcom/codemao/nemo/view/footer/LoadMoreFooter;
.super Landroid/widget/LinearLayout;
.source "LoadMoreFooter.java"

# interfaces
.implements Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;


# instance fields
.field private mContainer:Landroid/view/View;

.field private mLoadMoreText:Landroid/widget/TextView;

.field private mProgressBar:Lcom/airbnb/lottie/LottieAnimationView;

.field private noMoreStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/codemao/nemo/view/footer/LoadMoreFooter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/view/footer/LoadMoreFooter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0}, Lcom/codemao/nemo/view/footer/LoadMoreFooter;->initView()V

    return-void
.end method

.method private initView()V
    .registers 4

    .line 44
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d025c

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooter;->mContainer:Landroid/view/View;

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/footer/LoadMoreFooter;->setContentLayoutParams(I)V

    .line 46
    iget-object v0, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooter;->mContainer:Landroid/view/View;

    const v1, 0x7f0a07f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooter;->mLoadMoreText:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooter;->mContainer:Landroid/view/View;

    const v1, 0x7f0a0350

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooter;->mProgressBar:Lcom/airbnb/lottie/LottieAnimationView;

    .line 48
    iget-object v0, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooter;->mContainer:Landroid/view/View;

    const v1, 0x7f0a0983

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooter;->mContainer:Landroid/view/View;

    const v1, 0x7f0a0989

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    const/4 v0, 0x4

    .line 51
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public changeState(I)V
    .registers 5

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_76

    const/4 v2, 0x1

    if-eq p1, v2, :cond_63

    const/4 v2, 0x2

    if-eq p1, v2, :cond_39

    const/4 v2, 0x3

    if-eq p1, v2, :cond_26

    const/4 v2, 0x4

    if-eq p1, v2, :cond_13

    goto/16 :goto_88

    .line 65
    :cond_13
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooter;->mLoadMoreText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooter;->mProgressBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 69
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooter;->mProgressBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_88

    .line 105
    :cond_26
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooter;->mLoadMoreText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooter;->mProgressBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 107
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooter;->mProgressBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_88

    .line 89
    :cond_39
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooter;->noMoreStr:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 90
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooter;->mLoadMoreText:Landroid/widget/TextView;

    const-string v2, "喵~已经到最后啦！"

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_50

    .line 92
    :cond_49
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooter;->mLoadMoreText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooter;->noMoreStr:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :goto_50
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooter;->mLoadMoreText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooter;->mProgressBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 99
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooter;->mProgressBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_88

    .line 83
    :cond_63
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooter;->mLoadMoreText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooter;->mProgressBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 85
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooter;->mProgressBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_88

    .line 73
    :cond_76
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooter;->mProgressBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 74
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooter;->mProgressBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    iget-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooter;->mLoadMoreText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_88
    return-void
.end method

.method public getNoMoreStr()Ljava/lang/String;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooter;->noMoreStr:Ljava/lang/String;

    return-object v0
.end method

.method public setContentLayoutParams(I)V
    .registers 5

    .line 55
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0, v1, v1, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 57
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method public setNoMoreStr(Ljava/lang/String;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/codemao/nemo/view/footer/LoadMoreFooter;->noMoreStr:Ljava/lang/String;

    return-void
.end method

.method public setVisible(Z)V
    .registers 2

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_6

    :cond_4
    const/16 p1, 0x8

    .line 123
    :goto_6
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
