.class public Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeader;
.super Landroid/widget/RelativeLayout;
.source "CommonHeader.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshInternal;


# instance fields
.field private anim:Landroid/graphics/drawable/AnimationDrawable;

.field private isLoading:Z

.field private iv:Landroid/widget/ImageView;

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mStartFrame:[I

.field private refreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

.field private tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 38
    iput-boolean p2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeader;->isLoading:Z

    .line 50
    iput-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeader;->mContext:Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeader;->initView()V

    return-void
.end method

.method private initFrameAnims()V
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeader;->mStartFrame:[I

    if-nez v0, :cond_f

    .line 71
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeader;->mContext:Landroid/content/Context;

    const v1, 0x7f030003

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/CommonUtil;->getResourceArray(Landroid/content/Context;I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeader;->mStartFrame:[I

    :cond_f
    return-void
.end method

.method private initView()V
    .registers 6

    .line 56
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d02e6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeader;->mContainer:Landroid/widget/RelativeLayout;

    .line 57
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    .line 58
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 59
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 61
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeader;->mContainer:Landroid/widget/RelativeLayout;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v4, 0x42820000  # 65.0f

    invoke-static {v4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v4

    invoke-direct {v3, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    invoke-virtual {p0, v2, v2}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 63
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    const v0, 0x7f0a033f

    .line 64
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeader;->iv:Landroid/widget/ImageView;

    .line 65
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeader;->mContainer:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a07e3

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeader;->tv:Landroid/widget/TextView;

    .line 66
    invoke-direct {p0}, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeader;->initFrameAnims()V

    return-void
.end method


# virtual methods
.method public getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;
    .registers 2

    .line 85
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

    .line 97
    iput-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeader;->refreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 98
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeader;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060045

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 99
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeader;->refreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget-object p3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeader;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-interface {p1, p0, p2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->requestDrawBackgroundFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;I)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    return-void
.end method

.method public onMoving(ZFIII)V
    .registers 6

    .line 104
    iget-boolean p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeader;->isLoading:Z

    if-nez p1, :cond_18

    const/high16 p1, 0x41900000  # 18.0f

    mul-float p2, p2, p1

    float-to-int p1, p2

    .line 106
    iget-object p2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeader;->mStartFrame:[I

    array-length p3, p2

    if-lt p1, p3, :cond_11

    .line 107
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    .line 109
    :cond_11
    iget-object p3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeader;->iv:Landroid/widget/ImageView;

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

    .line 140
    sget-object p1, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeader$1;->$SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I

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

    .line 169
    :cond_13
    iput-boolean p2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeader;->isLoading:Z

    .line 170
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeader;->anim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_4c

    .line 171
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_4c

    .line 149
    :cond_1d
    iput-boolean p3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeader;->isLoading:Z

    .line 150
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeader;->tv:Landroid/widget/TextView;

    const-string p2, "努力更新中..."

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeader;->anim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_2d

    .line 152
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 154
    :cond_2d
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeader;->iv:Landroid/widget/ImageView;

    const p2, 0x7f0806a0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 155
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeader;->iv:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeader;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 156
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_4c

    .line 142
    :cond_43
    iput-boolean p2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeader;->isLoading:Z

    .line 143
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeader;->tv:Landroid/widget/TextView;

    const-string p2, "被发现了，求放过"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method public varargs setPrimaryColors([I)V
    .registers 4

    .line 90
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeader;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060045

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 91
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeader;->refreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-eqz p1, :cond_21

    .line 92
    iget-object v1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-interface {p1, p0, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->requestDrawBackgroundFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;I)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    :cond_21
    return-void
.end method
