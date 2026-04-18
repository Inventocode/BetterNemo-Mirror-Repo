.class public abstract Lcom/scwang/smartrefresh/layout/internal/InternalClassics;
.super Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;
.source "InternalClassics.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/scwang/smartrefresh/layout/internal/InternalClassics;",
        ">",
        "Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;",
        "Lcom/scwang/smartrefresh/layout/api/RefreshInternal;"
    }
.end annotation


# instance fields
.field protected mAccentColor:Ljava/lang/Integer;

.field protected mArrowDrawable:Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;

.field protected mArrowView:Landroid/widget/ImageView;

.field protected mBackgroundColor:I

.field protected mCenterLayout:Landroid/widget/LinearLayout;

.field protected mFinishDuration:I

.field protected mMinHeightOfContent:I

.field protected mPaddingBottom:I

.field protected mPaddingTop:I

.field protected mPrimaryColor:Ljava/lang/Integer;

.field protected mProgressDrawable:Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;

.field protected mProgressView:Landroid/widget/ImageView;

.field protected mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

.field protected mTitleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0x1f4

    .line 53
    iput p2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mFinishDuration:I

    const/16 p2, 0x14

    .line 54
    iput p2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mPaddingTop:I

    .line 55
    iput p2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mPaddingBottom:I

    const/4 p2, 0x0

    .line 56
    iput p2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mMinHeightOfContent:I

    .line 63
    sget-object p3, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->mSpinnerStyle:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    .line 64
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mArrowView:Landroid/widget/ImageView;

    .line 65
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mProgressView:Landroid/widget/ImageView;

    .line 66
    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mTitleText:Landroid/widget/TextView;

    const v0, -0x99999a

    .line 67
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    new-instance p3, Landroid/widget/LinearLayout;

    invoke-direct {p3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mCenterLayout:Landroid/widget/LinearLayout;

    const/4 p1, 0x1

    .line 69
    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 70
    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mCenterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 74
    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mArrowView:Landroid/widget/ImageView;

    .line 75
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mTitleText:Landroid/widget/TextView;

    .line 76
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mProgressView:Landroid/widget/ImageView;

    .line 77
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mCenterLayout:Landroid/widget/LinearLayout;

    .line 78
    new-instance v3, Lcom/scwang/smartrefresh/layout/util/DensityUtil;

    invoke-direct {v3}, Lcom/scwang/smartrefresh/layout/util/DensityUtil;-><init>()V

    .line 80
    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    const/4 p1, 0x2

    .line 81
    invoke-virtual {p3, p1}, Landroid/view/View;->setId(I)V

    const/4 p1, 0x3

    .line 82
    invoke-virtual {v1, p1}, Landroid/view/View;->setId(I)V

    const p1, 0x1020018

    .line 83
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->setId(I)V

    .line 85
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 86
    invoke-virtual {v2, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xd

    .line 89
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 90
    invoke-virtual {p0, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v2, 0x41a00000  # 20.0f

    invoke-virtual {v3, v2}, Lcom/scwang/smartrefresh/layout/util/DensityUtil;->dip2px(F)I

    move-result v4

    invoke-virtual {v3, v2}, Lcom/scwang/smartrefresh/layout/util/DensityUtil;->dip2px(F)I

    move-result v5

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xf

    .line 93
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 94
    invoke-virtual {v0, p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 95
    invoke-virtual {p0, p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 99
    invoke-virtual {v5, p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 100
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 101
    invoke-virtual {p0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    if-nez p1, :cond_e3

    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    if-nez p1, :cond_cb

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {v3, v2}, Lcom/scwang/smartrefresh/layout/util/DensityUtil;->dip2px(F)I

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mPaddingTop:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    invoke-virtual {v3, v2}, Lcom/scwang/smartrefresh/layout/util/DensityUtil;->dip2px(F)I

    move-result v2

    iput v2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mPaddingBottom:I

    invoke-virtual {p0, p1, p2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_10d

    .line 107
    :cond_cb
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {v3, v2}, Lcom/scwang/smartrefresh/layout/util/DensityUtil;->dip2px(F)I

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mPaddingTop:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    iput v2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mPaddingBottom:I

    invoke-virtual {p0, p1, p2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_10d

    .line 110
    :cond_e3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    if-nez p1, :cond_101

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mPaddingTop:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    invoke-virtual {v3, v2}, Lcom/scwang/smartrefresh/layout/util/DensityUtil;->dip2px(F)I

    move-result v2

    iput v2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mPaddingBottom:I

    invoke-virtual {p0, p1, p2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_10d

    .line 113
    :cond_101
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mPaddingTop:I

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mPaddingBottom:I

    .line 118
    :goto_10d
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    const/16 p2, 0x8

    if-eqz p1, :cond_119

    .line 119
    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_11c

    .line 121
    :cond_119
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_11c
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 3

    .line 155
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 156
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1b

    .line 157
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mArrowView:Landroid/widget/ImageView;

    .line 158
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mProgressView:Landroid/widget/ImageView;

    .line 159
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 160
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 162
    :cond_1b
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mProgressView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 163
    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_30

    .line 164
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 165
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_30
    return-void
.end method

.method public onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I
    .registers 5

    .line 210
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mProgressView:Landroid/widget/ImageView;

    .line 211
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 212
    instance-of v0, p2, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_16

    .line 213
    check-cast p2, Landroid/graphics/drawable/Animatable;

    invoke-interface {p2}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 214
    invoke-interface {p2}, Landroid/graphics/drawable/Animatable;->stop()V

    goto :goto_24

    .line 217
    :cond_16
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_24
    :goto_24
    const/16 p2, 0x8

    .line 219
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 220
    iget p1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mFinishDuration:I

    return p1
.end method

.method public onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V
    .registers 4

    .line 180
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 181
    iget p2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mBackgroundColor:I

    invoke-interface {p1, p0, p2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->requestDrawBackgroundFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;I)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    return-void
.end method

.method protected onMeasure(II)V
    .registers 8

    .line 129
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x40000000  # 2.0f

    if-ne v0, v2, :cond_2c

    .line 130
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 131
    iget v2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mMinHeightOfContent:I

    if-ge v0, v2, :cond_20

    sub-int/2addr v0, v2

    .line 132
    div-int/lit8 v0, v0, 0x2

    .line 133
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0, v2, v0, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3b

    .line 135
    :cond_20
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3b

    .line 139
    :cond_2c
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mPaddingTop:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mPaddingBottom:I

    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 141
    :goto_3b
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 142
    iget p1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mMinHeightOfContent:I

    if-nez p1, :cond_59

    .line 144
    :goto_42
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_59

    .line 145
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 146
    iget p2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mMinHeightOfContent:I

    if-ge p2, p1, :cond_56

    .line 147
    iput p1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mMinHeightOfContent:I

    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :cond_59
    return-void
.end method

.method public onReleased(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V
    .registers 4

    .line 205
    invoke-virtual {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->onStartAnimator(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V

    return-void
.end method

.method public onStartAnimator(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V
    .registers 4

    .line 191
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mProgressView:Landroid/widget/ImageView;

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_2d

    const/4 p2, 0x0

    .line 193
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mProgressView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 195
    instance-of p3, p2, Landroid/graphics/drawable/Animatable;

    if-eqz p3, :cond_1c

    .line 196
    check-cast p2, Landroid/graphics/drawable/Animatable;

    invoke-interface {p2}, Landroid/graphics/drawable/Animatable;->start()V

    goto :goto_2d

    .line 198
    :cond_1c
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const p2, 0x470ca000  # 36000.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/32 p2, 0x186a0

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_2d
    :goto_2d
    return-void
.end method

.method protected self()Lcom/scwang/smartrefresh/layout/internal/InternalClassics;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    return-object p0
.end method

.method public setAccentColor(I)Lcom/scwang/smartrefresh/layout/internal/InternalClassics;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 303
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mAccentColor:Ljava/lang/Integer;

    .line 304
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 305
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mArrowDrawable:Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;

    if-eqz v0, :cond_19

    .line 306
    invoke-virtual {v0, p1}, Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;->setColor(I)V

    .line 307
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mArrowView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mArrowDrawable:Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 309
    :cond_19
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mProgressDrawable:Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;

    if-eqz v0, :cond_27

    .line 310
    invoke-virtual {v0, p1}, Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;->setColor(I)V

    .line 311
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mProgressView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mProgressDrawable:Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 313
    :cond_27
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->self()Lcom/scwang/smartrefresh/layout/internal/InternalClassics;

    move-result-object p1

    return-object p1
.end method

.method public setPrimaryColor(I)Lcom/scwang/smartrefresh/layout/internal/InternalClassics;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 290
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mPrimaryColor:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mBackgroundColor:I

    .line 291
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-eqz p1, :cond_19

    .line 292
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mPrimaryColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, p0, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->requestDrawBackgroundFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;I)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 299
    :cond_19
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->self()Lcom/scwang/smartrefresh/layout/internal/InternalClassics;

    move-result-object p1

    return-object p1
.end method

.method public varargs setPrimaryColors([I)V
    .registers 5

    .line 225
    array-length v0, p1

    if-lez v0, :cond_27

    .line 227
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mPrimaryColor:Ljava/lang/Integer;

    if-nez v0, :cond_18

    const/4 v0, 0x0

    .line 228
    aget v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->setPrimaryColor(I)Lcom/scwang/smartrefresh/layout/internal/InternalClassics;

    .line 229
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mPrimaryColor:Ljava/lang/Integer;

    .line 231
    :cond_18
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mAccentColor:Ljava/lang/Integer;

    if-nez v0, :cond_27

    .line 232
    array-length v0, p1

    const/4 v2, 0x1

    if-le v0, v2, :cond_25

    .line 233
    aget p1, p1, v2

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->setAccentColor(I)Lcom/scwang/smartrefresh/layout/internal/InternalClassics;

    .line 237
    :cond_25
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mAccentColor:Ljava/lang/Integer;

    :cond_27
    return-void
.end method
