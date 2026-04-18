.class public Lcom/lxj/xpopup/core/ImageViewerPopupView;
.super Lcom/lxj/xpopup/core/BasePopupView;
.source "ImageViewerPopupView.java"

# interfaces
.implements Lcom/lxj/xpopup/interfaces/OnDragChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lxj/xpopup/core/ImageViewerPopupView$PhotoViewAdapter;
    }
.end annotation


# instance fields
.field protected argbEvaluator:Landroid/animation/ArgbEvaluator;

.field protected bgColor:I

.field protected container:Landroid/widget/FrameLayout;

.field protected customView:Landroid/view/View;

.field protected imageLoader:Lcom/lxj/xpopup/interfaces/XPopupImageLoader;

.field protected isInfinite:Z

.field protected isShowIndicator:Z

.field protected isShowPlaceholder:Z

.field protected isShowSaveBtn:Z

.field protected pager:Lcom/lxj/xpopup/widget/HackyViewPager;

.field protected photoViewContainer:Lcom/lxj/xpopup/widget/PhotoViewContainer;

.field protected placeholderColor:I

.field protected placeholderRadius:I

.field protected placeholderStrokeColor:I

.field protected placeholderView:Lcom/lxj/xpopup/widget/BlankView;

.field protected position:I

.field protected rect:Landroid/graphics/Rect;

.field protected snapshotView:Lcom/lxj/xpopup/photoview/PhotoView;

.field protected srcView:Landroid/widget/ImageView;

.field protected srcViewUpdateListener:Lcom/lxj/xpopup/interfaces/OnSrcViewUpdateListener;

.field protected tv_pager_indicator:Landroid/widget/TextView;

.field protected tv_save:Landroid/widget/TextView;

.field protected urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic access$000(Lcom/lxj/xpopup/core/ImageViewerPopupView;)V
    .registers 1

    .line 53
    invoke-direct {p0}, Lcom/lxj/xpopup/core/ImageViewerPopupView;->showPagerIndicator()V

    return-void
.end method

.method static synthetic access$100(Lcom/lxj/xpopup/core/ImageViewerPopupView;I)V
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/ImageViewerPopupView;->animateShadowBg(I)V

    return-void
.end method

.method private addOrUpdateSnapshot()V
    .registers 5

    .line 146
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->srcView:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    return-void

    .line 147
    :cond_5
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->snapshotView:Lcom/lxj/xpopup/photoview/PhotoView;

    if-nez v0, :cond_4f

    .line 148
    new-instance v0, Lcom/lxj/xpopup/photoview/PhotoView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lxj/xpopup/photoview/PhotoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->snapshotView:Lcom/lxj/xpopup/photoview/PhotoView;

    const/4 v1, 0x0

    .line 149
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 150
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->photoViewContainer:Lcom/lxj/xpopup/widget/PhotoViewContainer;

    iget-object v1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->snapshotView:Lcom/lxj/xpopup/photoview/PhotoView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 151
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->snapshotView:Lcom/lxj/xpopup/photoview/PhotoView;

    iget-object v1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->srcView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 152
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->snapshotView:Lcom/lxj/xpopup/photoview/PhotoView;

    iget-object v1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 153
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->snapshotView:Lcom/lxj/xpopup/photoview/PhotoView;

    iget-object v1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 154
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->snapshotView:Lcom/lxj/xpopup/photoview/PhotoView;

    iget-object v1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/lxj/xpopup/util/XPopupUtils;->setWidthHeight(Landroid/view/View;II)V

    .line 156
    :cond_4f
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/ImageViewerPopupView;->getRealPosition()I

    move-result v0

    .line 157
    iget-object v1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->snapshotView:Lcom/lxj/xpopup/photoview/PhotoView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 158
    invoke-direct {p0}, Lcom/lxj/xpopup/core/ImageViewerPopupView;->setupPlaceholder()V

    .line 159
    iget-object v1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->imageLoader:Lcom/lxj/xpopup/interfaces/XPopupImageLoader;

    if-eqz v1, :cond_70

    iget-object v2, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->urls:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->snapshotView:Lcom/lxj/xpopup/photoview/PhotoView;

    iget-object v3, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->srcView:Landroid/widget/ImageView;

    invoke-interface {v1, v0, v2, v3}, Lcom/lxj/xpopup/interfaces/XPopupImageLoader;->loadSnapshot(Ljava/lang/Object;Lcom/lxj/xpopup/photoview/PhotoView;Landroid/widget/ImageView;)V

    :cond_70
    return-void
