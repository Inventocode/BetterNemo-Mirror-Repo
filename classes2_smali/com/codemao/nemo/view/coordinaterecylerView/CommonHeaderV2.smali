.class public Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;
.super Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;
.source "CommonHeaderV2.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshHeader;


# instance fields
.field private anim:Landroid/graphics/drawable/AnimationDrawable;

.field private isBgTranslate:Z

.field private isLoading:Z

.field private iv:Landroid/widget/ImageView;

.field private lineView:Landroid/view/View;

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mStartFrame:[I

.field private refreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

.field private tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    iput-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 36
    iput-boolean p3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->isLoading:Z

    .line 38
    iput-boolean p3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->isBgTranslate:Z

    .line 54
    iput-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->mContext:Landroid/content/Context;

    .line 55
    invoke-direct {p0, p2}, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->initView(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initFrameAnims()V
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->mStartFrame:[I

    if-nez v0, :cond_f

    .line 92
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->mContext:Landroid/content/Context;

    const v1, 0x7f030003

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/CommonUtil;->getResourceArray(Landroid/content/Context;I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->mStartFrame:[I

    :cond_f
    return-void
.end method

.method private initView(Landroid/util/AttributeSet;)V
    .registers 6

    .line 61
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d02e8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->mContainer:Landroid/widget/RelativeLayout;

    const/high16 v0, 0x42960000  # 75.0f

    .line 62
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    if-eqz p1, :cond_47

    .line 64
    iget-object v1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/codemao/nemo/R$styleable;->CommonHeaderV2:[I

    invoke-virtual {v1, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v1, 0x2

    .line 65
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->isBgTranslate:Z

    const v1, -0x160f0a

    .line 66
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    const/4 v3, 0x1

    .line 67
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 68
    iget-object v3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 69
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    move v1, v0

    .line 71
    :cond_47
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v3, -0x1

    invoke-direct {p1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 72
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 73
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 75
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->mContainer:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v1, v1

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    invoke-virtual {p0, v2, v2}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 77
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    const p1, 0x7f0a033f

    .line 78
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->iv:Landroid/widget/ImageView;

    .line 79
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->mContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a07e3

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->tv:Landroid/widget/TextView;

    .line 80
    invoke-direct {p0}, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->initFrameAnims()V

    const p1, 0x7f0a0496

    .line 81
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->lineView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;
    .registers 2

    .line 106
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

    const/4 p1, 0x0

    return p1
.end method

.method public onHorizontalDrag(FII)V
    .registers 4

    return-void
.end method

.method public onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V
    .registers 4

    .line 127
    iput-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->refreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 128
    iget-boolean p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->isBgTranslate:Z

    if-eqz p1, :cond_26

    .line 129
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0601a6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 130
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->refreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget-object p3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-interface {p1, p0, p2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->requestDrawBackgroundFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;I)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_45

    .line 132
    :cond_26
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060045

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 133
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->refreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget-object p3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-interface {p1, p0, p2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->requestDrawBackgroundFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;I)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    :goto_45
    return-void
.end method

.method public onMoving(ZFIII)V
    .registers 6

    .line 140
    iget-boolean p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->isLoading:Z

    if-nez p1, :cond_18

    const/high16 p1, 0x41900000  # 18.0f

    mul-float p2, p2, p1

    float-to-int p1, p2

    .line 142
    iget-object p2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->mStartFrame:[I

    array-length p3, p2

    if-lt p1, p3, :cond_11

    .line 143
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    .line 145
    :cond_11
    iget-object p3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->iv:Landroid/widget/ImageView;

    aget p1, p2, p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_18
    return-void
.end method

.method public onReleased(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V
    .registers 4

    return-void
.end method

.method public onStartAnimator(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V
    .registers 4

    return-void
.end method

.method public onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V
    .registers 5

    .line 176
    sget-object p1, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2$1;->$SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eq p1, p3, :cond_43

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1d

    const/4 p3, 0x5

    if-eq p1, p3, :cond_13

    goto :goto_4c

    .line 205
    :cond_13
    iput-boolean p2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->isLoading:Z

    .line 206
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->anim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_4c

    .line 207
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_4c

    .line 185
    :cond_1d
    iput-boolean p3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->isLoading:Z

    .line 186
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->tv:Landroid/widget/TextView;

    const-string p2, "努力更新中..."

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->anim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_2d

    .line 188
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 190
    :cond_2d
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->iv:Landroid/widget/ImageView;

    const p2, 0x7f0806a0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->iv:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 192
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_4c

    .line 178
    :cond_43
    iput-boolean p2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->isLoading:Z

    .line 179
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->tv:Landroid/widget/TextView;

    const-string p2, "被发现了，求放过"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method public setLineViewBgColor(I)V
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->lineView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 86
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_7
    return-void
.end method

.method public varargs setPrimaryColors([I)V
    .registers 4

    .line 112
    iget-boolean v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->isBgTranslate:Z

    if-eqz v0, :cond_26

    .line 113
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0601a6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 114
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->refreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-eqz p1, :cond_35

    .line 115
    iget-object v1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-interface {p1, p0, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->requestDrawBackgroundFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;I)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_35

    :cond_26
    const/4 v0, 0x0

    .line 118
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 119
    iget-object v1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->refreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-eqz v1, :cond_35

    .line 120
    aget p1, p1, v0

    invoke-interface {v1, p0, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->requestDrawBackgroundFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;I)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    :cond_35
    :goto_35
    return-void
.end method