.end method

.method private animateShadowBg(I)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "endColor"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->photoViewContainer:Lcom/lxj/xpopup/widget/PhotoViewContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 214
    fill-array-data v1, :array_34

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 215
    new-instance v2, Lcom/lxj/xpopup/core/ImageViewerPopupView$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/lxj/xpopup/core/ImageViewerPopupView$2;-><init>(Lcom/lxj/xpopup/core/ImageViewerPopupView;II)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 222
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getAnimationDuration()I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 223
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 224
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_34
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private setupPlaceholder()V
    .registers 4

    .line 119
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->placeholderView:Lcom/lxj/xpopup/widget/BlankView;

    iget-boolean v1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->isShowPlaceholder:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    goto :goto_9

    :cond_8
    const/4 v1, 0x4

    :goto_9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iget-boolean v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->isShowPlaceholder:Z

    if-eqz v0, :cond_53

    .line 121
    iget v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->placeholderColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    .line 122
    iget-object v2, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->placeholderView:Lcom/lxj/xpopup/widget/BlankView;

    iput v0, v2, Lcom/lxj/xpopup/widget/BlankView;->color:I

    .line 124
    :cond_19
    iget v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->placeholderRadius:I

    if-eq v0, v1, :cond_21

    .line 125
    iget-object v2, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->placeholderView:Lcom/lxj/xpopup/widget/BlankView;

    iput v0, v2, Lcom/lxj/xpopup/widget/BlankView;->radius:I

    .line 127
    :cond_21
    iget v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->placeholderStrokeColor:I

    if-eq v0, v1, :cond_29

    .line 128
    iget-object v1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->placeholderView:Lcom/lxj/xpopup/widget/BlankView;

    iput v0, v1, Lcom/lxj/xpopup/widget/BlankView;->strokeColor:I

    .line 130
    :cond_29
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->placeholderView:Lcom/lxj/xpopup/widget/BlankView;

    iget-object v1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/lxj/xpopup/util/XPopupUtils;->setWidthHeight(Landroid/view/View;II)V

    .line 131
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->placeholderView:Lcom/lxj/xpopup/widget/BlankView;

    iget-object v1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 132
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->placeholderView:Lcom/lxj/xpopup/widget/BlankView;

    iget-object v1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 133
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->placeholderView:Lcom/lxj/xpopup/widget/BlankView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_53
    return-void
.end method

.method private showPagerIndicator()V
    .registers 5

    .line 138
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->urls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2d

    .line 139
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/ImageViewerPopupView;->getRealPosition()I

    move-result v0

    .line 140
    iget-object v2, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->tv_pager_indicator:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->urls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :cond_2d
    iget-boolean v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->isShowSaveBtn:Z

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->tv_save:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_37
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .line 447
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->destroy()V

    .line 448
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->pager:Lcom/lxj/xpopup/widget/HackyViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    check-cast v1, Lcom/lxj/xpopup/core/ImageViewerPopupView$PhotoViewAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    const/4 v0, 0x0

    .line 449
    iput-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->imageLoader:Lcom/lxj/xpopup/interfaces/XPopupImageLoader;

    return-void
.end method

.method public dismiss()V
    .registers 3

    .line 299
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupStatus:Lcom/lxj/xpopup/enums/PopupStatus;

    sget-object v1, Lcom/lxj/xpopup/enums/PopupStatus;->Show:Lcom/lxj/xpopup/enums/PopupStatus;

    if-eq v0, v1, :cond_7

    return-void

    .line 300
    :cond_7
    sget-object v0, Lcom/lxj/xpopup/enums/PopupStatus;->Dismissing:Lcom/lxj/xpopup/enums/PopupStatus;

    iput-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupStatus:Lcom/lxj/xpopup/enums/PopupStatus;

    .line 301
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/ImageViewerPopupView;->doDismissAnimation()V

    return-void
.end method

.method public doDismissAnimation()V
    .registers 4

    .line 229
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->srcView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-nez v0, :cond_26

    .line 230
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->photoViewContainer:Lcom/lxj/xpopup/widget/PhotoViewContainer;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 231
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->doAfterDismiss()V

    .line 232
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->pager:Lcom/lxj/xpopup/widget/HackyViewPager;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->placeholderView:Lcom/lxj/xpopup/widget/BlankView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->customView:Landroid/view/View;

    if-eqz v0, :cond_25

    const/4 v1, 0x0

    .line 235
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 236
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->customView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_25
    return-void

    .line 240
    :cond_26
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->tv_pager_indicator:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->tv_save:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->pager:Lcom/lxj/xpopup/widget/HackyViewPager;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->photoViewContainer:Lcom/lxj/xpopup/widget/PhotoViewContainer;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/lxj/xpopup/widget/PhotoViewContainer;->isReleasing:Z

    .line 244
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->snapshotView:Lcom/lxj/xpopup/photoview/PhotoView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->snapshotView:Lcom/lxj/xpopup/photoview/PhotoView;

    new-instance v1, Lcom/lxj/xpopup/core/ImageViewerPopupView$3;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/core/ImageViewerPopupView$3;-><init>(Lcom/lxj/xpopup/core/ImageViewerPopupView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public doShowAnimation()V
    .registers 4

    .line 164
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->srcView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-nez v0, :cond_2a

    .line 165
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->photoViewContainer:Lcom/lxj/xpopup/widget/PhotoViewContainer;

    iget v2, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->bgColor:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 166
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->pager:Lcom/lxj/xpopup/widget/HackyViewPager;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 167
    invoke-direct {p0}, Lcom/lxj/xpopup/core/ImageViewerPopupView;->showPagerIndicator()V

    .line 168
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->photoViewContainer:Lcom/lxj/xpopup/widget/PhotoViewContainer;

    iput-boolean v1, v0, Lcom/lxj/xpopup/widget/PhotoViewContainer;->isReleasing:Z

    .line 169
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->doAfterShow()V

    .line 170
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->customView:Landroid/view/View;

    if-eqz v0, :cond_29

    const/high16 v2, 0x3f800000  # 1.0f

    .line 171
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 172
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->customView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_29
    return-void

    .line 176
    :cond_2a
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->photoViewContainer:Lcom/lxj/xpopup/widget/PhotoViewContainer;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/lxj/xpopup/widget/PhotoViewContainer;->isReleasing:Z

    .line 177
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->customView:Landroid/view/View;

    if-eqz v0, :cond_36

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    :cond_36
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->snapshotView:Lcom/lxj/xpopup/photoview/PhotoView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->doAfterShow()V

    .line 180
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->snapshotView:Lcom/lxj/xpopup/photoview/PhotoView;

    new-instance v1, Lcom/lxj/xpopup/core/ImageViewerPopupView$1;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/core/ImageViewerPopupView$1;-><init>(Lcom/lxj/xpopup/core/ImageViewerPopupView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected final getInnerLayoutId()I
    .registers 2

    .line 91
    sget v0, Lcom/lxj/xpopup/R$layout;->_xpopup_image_viewer_popup_view:I

    return v0
.end method

.method protected getRealPosition()I
    .registers 3

    .line 453
    iget-boolean v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->isInfinite:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->position:I

    iget-object v1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->urls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    goto :goto_10

    :cond_e
    iget v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->position:I

    :goto_10
    return v0
.end method

.method protected initPopupContent()V
    .registers 4

    .line 96
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->initPopupContent()V

    .line 97
    sget v0, Lcom/lxj/xpopup/R$id;->tv_pager_indicator:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->tv_pager_indicator:Landroid/widget/TextView;

    .line 98
    sget v0, Lcom/lxj/xpopup/R$id;->tv_save:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->tv_save:Landroid/widget/TextView;

    .line 99
    sget v0, Lcom/lxj/xpopup/R$id;->placeholderView:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lxj/xpopup/widget/BlankView;

    iput-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->placeholderView:Lcom/lxj/xpopup/widget/BlankView;

    .line 100
    sget v0, Lcom/lxj/xpopup/R$id;->photoViewContainer:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lxj/xpopup/widget/PhotoViewContainer;

    iput-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->photoViewContainer:Lcom/lxj/xpopup/widget/PhotoViewContainer;

    .line 101
    invoke-virtual {v0, p0}, Lcom/lxj/xpopup/widget/PhotoViewContainer;->setOnDragChangeListener(Lcom/lxj/xpopup/interfaces/OnDragChangeListener;)V

    .line 102
    sget v0, Lcom/lxj/xpopup/R$id;->pager:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lxj/xpopup/widget/HackyViewPager;

    iput-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->pager:Lcom/lxj/xpopup/widget/HackyViewPager;

    .line 103
    new-instance v0, Lcom/lxj/xpopup/core/ImageViewerPopupView$PhotoViewAdapter;

    invoke-direct {v0, p0}, Lcom/lxj/xpopup/core/ImageViewerPopupView$PhotoViewAdapter;-><init>(Lcom/lxj/xpopup/core/ImageViewerPopupView;)V

    .line 104
    iget-object v1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->pager:Lcom/lxj/xpopup/widget/HackyViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 105
    iget-object v1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->pager:Lcom/lxj/xpopup/widget/HackyViewPager;

    iget v2, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->position:I

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 106
    iget-object v1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->pager:Lcom/lxj/xpopup/widget/HackyViewPager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 107
    invoke-direct {p0}, Lcom/lxj/xpopup/core/ImageViewerPopupView;->addOrUpdateSnapshot()V

    .line 108
    iget-object v1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->pager:Lcom/lxj/xpopup/widget/HackyViewPager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 109
    iget-object v1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->pager:Lcom/lxj/xpopup/widget/HackyViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 110
    iget-boolean v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->isShowIndicator:Z

    const/16 v1, 0x8

    if-nez v0, :cond_68

    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->tv_pager_indicator:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    :cond_68
    iget-boolean v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->isShowSaveBtn:Z

    if-nez v0, :cond_72

    .line 112
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->tv_save:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_77

    .line 114
    :cond_72
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->tv_save:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_77
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 442
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->tv_save:Landroid/widget/TextView;

    if-ne p1, v0, :cond_7

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/ImageViewerPopupView;->save()V

    :cond_7
    return-void
.end method

.method protected onDismiss()V
    .registers 2

    .line 435
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onDismiss()V

    const/4 v0, 0x0

    .line 436
    iput-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->srcView:Landroid/widget/ImageView;

    .line 437
    iput-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->srcViewUpdateListener:Lcom/lxj/xpopup/interfaces/OnSrcViewUpdateListener;

    return-void
.end method

.method public onDragChange(IFF)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dy",
            "scale",
            "fraction"
        }
    .end annotation

    .line 427
    iget-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->tv_pager_indicator:Landroid/widget/TextView;

    const/high16 p2, 0x3f800000  # 1.0f

    sub-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 428
    iget-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->customView:Landroid/view/View;

    if-eqz p1, :cond_f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 429
    :cond_f
    iget-boolean p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->isShowSaveBtn:Z

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->tv_save:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 430
    :cond_18
    iget-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->photoViewContainer:Lcom/lxj/xpopup/widget/PhotoViewContainer;

    iget-object p2, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    const v0, 0x3f4ccccd  # 0.8f

    mul-float p3, p3, v0

    iget v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->bgColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p3, v0, v1}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public onRelease()V
    .registers 1

    .line 422
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/ImageViewerPopupView;->dismiss()V

    return-void
.end method

.method protected save()V
    .registers 3

    .line 460
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "STORAGE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/XPermission;->create(Landroid/content/Context;[Ljava/lang/String;)Lcom/lxj/xpopup/util/XPermission;

    move-result-object v0

    new-instance v1, Lcom/lxj/xpopup/core/ImageViewerPopupView$4;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/core/ImageViewerPopupView$4;-><init>(Lcom/lxj/xpopup/core/ImageViewerPopupView;)V

    .line 461
    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/util/XPermission;->callback(Lcom/lxj/xpopup/util/XPermission$SimpleCallback;)Lcom/lxj/xpopup/util/XPermission;

    move-result-object v0

    .line 469
    invoke-virtual {v0}, Lcom/lxj/xpopup/util/XPermission;->request()V

    return-void
.end method
