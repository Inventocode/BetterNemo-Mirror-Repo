.class public Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SmartRefreshLayout.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
.implements Landroidx/core/view/NestedScrollingParent;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;,
        Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;,
        Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$BounceRunnable;,
        Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;
    }
.end annotation


# static fields
.field protected static sFooterCreator:Lcom/scwang/smartrefresh/layout/api/DefaultRefreshFooterCreator;

.field protected static sHeaderCreator:Lcom/scwang/smartrefresh/layout/api/DefaultRefreshHeaderCreator;

.field protected static sRefreshInitializer:Lcom/scwang/smartrefresh/layout/api/DefaultRefreshInitializer;


# instance fields
.field protected animationRunnable:Ljava/lang/Runnable;

.field protected mCurrentVelocity:I

.field protected mDisableContentWhenLoading:Z

.field protected mDisableContentWhenRefresh:Z

.field protected mDragDirection:C

.field protected mDragRate:F

.field protected mEnableAutoLoadMore:Z

.field protected mEnableClipFooterWhenFixedBehind:Z

.field protected mEnableClipHeaderWhenFixedBehind:Z

.field protected mEnableFooterFollowWhenNoMoreData:Z

.field protected mEnableFooterTranslationContent:Z

.field protected mEnableHeaderTranslationContent:Z

.field protected mEnableLoadMore:Z

.field protected mEnableLoadMoreWhenContentNotFull:Z

.field protected mEnableOverScrollBounce:Z

.field protected mEnableOverScrollDrag:Z

.field protected mEnablePreviewInEditMode:Z

.field protected mEnablePureScrollMode:Z

.field protected mEnableRefresh:Z

.field protected mEnableScrollContentWhenLoaded:Z

.field protected mEnableScrollContentWhenRefreshed:Z

.field protected mFalsifyEvent:Landroid/view/MotionEvent;

.field protected mFixedFooterViewId:I

.field protected mFixedHeaderViewId:I

.field protected mFloorDuration:I

.field protected mFooterBackgroundColor:I

.field protected mFooterHeight:I

.field protected mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

.field protected mFooterInsetStart:I

.field protected mFooterLocked:Z

.field protected mFooterMaxDragRate:F

.field protected mFooterNeedTouchEventWhenLoading:Z

.field protected mFooterNoMoreData:Z

.field protected mFooterTranslationViewId:I

.field protected mFooterTriggerRate:F

.field protected mHandler:Landroid/os/Handler;

.field protected mHeaderBackgroundColor:I

.field protected mHeaderHeight:I

.field protected mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

.field protected mHeaderInsetStart:I

.field protected mHeaderMaxDragRate:F

.field protected mHeaderNeedTouchEventWhenRefreshing:Z

.field protected mHeaderTranslationViewId:I

.field protected mHeaderTriggerRate:F

.field protected mIsBeingDragged:Z

.field protected mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

.field protected mLastOpenTime:J

.field protected mLastSpinner:I

.field protected mLastTouchX:F

.field protected mLastTouchY:F

.field protected mListDelayedRunnable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/scwang/smartrefresh/layout/util/DelayedRunnable;",
            ">;"
        }
    .end annotation
.end field

.field protected mLoadMoreListener:Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;

.field protected mManualFooterTranslationContent:Z

.field protected mManualHeaderTranslationContent:Z

.field protected mManualLoadMore:Z

.field protected mMaximumVelocity:I

.field protected mMinimumVelocity:I

.field protected mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

.field protected mNestedInProgress:Z

.field protected mNestedParent:Landroidx/core/view/NestedScrollingParentHelper;

.field protected mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

.field protected mPaint:Landroid/graphics/Paint;

.field protected mParentOffsetInWindow:[I

.field protected mPrimaryColors:[I

.field protected mReboundDuration:I

.field protected mReboundInterpolator:Landroid/view/animation/Interpolator;

.field protected mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

.field protected mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

.field protected mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

.field protected mRefreshListener:Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;

.field protected mScreenHeightPixels:I

.field protected mScrollBoundaryDecider:Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;

.field protected mScroller:Landroid/widget/Scroller;

.field protected mSpinner:I

.field protected mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

.field protected mSuperDispatchTouchEvent:Z

.field protected mTotalUnconsumed:I

.field protected mTouchSlop:I

.field protected mTouchSpinner:I

.field protected mTouchX:F

.field protected mTouchY:F

.field protected mVelocityTracker:Landroid/view/VelocityTracker;

.field protected mVerticalPermit:Z

.field protected mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

.field protected reboundAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 226
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    .line 230
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0xfa

    .line 95
    iput p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFloorDuration:I

    .line 96
    iput p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mReboundDuration:I

    const/high16 p3, 0x3f000000  # 0.5f

    .line 102
    iput p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragRate:F

    const/16 p3, 0x6e

    .line 103
    iput-char p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragDirection:C

    const/4 p3, -0x1

    .line 106
    iput p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFixedHeaderViewId:I

    .line 107
    iput p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFixedFooterViewId:I

    .line 108
    iput p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderTranslationViewId:I

    .line 109
    iput p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterTranslationViewId:I

    const/4 p3, 0x1

    .line 122
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 124
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableClipHeaderWhenFixedBehind:Z

    .line 125
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableClipFooterWhenFixedBehind:Z

    .line 126
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    .line 127
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    .line 128
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    .line 129
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    .line 130
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollBounce:Z

    .line 131
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    .line 132
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableAutoLoadMore:Z

    .line 133
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePureScrollMode:Z

    .line 134
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableScrollContentWhenLoaded:Z

    .line 135
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableScrollContentWhenRefreshed:Z

    .line 136
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMoreWhenContentNotFull:Z

    .line 138
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDisableContentWhenRefresh:Z

    .line 139
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDisableContentWhenLoading:Z

    .line 140
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    .line 142
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualLoadMore:Z

    .line 144
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualHeaderTranslationContent:Z

    .line 145
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualFooterTranslationContent:Z

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 158
    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mParentOffsetInWindow:[I

    .line 159
    new-instance v2, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {v2, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    .line 160
    new-instance v2, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {v2, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedParent:Landroidx/core/view/NestedScrollingParentHelper;

    .line 166
    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->DefaultUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 168
    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    const/high16 v2, 0x40200000  # 2.5f

    .line 173
    iput v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    .line 174
    iput v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    const/high16 v2, 0x3f800000  # 1.0f

    .line 175
    iput v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderTriggerRate:F

    .line 176
    iput v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterTriggerRate:F

    .line 185
    new-instance v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;

    invoke-direct {v2, p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 192
    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    .line 201
    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const-wide/16 v2, 0x0

    .line 203
    iput-wide v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastOpenTime:J

    .line 205
    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderBackgroundColor:I

    .line 206
    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterBackgroundColor:I

    .line 211
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    .line 827
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mVerticalPermit:Z

    const/4 v2, 0x0

    .line 863
    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    .line 232
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 234
    new-instance v2, Lcom/scwang/smartrefresh/layout/util/DensityUtil;

    invoke-direct {v2}, Lcom/scwang/smartrefresh/layout/util/DensityUtil;-><init>()V

    .line 235
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 237
    new-instance v4, Landroid/widget/Scroller;

    invoke-direct {v4, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    .line 238
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 239
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScreenHeightPixels:I

    .line 240
    new-instance v4, Lcom/scwang/smartrefresh/layout/util/ViscousFluidInterpolator;

    invoke-direct {v4}, Lcom/scwang/smartrefresh/layout/util/ViscousFluidInterpolator;-><init>()V

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mReboundInterpolator:Landroid/view/animation/Interpolator;

    .line 241
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSlop:I

    .line 242
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mMinimumVelocity:I

    .line 243
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mMaximumVelocity:I

    const/high16 v3, 0x42700000  # 60.0f

    .line 245
    invoke-virtual {v2, v3}, Lcom/scwang/smartrefresh/layout/util/DensityUtil;->dip2px(F)I

    move-result v3

    iput v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    const/high16 v3, 0x42c80000  # 100.0f

    .line 246
    invoke-virtual {v2, v3}, Lcom/scwang/smartrefresh/layout/util/DensityUtil;->dip2px(F)I

    move-result v2

    iput v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    .line 248
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 250
    sget-object v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->sRefreshInitializer:Lcom/scwang/smartrefresh/layout/api/DefaultRefreshInitializer;

    if-eqz v2, :cond_e1

    .line 251
    invoke-interface {v2, p1, p0}, Lcom/scwang/smartrefresh/layout/api/DefaultRefreshInitializer;->initialize(Landroid/content/Context;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    .line 254
    :cond_e1
    sget-object v2, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 256
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableNestedScrolling:I

    invoke-virtual {p2}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p2, v2}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 257
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlDragRate:I

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragRate:F

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragRate:F

    .line 258
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlHeaderMaxDragRate:I

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    .line 259
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlFooterMaxDragRate:I

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    .line 260
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlHeaderTriggerRate:I

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderTriggerRate:F

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderTriggerRate:F

    .line 261
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlFooterTriggerRate:I

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterTriggerRate:F

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterTriggerRate:F

    .line 262
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableRefresh:I

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    .line 263
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlReboundDuration:I

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mReboundDuration:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mReboundDuration:I

    .line 264
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableLoadMore:I

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 265
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlHeaderHeight:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    .line 266
    sget v3, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlFooterHeight:I

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    .line 267
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlHeaderInsetStart:I

    iget v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderInsetStart:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderInsetStart:I

    .line 268
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlFooterInsetStart:I

    iget v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterInsetStart:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterInsetStart:I

    .line 269
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlDisableContentWhenRefresh:I

    iget-boolean v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDisableContentWhenRefresh:Z

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDisableContentWhenRefresh:Z

    .line 270
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlDisableContentWhenLoading:I

    iget-boolean v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDisableContentWhenLoading:Z

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDisableContentWhenLoading:Z

    .line 271
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableHeaderTranslationContent:I

    iget-boolean v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    .line 272
    sget v5, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableFooterTranslationContent:I

    iget-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    .line 273
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnablePreviewInEditMode:I

    iget-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    .line 274
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableAutoLoadMore:I

    iget-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableAutoLoadMore:Z

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableAutoLoadMore:Z

    .line 275
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableOverScrollBounce:I

    iget-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollBounce:Z

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollBounce:Z

    .line 276
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnablePureScrollMode:I

    iget-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePureScrollMode:Z

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePureScrollMode:Z

    .line 277
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableScrollContentWhenLoaded:I

    iget-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableScrollContentWhenLoaded:Z

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableScrollContentWhenLoaded:Z

    .line 278
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableScrollContentWhenRefreshed:I

    iget-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableScrollContentWhenRefreshed:Z

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableScrollContentWhenRefreshed:Z

    .line 279
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableLoadMoreWhenContentNotFull:I

    iget-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMoreWhenContentNotFull:Z

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMoreWhenContentNotFull:Z

    .line 280
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableFooterFollowWhenLoadFinished:I

    iget-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    .line 281
    sget v7, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableFooterFollowWhenNoMoreData:I

    invoke-virtual {p1, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    .line 282
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableClipHeaderWhenFixedBehind:I

    iget-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableClipHeaderWhenFixedBehind:Z

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableClipHeaderWhenFixedBehind:Z

    .line 283
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableClipFooterWhenFixedBehind:I

    iget-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableClipFooterWhenFixedBehind:Z

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableClipFooterWhenFixedBehind:Z

    .line 284
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableOverScrollDrag:I

    iget-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    .line 286
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlFixedHeaderViewId:I

    iget v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFixedHeaderViewId:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFixedHeaderViewId:I

    .line 287
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlFixedFooterViewId:I

    iget v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFixedFooterViewId:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFixedFooterViewId:I

    .line 288
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlHeaderTranslationViewId:I

    iget v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderTranslationViewId:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderTranslationViewId:I

    .line 289
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlFooterTranslationViewId:I

    iget v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterTranslationViewId:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterTranslationViewId:I

    .line 291
    iget-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualLoadMore:Z

    if-nez v6, :cond_241

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_23f

    goto :goto_241

    :cond_23f
    const/4 p2, 0x0

    goto :goto_242

    :cond_241
    :goto_241
    const/4 p2, 0x1

    :goto_242
    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualLoadMore:Z

    .line 292
    iget-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualHeaderTranslationContent:Z

    if-nez p2, :cond_251

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_24f

    goto :goto_251

    :cond_24f
    const/4 p2, 0x0

    goto :goto_252

    :cond_251
    :goto_251
    const/4 p2, 0x1

    :goto_252
    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualHeaderTranslationContent:Z

    .line 293
    iget-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualFooterTranslationContent:Z

    if-nez p2, :cond_261

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_25f

    goto :goto_261

    :cond_25f
    const/4 p2, 0x0

    goto :goto_262

    :cond_261
    :goto_261
    const/4 p2, 0x1

    :goto_262
    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualFooterTranslationContent:Z

    .line 295
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_26d

    sget-object p2, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlLayoutUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    goto :goto_26f

    :cond_26d
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    :goto_26f
    iput-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 296
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_27a

    sget-object p2, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlLayoutUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    goto :goto_27c

    :cond_27a
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    :goto_27c
    iput-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 298
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlAccentColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 299
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlPrimaryColor:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    if-eqz v2, :cond_29e

    if-eqz p2, :cond_297

    new-array v1, v1, [I

    aput v2, v1, v0

    aput p2, v1, p3

    .line 302
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mPrimaryColors:[I

    goto :goto_2a8

    :cond_297
    new-array p2, p3, [I

    aput v2, p2, v0

    .line 304
    iput-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mPrimaryColors:[I

    goto :goto_2a8

    :cond_29e
    if-eqz p2, :cond_2a8

    new-array v1, v1, [I

    aput v0, v1, v0

    aput p2, v1, p3

    .line 307
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mPrimaryColors:[I

    .line 320
    :cond_2a8
    :goto_2a8
    iget-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePureScrollMode:Z

    if-eqz p2, :cond_2b6

    iget-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualLoadMore:Z

    if-nez p2, :cond_2b6

    iget-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-nez p2, :cond_2b6

    .line 321
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 324
    :cond_2b6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$001(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .registers 2

    .line 86
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$101(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .registers 2

    .line 86
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$201(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .registers 2

    .line 86
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$301(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .registers 2

    .line 86
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$401(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .registers 2

    .line 86
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$501(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .registers 2

    .line 86
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static setDefaultRefreshFooterCreator(Lcom/scwang/smartrefresh/layout/api/DefaultRefreshFooterCreator;)V
    .registers 1

    .line 3086
    sput-object p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->sFooterCreator:Lcom/scwang/smartrefresh/layout/api/DefaultRefreshFooterCreator;

    return-void
.end method

.method public static setDefaultRefreshHeaderCreator(Lcom/scwang/smartrefresh/layout/api/DefaultRefreshHeaderCreator;)V
    .registers 1

    .line 3078
    sput-object p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->sHeaderCreator:Lcom/scwang/smartrefresh/layout/api/DefaultRefreshHeaderCreator;

    return-void
.end method

.method public static setDefaultRefreshInitializer(Lcom/scwang/smartrefresh/layout/api/DefaultRefreshInitializer;)V
    .registers 1

    .line 3094
    sput-object p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->sRefreshInitializer:Lcom/scwang/smartrefresh/layout/api/DefaultRefreshInitializer;

    return-void
.end method


# virtual methods
.method protected animSpinner(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;
    .registers 8

    .line 1489
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_4a

    .line 1490
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_c

    .line 1491
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1493
    :cond_c
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 1494
    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    int-to-long v0, p4

    .line 1495
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1496
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1497
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$3;

    invoke-direct {p3, p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$3;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1513
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$4;

    invoke-direct {p3, p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$4;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1519
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1521
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 1522
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    return-object p1

    :cond_4a
    return-object v1
.end method

.method protected animSpinnerBounce(F)V
    .registers 5

    .line 1532
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_68

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1d

    .line 1533
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v1, v2, :cond_13

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v1, v2, :cond_1d

    .line 1534
    :cond_13
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$BounceRunnable;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    invoke-direct {v0, p0, p1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$BounceRunnable;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;FI)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    goto :goto_68

    :cond_1d
    cmpg-float v0, p1, v0

    if-gez v0, :cond_58

    .line 1535
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v0, v1, :cond_4d

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 1536
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-nez v0, :cond_4d

    :cond_37
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableAutoLoadMore:Z

    if-eqz v0, :cond_58

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-nez v0, :cond_58

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 1537
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v0, v1, :cond_58

    .line 1538
    :cond_4d
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$BounceRunnable;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    neg-int v1, v1

    invoke-direct {v0, p0, p1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$BounceRunnable;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;FI)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    goto :goto_68

    .line 1539
    :cond_58
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-nez v0, :cond_68

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollBounce:Z

    if-eqz v0, :cond_68

    .line 1540
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$BounceRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$BounceRunnable;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;FI)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    :cond_68
    :goto_68
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 1681
    instance-of p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    return p1
.end method

.method public computeScroll()V
    .registers 5

    .line 836
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    .line 837
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 838
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    const/4 v1, 0x1

    if-gez v0, :cond_26

    .line 839
    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    if-nez v2, :cond_1e

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-eqz v2, :cond_26

    :cond_1e
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->canRefresh()Z

    move-result v2

    if-nez v2, :cond_38

    :cond_26
    if-lez v0, :cond_7b

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v2, :cond_30

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-eqz v2, :cond_7b

    :cond_30
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    .line 840
    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->canLoadMore()Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 841
    :cond_38
    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mVerticalPermit:Z

    if-eqz v2, :cond_75

    .line 843
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_53

    if-lez v0, :cond_4c

    .line 844
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v0

    neg-float v0, v0

    goto :goto_72

    :cond_4c
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v0

    goto :goto_72

    :cond_53
    const/high16 v2, 0x3f800000  # 1.0f

    .line 846
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v0, v3

    mul-float v0, v0, v2

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getDuration()I

    move-result v2

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->timePassed()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 848
    :goto_72
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animSpinnerBounce(F)V

    .line 850
    :cond_75
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_80

    .line 852
    :cond_7b
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mVerticalPermit:Z

    .line 854
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_80
    :goto_80
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 878
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v2, 0x6

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v6, v2, :cond_f

    const/4 v3, 0x1

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    :goto_10
    if-eqz v3, :cond_17

    .line 880
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    goto :goto_18

    :cond_17
    const/4 v4, -0x1

    .line 884
    :goto_18
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_20
    if-ge v8, v5, :cond_32

    if-ne v4, v8, :cond_25

    goto :goto_2f

    .line 887
    :cond_25
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    add-float/2addr v9, v13

    .line 888
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    add-float/2addr v12, v13

    :goto_2f
    add-int/lit8 v8, v8, 0x1

    goto :goto_20

    :cond_32
    if-eqz v3, :cond_36

    add-int/lit8 v5, v5, -0x1

    :cond_36
    int-to-float v3, v5

    div-float/2addr v9, v3

    div-float v8, v12, v3

    const/4 v3, 0x5

    if-eq v6, v2, :cond_3f

    if-ne v6, v3, :cond_4c

    .line 893
    :cond_3f
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v4, :cond_4c

    .line 895
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchY:F

    sub-float v5, v8, v5

    add-float/2addr v4, v5

    iput v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    .line 897
    :cond_4c
    iput v9, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchX:F

    .line 898
    iput v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchY:F

    .line 908
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedInProgress:Z

    const/4 v5, 0x2

    if-eqz v4, :cond_a8

    .line 909
    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    .line 910
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-ne v6, v5, :cond_a7

    .line 913
    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    if-ne v2, v3, :cond_a7

    .line 914
    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchX:F

    float-to-int v2, v2

    .line 915
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 916
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchX:F

    if-nez v3, :cond_6d

    goto :goto_6e

    :cond_6d
    move v11, v3

    :goto_6e
    int-to-float v5, v11

    div-float/2addr v4, v5

    .line 917
    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v0, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v5

    if-eqz v5, :cond_8c

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-lez v5, :cond_8c

    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v5, :cond_8c

    invoke-interface {v5}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->isSupportHorizontalDrag()Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 918
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v5, v4, v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onHorizontalDrag(FII)V

    goto :goto_a7

    .line 919
    :cond_8c
    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v5

    if-eqz v5, :cond_a7

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gez v5, :cond_a7

    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v5, :cond_a7

    invoke-interface {v5}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->isSupportHorizontalDrag()Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 920
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v5, v4, v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onHorizontalDrag(FII)V

    :cond_a7
    :goto_a7
    return v1

    .line 925
    :cond_a8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_34d

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    if-nez v4, :cond_b6

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-eqz v4, :cond_34d

    :cond_b6
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderNeedTouchEventWhenRefreshing:Z

    if-eqz v4, :cond_c8

    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v12, v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v12, :cond_c4

    iget-boolean v12, v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFinishing:Z

    if-eqz v12, :cond_c8

    :cond_c4
    iget-boolean v4, v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isHeader:Z

    if-nez v4, :cond_34d

    :cond_c8
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNeedTouchEventWhenLoading:Z

    if-eqz v4, :cond_dc

    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v12, v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v12, :cond_d6

    iget-boolean v12, v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFinishing:Z

    if-eqz v12, :cond_dc

    :cond_d6
    iget-boolean v4, v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFooter:Z

    if-eqz v4, :cond_dc

    goto/16 :goto_34d

    .line 932
    :cond_dc
    invoke-virtual {v0, v6}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->interceptAnimatorByAction(I)Z

    move-result v4

    if-nez v4, :cond_34c

    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v12, v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFinishing:Z

    if-nez v12, :cond_34c

    sget-object v12, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v4, v12, :cond_f0

    iget-boolean v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDisableContentWhenLoading:Z

    if-nez v13, :cond_34c

    :cond_f0
    sget-object v13, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v4, v13, :cond_fa

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDisableContentWhenRefresh:Z

    if-eqz v4, :cond_fa

    goto/16 :goto_34c

    :cond_fa
    const/16 v4, 0x68

    if-eqz v6, :cond_30d

    const/4 v2, 0x0

    if-eq v6, v11, :cond_2bf

    const/4 v3, 0x3

    if-eq v6, v5, :cond_108

    if-eq v6, v3, :cond_2da

    goto/16 :goto_308

    .line 976
    :cond_108
    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchX:F

    sub-float/2addr v9, v5

    .line 977
    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    sub-float v5, v8, v5

    .line 978
    iget-object v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 979
    iget-boolean v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    if-nez v6, :cond_1d7

    iget-char v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragDirection:C

    if-eq v6, v4, :cond_1d7

    iget-object v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-eqz v13, :cond_1d7

    const/16 v13, 0x76

    if-eq v6, v13, :cond_15b

    .line 980
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v14, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSlop:I

    int-to-float v14, v14

    cmpl-float v6, v6, v14

    if-ltz v6, :cond_13c

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v14

    cmpg-float v6, v6, v14

    if-gez v6, :cond_13c

    goto :goto_15b

    .line 1002
    :cond_13c
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSlop:I

    int-to-float v12, v12

    cmpl-float v6, v6, v12

    if-ltz v6, :cond_1d7

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v12

    cmpl-float v6, v6, v12

    if-lez v6, :cond_1d7

    iget-char v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragDirection:C

    if-eq v6, v13, :cond_1d7

    .line 1003
    iput-char v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragDirection:C

    goto/16 :goto_1d7

    .line 981
    :cond_15b
    :goto_15b
    iput-char v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragDirection:C

    cmpl-float v4, v5, v7

    if-lez v4, :cond_17f

    .line 982
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-ltz v4, :cond_175

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v4, :cond_16d

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    if-eqz v4, :cond_17f

    :cond_16d
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v4}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->canRefresh()Z

    move-result v4

    if-eqz v4, :cond_17f

    .line 983
    :cond_175
    iput-boolean v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    .line 984
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSlop:I

    int-to-float v4, v4

    sub-float v4, v8, v4

    iput v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    goto :goto_1a7

    :cond_17f
    cmpg-float v4, v5, v7

    if-gez v4, :cond_1a7

    .line 985
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gtz v4, :cond_19f

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v4, :cond_18f

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-eqz v4, :cond_1a7

    :cond_18f
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v4, v12, :cond_197

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    if-nez v4, :cond_19f

    :cond_197
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v4}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->canLoadMore()Z

    move-result v4

    if-eqz v4, :cond_1a7

    .line 986
    :cond_19f
    iput-boolean v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    .line 987
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSlop:I

    int-to-float v4, v4

    add-float/2addr v4, v8

    iput v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    .line 989
    :cond_1a7
    :goto_1a7
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v4, :cond_1d7

    .line 990
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    sub-float v5, v8, v4

    .line 991
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSuperDispatchTouchEvent:Z

    if-eqz v4, :cond_1b9

    .line 992
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 993
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 995
    :cond_1b9
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gtz v6, :cond_1c9

    if-nez v6, :cond_1c6

    cmpl-float v6, v5, v7

    if-lez v6, :cond_1c6

    goto :goto_1c9

    :cond_1c6
    sget-object v6, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    goto :goto_1cb

    :cond_1c9
    :goto_1c9
    sget-object v6, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    :goto_1cb
    invoke-interface {v4, v6}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 996
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1d7

    .line 999
    invoke-interface {v4, v11}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1006
    :cond_1d7
    :goto_1d7
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v4, :cond_2ad

    float-to-int v4, v5

    .line 1007
    iget v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSpinner:I

    add-int/2addr v4, v6

    .line 1008
    iget-object v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v12, v6, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isHeader:Z

    if-eqz v12, :cond_1eb

    if-ltz v4, :cond_1f5

    iget v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastSpinner:I

    if-ltz v12, :cond_1f5

    :cond_1eb
    iget-boolean v6, v6, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFooter:Z

    if-eqz v6, :cond_2a8

    if-gtz v4, :cond_1f5

    iget v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastSpinner:I

    if-lez v6, :cond_2a8

    .line 1009
    :cond_1f5
    iput v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastSpinner:I

    .line 1010
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    .line 1011
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    if-nez v1, :cond_218

    const/16 v16, 0x0

    .line 1012
    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchX:F

    add-float v17, v1, v9

    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    const/16 v19, 0x0

    move-wide/from16 v12, v20

    move-wide/from16 v14, v20

    move/from16 v18, v1

    invoke-static/range {v12 .. v19}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    .line 1013
    invoke-super {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_218
    const/16 v16, 0x2

    .line 1015
    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchX:F

    add-float v17, v1, v9

    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    int-to-float v6, v4

    add-float v18, v1, v6

    const/16 v19, 0x0

    move-wide/from16 v12, v20

    move-wide/from16 v14, v20

    invoke-static/range {v12 .. v19}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 1016
    invoke-super {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1017
    iget-boolean v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    if-eqz v6, :cond_241

    iget v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_241

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gez v5, :cond_241

    .line 1018
    iput-boolean v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    :cond_241
    if-lez v4, :cond_261

    .line 1020
    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v5, :cond_24b

    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    if-eqz v5, :cond_261

    :cond_24b
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v5}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->canRefresh()Z

    move-result v5

    if-eqz v5, :cond_261

    .line 1021
    iput v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchY:F

    iput v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    .line 1022
    iput v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSpinner:I

    .line 1023
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v5, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v4, v5}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_282

    :cond_261
    if-gez v4, :cond_281

    .line 1024
    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v5, :cond_26b

    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-eqz v5, :cond_281

    :cond_26b
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v5}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->canLoadMore()Z

    move-result v5

    if-eqz v5, :cond_281

    .line 1025
    iput v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchY:F

    iput v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    .line 1026
    iput v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSpinner:I

    .line 1027
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v5, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v4, v5}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_282

    :cond_281
    move v10, v4

    .line 1029
    :goto_282
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v5, v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isHeader:Z

    if-eqz v5, :cond_28a

    if-ltz v10, :cond_290

    :cond_28a
    iget-boolean v4, v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFooter:Z

    if-eqz v4, :cond_298

    if-lez v10, :cond_298

    .line 1030
    :cond_290
    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eqz v1, :cond_297

    .line 1031
    invoke-virtual {v0, v7}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->moveSpinnerInfinitely(F)V

    :cond_297
    return v11

    .line 1034
    :cond_298
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_2a4

    .line 1035
    iput-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    .line 1036
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1037
    invoke-super {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1039
    :cond_2a4
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    move v4, v10

    :cond_2a8
    int-to-float v1, v4

    .line 1041
    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->moveSpinnerInfinitely(F)V

    return v11

    .line 1043
    :cond_2ad
    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    if-eqz v2, :cond_308

    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v2, v5, v2

    if-lez v2, :cond_308

    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gez v2, :cond_308

    .line 1044
    iput-boolean v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    goto :goto_308

    .line 1048
    :cond_2bf
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1049
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mMaximumVelocity:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1050
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mCurrentVelocity:I

    .line 1051
    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->startFlingIfNeed(Ljava/lang/Float;)Z

    .line 1053
    :cond_2da
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    const/16 v3, 0x6e

    .line 1054
    iput-char v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragDirection:C

    .line 1055
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_2fe

    .line 1056
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 1057
    iput-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    .line 1058
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 1059
    iget v7, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchX:F

    const/4 v9, 0x0

    move-wide v2, v4

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 1060
    invoke-super {v0, v2}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1061
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1063
    :cond_2fe
    invoke-virtual/range {p0 .. p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->overSpinner()V

    .line 1064
    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_308

    .line 1065
    iput-boolean v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    return v11

    .line 1071
    :cond_308
    :goto_308
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 953
    :cond_30d
    iput v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mCurrentVelocity:I

    .line 954
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 955
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v11}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 959
    iput v9, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchX:F

    .line 960
    iput v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    .line 961
    iput v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastSpinner:I

    .line 962
    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    iput v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSpinner:I

    .line 963
    iput-boolean v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    .line 965
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSuperDispatchTouchEvent:Z

    .line 966
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v6, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v5, v6, :cond_344

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x5

    div-int/2addr v6, v2

    int-to-float v2, v6

    cmpg-float v2, v5, v2

    if-gez v2, :cond_344

    .line 967
    iput-char v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragDirection:C

    .line 968
    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSuperDispatchTouchEvent:Z

    return v1

    .line 970
    :cond_344
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-eqz v2, :cond_34b

    .line 972
    invoke-interface {v2, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->onActionDown(Landroid/view/MotionEvent;)V

    :cond_34b
    return v11

    :cond_34c
    :goto_34c
    return v10

    .line 929
    :cond_34d
    :goto_34d
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 15

    .line 772
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 773
    :goto_a
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    const/4 v2, 0x1

    if-eqz v1, :cond_a9

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, p2, :cond_a9

    .line 774
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v1

    if-eqz v1, :cond_a8

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    if-nez v1, :cond_29

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_29

    goto/16 :goto_a8

    :cond_29
    if-eqz v0, :cond_a9

    .line 778
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    add-int/2addr v1, v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 779
    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderBackgroundColor:I

    if-eqz v3, :cond_80

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    if-eqz v4, :cond_80

    .line 780
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 781
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v3

    sget-object v4, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Scale:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v3, v4, :cond_59

    .line 782
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    goto :goto_6a

    .line 783
    :cond_59
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v3

    sget-object v4, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v3, v4, :cond_6a

    .line 784
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    add-int/2addr v1, v3

    .line 786
    :cond_6a
    :goto_6a
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v5, v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v6, v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v7, v3

    int-to-float v8, v1

    iget-object v9, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 788
    :cond_80
    iget-boolean v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableClipHeaderWhenFixedBehind:Z

    if-eqz v3, :cond_a9

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v3

    sget-object v4, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v3, v4, :cond_a9

    .line 789
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 790
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 791
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 792
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    :cond_a8
    :goto_a8
    return v2

    .line 797
    :cond_a9
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v1, :cond_147

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, p2, :cond_147

    .line 798
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v1

    if-eqz v1, :cond_146

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    if-nez v1, :cond_c7

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_c7

    goto/16 :goto_146

    :cond_c7
    if-eqz v0, :cond_147

    .line 802
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    add-int/2addr v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 803
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterBackgroundColor:I

    if-eqz v1, :cond_11e

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_11e

    .line 804
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 805
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v1

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Scale:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v1, v2, :cond_f7

    .line 806
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_108

    .line 807
    :cond_f7
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v1

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v1, v2, :cond_108

    .line 808
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    add-int/2addr v0, v1

    .line 810
    :cond_108
    :goto_108
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v3, v1

    int-to-float v4, v0

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v5, v1

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v6, v1

    iget-object v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 812
    :cond_11e
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableClipFooterWhenFixedBehind:Z

    if-eqz v1, :cond_147

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v1

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v1, v2, :cond_147

    .line 813
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 814
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 815
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 816
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    :cond_146
    :goto_146
    return v2

    .line 822
    :cond_147
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public finishLoadMore()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .registers 5

    .line 2643
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastOpenTime:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    const/16 v0, 0x12c

    rsub-int v1, v1, 0x12c

    const/4 v2, 0x0

    .line 2644
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore(I)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public finishLoadMore(I)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2740
    invoke-virtual {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore(IZZ)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public finishLoadMore(IZZ)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .registers 5

    .line 2765
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;

    invoke-direct {v0, p0, p2, p3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;ZZ)V

    if-gtz p1, :cond_a

    const-wide/16 p1, 0x1

    goto :goto_b

    :cond_a
    int-to-long p1, p1

    :goto_b
    invoke-virtual {p0, v0, p1, p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p0
.end method

.method public finishLoadMoreWithNoMoreData()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .registers 5

    .line 2865
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastOpenTime:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    const/16 v0, 0x12c

    rsub-int v1, v1, 0x12c

    const/4 v2, 0x0

    .line 2866
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore(IZZ)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public finishRefresh()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .registers 5

    .line 2632
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastOpenTime:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    const/16 v0, 0x12c

    rsub-int v1, v1, 0x12c

    const/4 v2, 0x0

    .line 2633
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh(I)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public finishRefresh(I)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .registers 3

    const/4 v0, 0x1

    .line 2655
    invoke-virtual {p0, p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh(IZ)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public finishRefresh(IZ)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .registers 4

    .line 2679
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;

    invoke-direct {v0, p0, p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Z)V

    if-gtz p1, :cond_a

    const-wide/16 p1, 0x1

    goto :goto_b

    :cond_a
    int-to-long p1, p1

    :goto_b
    invoke-virtual {p0, v0, p1, p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p0
.end method

.method public bridge synthetic finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .registers 2

    .line 84
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic finishRefresh(I)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .registers 2

    .line 84
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh(I)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 84
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->generateDefaultLayoutParams()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;
    .registers 3

    .line 1686
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 84
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 84
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;
    .registers 4

    .line 1697
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;
    .registers 3

    .line 1691
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public bridge synthetic getLayout()Landroid/view/ViewGroup;
    .registers 2

    .line 84
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->getLayout()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public getLayout()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .registers 1

    return-object p0
.end method

.method public getNestedScrollAxes()I
    .registers 2

    .line 1735
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedParent:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public getRefreshFooter()Lcom/scwang/smartrefresh/layout/api/RefreshFooter;
    .registers 3

    .line 2451
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v1, v0, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    if-eqz v1, :cond_9

    check-cast v0, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getRefreshHeader()Lcom/scwang/smartrefresh/layout/api/RefreshHeader;
    .registers 3

    .line 2462
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v1, v0, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    if-eqz v1, :cond_9

    check-cast v0, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getState()Lcom/scwang/smartrefresh/layout/constant/RefreshState;
    .registers 2

    .line 2473
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    return-object v0
.end method

.method protected interceptAnimatorByAction(I)Z
    .registers 5

    const/4 v0, 0x1

    if-nez p1, :cond_35

    .line 1122
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz p1, :cond_33

    .line 1123
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v2, p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFinishing:Z

    if-nez v2, :cond_32

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevelReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne p1, v2, :cond_13

    goto :goto_32

    .line 1126
    :cond_13
    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownCanceled:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne p1, v2, :cond_1f

    .line 1127
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {p1, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_2a

    .line 1128
    :cond_1f
    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne p1, v2, :cond_2a

    .line 1129
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {p1, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 1131
    :cond_2a
    :goto_2a
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1132
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    goto :goto_33

    :cond_32
    :goto_32
    return v0

    .line 1134
    :cond_33
    :goto_33
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    .line 1136
    :cond_35
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    return v0
.end method

.method protected isEnableRefreshOrLoadMore(Z)Z
    .registers 2

    if-eqz p1, :cond_8

    .line 1353
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePureScrollMode:Z

    if-nez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method protected isEnableTranslationContent(ZLcom/scwang/smartrefresh/layout/api/RefreshInternal;)Z
    .registers 3

    if-nez p1, :cond_13

    .line 1343
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePureScrollMode:Z

    if-nez p1, :cond_13

    if-eqz p2, :cond_13

    invoke-interface {p2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object p1

    sget-object p2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne p1, p2, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    .line 1849
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method protected moveSpinnerInfinitely(F)V
    .registers 20

    move-object/from16 v0, p0

    .line 1602
    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedInProgress:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMoreWhenContentNotFull:Z

    if-nez v1, :cond_19

    cmpg-float v1, p1, v2

    if-gez v1, :cond_19

    .line 1603
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->canLoadMore()Z

    move-result v1

    if-nez v1, :cond_19

    const/4 v1, 0x0

    goto :goto_1b

    :cond_19
    move/from16 v1, p1

    .line 1610
    :goto_1b
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const/4 v5, 0x1

    if-ne v3, v4, :cond_36

    cmpl-float v4, v1, v2

    if-lez v4, :cond_36

    .line 1611
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    float-to-int v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-interface {v3, v4, v5}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto/16 :goto_19c

    .line 1612
    :cond_36
    sget-object v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const/high16 v6, 0x3f800000  # 1.0f

    const-wide/16 v7, 0x0

    const-wide/high16 v9, 0x4059000000000000L  # 100.0

    const-wide/high16 v11, 0x3ff0000000000000L  # 1.0

    if-ne v3, v4, :cond_9a

    cmpl-float v4, v1, v2

    if-ltz v4, :cond_9a

    .line 1613
    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    int-to-float v4, v3

    cmpg-float v4, v1, v4

    if-gez v4, :cond_55

    .line 1614
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    float-to-int v4, v1

    invoke-interface {v3, v4, v5}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto/16 :goto_19c

    .line 1616
    :cond_55
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    sub-float/2addr v4, v6

    int-to-float v3, v3

    mul-float v4, v4, v3

    float-to-double v3, v4

    .line 1617
    iget v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScreenHeightPixels:I

    mul-int/lit8 v6, v6, 0x4

    div-int/lit8 v6, v6, 0x3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v13

    invoke-static {v6, v13}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    sub-int/2addr v6, v13

    int-to-double v14, v6

    int-to-float v6, v13

    sub-float v6, v1, v6

    .line 1618
    iget v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragRate:F

    mul-float v6, v6, v13

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-double v5, v6

    move-wide/from16 v16, v3

    neg-double v2, v5

    cmpl-double v4, v14, v7

    if-nez v4, :cond_82

    move-wide v14, v11

    :cond_82
    div-double/2addr v2, v14

    .line 1619
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v11, v2

    mul-double v3, v16, v11

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 1620
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    double-to-int v2, v2

    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    add-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-interface {v4, v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto/16 :goto_19c

    :cond_9a
    cmpg-float v4, v1, v2

    if-gez v4, :cond_11c

    .line 1622
    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v3, v2, :cond_c2

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v2, :cond_b2

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v2, :cond_b2

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 1623
    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v2

    if-nez v2, :cond_c2

    :cond_b2
    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableAutoLoadMore:Z

    if-eqz v2, :cond_11c

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-nez v2, :cond_11c

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 1624
    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v2

    if-eqz v2, :cond_11c

    .line 1625
    :cond_c2
    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    neg-int v3, v2

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_d3

    .line 1626
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    float-to-int v3, v1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto/16 :goto_19c

    .line 1628
    :cond_d3
    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    sub-float/2addr v3, v6

    int-to-float v2, v2

    mul-float v3, v3, v2

    float-to-double v2, v3

    .line 1629
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScreenHeightPixels:I

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    sub-int/2addr v4, v5

    int-to-double v14, v4

    int-to-float v4, v5

    add-float/2addr v4, v1

    .line 1630
    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragRate:F

    mul-float v4, v4, v5

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    neg-float v4, v4

    float-to-double v4, v4

    neg-double v11, v4

    cmpl-double v6, v14, v7

    if-nez v6, :cond_100

    const-wide/high16 v14, 0x3ff0000000000000L  # 1.0

    :cond_100
    div-double/2addr v11, v14

    .line 1631
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L  # 1.0

    sub-double v11, v8, v6

    mul-double v2, v2, v11

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    neg-double v2, v2

    .line 1632
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    double-to-int v2, v2

    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-interface {v4, v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto/16 :goto_19c

    :cond_11c
    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_15e

    .line 1635
    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    float-to-double v2, v2

    .line 1636
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScreenHeightPixels:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v4, v4

    .line 1637
    iget v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragRate:F

    mul-float v6, v6, v1

    const/4 v11, 0x0

    invoke-static {v11, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-double v11, v6

    neg-double v14, v11

    cmpl-double v6, v4, v7

    if-nez v6, :cond_147

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    :cond_147
    div-double/2addr v14, v4

    .line 1638
    invoke-static {v9, v10, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L  # 1.0

    sub-double v4, v6, v4

    mul-double v2, v2, v4

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 1639
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    double-to-int v2, v2

    const/4 v3, 0x1

    invoke-interface {v4, v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_19c

    .line 1641
    :cond_15e
    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    float-to-double v2, v2

    .line 1642
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScreenHeightPixels:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v4, v4

    .line 1643
    iget v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragRate:F

    mul-float v6, v6, v1

    const/4 v11, 0x0

    invoke-static {v11, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    neg-float v6, v6

    float-to-double v11, v6

    neg-double v14, v11

    cmpl-double v6, v4, v7

    if-nez v6, :cond_185

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    :cond_185
    div-double/2addr v14, v4

    .line 1644
    invoke-static {v9, v10, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L  # 1.0

    sub-double v4, v6, v4

    mul-double v2, v2, v4

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    neg-double v2, v2

    .line 1645
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    double-to-int v2, v2

    const/4 v3, 0x1

    invoke-interface {v4, v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 1647
    :goto_19c
    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableAutoLoadMore:Z

    if-eqz v2, :cond_1dd

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-nez v2, :cond_1dd

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v2

    if-eqz v2, :cond_1dd

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1dd

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v1, v2, :cond_1dd

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v1, v2, :cond_1dd

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v1, v2, :cond_1dd

    .line 1651
    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDisableContentWhenLoading:Z

    if-eqz v1, :cond_1ce

    const/4 v1, 0x0

    .line 1652
    iput-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    .line 1653
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    neg-int v2, v2

    invoke-interface {v1, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    :cond_1ce
    const/4 v1, 0x0

    .line 1655
    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setStateDirectLoading(Z)V

    .line 1659
    new-instance v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$5;

    invoke-direct {v1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$5;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V

    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mReboundDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1dd
    return-void
.end method

.method protected notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V
    .registers 6

    .line 1167
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v0, p1, :cond_1e

    .line 1169
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    .line 1170
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    .line 1171
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    .line 1172
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    .line 1173
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    if-eqz v1, :cond_13

    .line 1175
    invoke-interface {v1, p0, v0, p1}, Lcom/scwang/smartrefresh/layout/listener/OnStateChangedListener;->onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    :cond_13
    if-eqz v2, :cond_18

    .line 1178
    invoke-interface {v2, p0, v0, p1}, Lcom/scwang/smartrefresh/layout/listener/OnStateChangedListener;->onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    :cond_18
    if-eqz v3, :cond_24

    .line 1181
    invoke-interface {v3, p0, v0, p1}, Lcom/scwang/smartrefresh/layout/listener/OnStateChangedListener;->onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto :goto_24

    .line 1183
    :cond_1e
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq p1, v0, :cond_24

    .line 1187
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    :cond_24
    :goto_24
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 7

    .line 392
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 395
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_12c

    .line 397
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_14

    .line 398
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    .line 401
    :cond_14
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mListDelayedRunnable:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 402
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scwang/smartrefresh/layout/util/DelayedRunnable;

    .line 403
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    iget-wide v4, v2, Lcom/scwang/smartrefresh/layout/util/DelayedRunnable;->delayMillis:J

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1d

    .line 405
    :cond_31
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mListDelayedRunnable:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 406
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mListDelayedRunnable:Ljava/util/List;

    .line 409
    :cond_38
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-nez v0, :cond_58

    .line 410
    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->sHeaderCreator:Lcom/scwang/smartrefresh/layout/api/DefaultRefreshHeaderCreator;

    if-eqz v0, :cond_4c

    .line 411
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Lcom/scwang/smartrefresh/layout/api/DefaultRefreshHeaderCreator;->createRefreshHeader(Landroid/content/Context;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setRefreshHeader(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    goto :goto_58

    .line 413
    :cond_4c
    new-instance v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setRefreshHeader(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 416
    :cond_58
    :goto_58
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    const/4 v2, 0x0

    if-nez v0, :cond_7e

    .line 417
    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->sFooterCreator:Lcom/scwang/smartrefresh/layout/api/DefaultRefreshFooterCreator;

    if-eqz v0, :cond_6d

    .line 418
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v0, v3, p0}, Lcom/scwang/smartrefresh/layout/api/DefaultRefreshFooterCreator;->createRefreshFooter(Landroid/content/Context;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setRefreshFooter(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    goto :goto_8c

    .line 420
    :cond_6d
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 421
    new-instance v3, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setRefreshFooter(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 422
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    goto :goto_8c

    .line 425
    :cond_7e
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v0, :cond_89

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualLoadMore:Z

    if-nez v0, :cond_87

    goto :goto_89

    :cond_87
    const/4 v0, 0x0

    goto :goto_8a

    :cond_89
    :goto_89
    const/4 v0, 0x1

    :goto_8a
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 428
    :goto_8c
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-nez v0, :cond_b9

    .line 429
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_95
    if-ge v3, v0, :cond_b9

    .line 430
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 431
    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v5, :cond_a5

    invoke-interface {v5}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v5

    if-eq v4, v5, :cond_b6

    :cond_a5
    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v5, :cond_af

    .line 432
    invoke-interface {v5}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v5

    if-eq v4, v5, :cond_b6

    .line 433
    :cond_af
    new-instance v5, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;

    invoke-direct {v5, v4}, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;-><init>(Landroid/view/View;)V

    iput-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    :cond_b6
    add-int/lit8 v3, v3, 0x1

    goto :goto_95

    .line 437
    :cond_b9
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-nez v0, :cond_f1

    const/high16 v0, 0x41a00000  # 20.0f

    .line 438
    invoke-static {v0}, Lcom/scwang/smartrefresh/layout/util/DensityUtil;->dp2px(F)I

    move-result v3

    .line 439
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v5, -0x9a00

    .line 440
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v5, 0x11

    .line 441
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 442
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 443
    sget v0, Lcom/scwang/smartrefresh/layout/R$string;->srl_content_empty:I

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, -0x1

    .line 444
    invoke-super {p0, v4, v0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 445
    new-instance v0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;

    invoke-direct {v0, v4}, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    .line 446
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 449
    :cond_f1
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFixedHeaderViewId:I

    if-lez v0, :cond_fa

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_fb

    :cond_fa
    move-object v0, v1

    .line 450
    :goto_fb
    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFixedFooterViewId:I

    if-lez v3, :cond_103

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 452
    :cond_103
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScrollBoundaryDecider:Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;

    invoke-interface {v3, v4}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->setScrollBoundaryDecider(Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;)V

    .line 453
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMoreWhenContentNotFull:Z

    invoke-interface {v3, v4}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->setEnableLoadMoreWhenContentNotFull(Z)V

    .line 454
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v3, v4, v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->setUpComponent(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;Landroid/view/View;Landroid/view/View;)V

    .line 456
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eqz v0, :cond_12c

    .line 457
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 458
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    iput v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderTranslationViewId:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterTranslationViewId:I

    invoke-interface {v0, v2, v1, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->moveSpinner(III)V

    .line 488
    :cond_12c
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mPrimaryColors:[I

    if-eqz v0, :cond_140

    .line 489
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v1, :cond_137

    .line 490
    invoke-interface {v1, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->setPrimaryColors([I)V

    .line 492
    :cond_137
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_140

    .line 493
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mPrimaryColors:[I

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->setPrimaryColors([I)V

    .line 498
    :cond_140
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-eqz v0, :cond_14b

    .line 499
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 501
    :cond_14b
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_160

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v0

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-eq v0, v1, :cond_160

    .line 502
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 504
    :cond_160
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_175

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v0

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-eq v0, v1, :cond_175

    .line 505
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_175
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .line 739
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 740
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 741
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 742
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 743
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 744
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    .line 746
    :cond_19
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mListDelayedRunnable:Ljava/util/List;

    if-eqz v0, :cond_22

    .line 747
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 748
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mListDelayedRunnable:Ljava/util/List;

    .line 750
    :cond_22
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualLoadMore:Z

    .line 752
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    .line 753
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_39

    .line 754
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 755
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 756
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 757
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    :cond_39
    return-void
.end method

.method public onFinishInflate()V
    .registers 12

    .line 336
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 337
    invoke-super {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_9e

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    :goto_f
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v4, v0, :cond_33

    .line 345
    invoke-super {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 346
    invoke-static {v9}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->isContentView(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_24

    if-lt v6, v7, :cond_21

    if-ne v4, v8, :cond_24

    :cond_21
    move v5, v4

    const/4 v6, 0x2

    goto :goto_30

    .line 349
    :cond_24
    instance-of v7, v9, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-nez v7, :cond_30

    if-ge v6, v8, :cond_30

    if-lez v4, :cond_2e

    const/4 v6, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v6, 0x0

    :goto_2f
    move v5, v4

    :cond_30
    :goto_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_33
    if-ltz v5, :cond_4d

    .line 358
    new-instance v4, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;

    invoke-super {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-ne v5, v8, :cond_48

    if-ne v0, v1, :cond_46

    const/4 v1, 0x0

    goto :goto_4f

    :cond_46
    const/4 v1, 0x0

    goto :goto_4e

    :cond_48
    if-ne v0, v7, :cond_4d

    const/4 v1, -0x1

    const/4 v7, 0x1

    goto :goto_4f

    :cond_4d
    const/4 v1, -0x1

    :goto_4e
    const/4 v7, -0x1

    :goto_4f
    const/4 v4, 0x0

    :goto_50
    if-ge v4, v0, :cond_9d

    .line 370
    invoke-super {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eq v4, v1, :cond_8b

    if-eq v4, v7, :cond_65

    if-ne v1, v2, :cond_65

    .line 371
    iget-object v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-nez v6, :cond_65

    instance-of v6, v5, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    if-eqz v6, :cond_65

    goto :goto_8b

    :cond_65
    if-eq v4, v7, :cond_6d

    if-ne v7, v2, :cond_9a

    .line 373
    instance-of v6, v5, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    if-eqz v6, :cond_9a

    .line 374
    :cond_6d
    iget-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v6, :cond_78

    iget-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualLoadMore:Z

    if-nez v6, :cond_76

    goto :goto_78

    :cond_76
    const/4 v6, 0x0

    goto :goto_79

    :cond_78
    :goto_78
    const/4 v6, 0x1

    :goto_79
    iput-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 375
    instance-of v6, v5, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    if-eqz v6, :cond_82

    check-cast v5, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    goto :goto_88

    :cond_82
    new-instance v6, Lcom/scwang/smartrefresh/layout/impl/RefreshFooterWrapper;

    invoke-direct {v6, v5}, Lcom/scwang/smartrefresh/layout/impl/RefreshFooterWrapper;-><init>(Landroid/view/View;)V

    move-object v5, v6

    :goto_88
    iput-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    goto :goto_9a

    .line 372
    :cond_8b
    :goto_8b
    instance-of v6, v5, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    if-eqz v6, :cond_92

    check-cast v5, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    goto :goto_98

    :cond_92
    new-instance v6, Lcom/scwang/smartrefresh/layout/impl/RefreshHeaderWrapper;

    invoke-direct {v6, v5}, Lcom/scwang/smartrefresh/layout/impl/RefreshHeaderWrapper;-><init>(Landroid/view/View;)V

    move-object v5, v6

    :goto_98
    iput-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    :cond_9a
    :goto_9a
    add-int/lit8 v4, v4, 0x1

    goto :goto_50

    :cond_9d
    return-void

    .line 339
    :cond_9e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "最多只支持3个子View，Most only support three sub view"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .registers 15

    .line 660
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    .line 661
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    .line 662
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 664
    invoke-super {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 p4, 0x0

    const/4 p5, 0x0

    :goto_11
    if-ge p5, p3, :cond_149

    .line 665
    invoke-super {p0, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 667
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_145

    sget v1, Lcom/scwang/smartrefresh/layout/R$string;->srl_component_falsify:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_29

    goto/16 :goto_145

    .line 671
    :cond_29
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    const/4 v2, 0x1

    if-eqz v1, :cond_7c

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, v0, :cond_7c

    .line 672
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_4c

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    if-eqz v1, :cond_4c

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v1

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v1, :cond_4c

    const/4 v1, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v1, 0x0

    .line 673
    :goto_4d
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v3

    .line 674
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    .line 675
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, p1

    .line 676
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, p2

    .line 677
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v5

    .line 678
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    if-eqz v1, :cond_79

    .line 679
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    iget-object v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {p0, v1, v8}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableTranslationContent(ZLcom/scwang/smartrefresh/layout/api/RefreshInternal;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 680
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    add-int/2addr v4, v1

    add-int/2addr v7, v1

    .line 684
    :cond_79
    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 686
    :cond_7c
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v1, :cond_cb

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, v0, :cond_cb

    .line 687
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_9a

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    if-eqz v1, :cond_9a

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v1

    if-eqz v1, :cond_9a

    const/4 v1, 0x1

    goto :goto_9b

    :cond_9a
    const/4 v1, 0x0

    .line 688
    :goto_9b
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v3

    .line 689
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    .line 690
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 691
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderInsetStart:I

    add-int/2addr v4, v6

    .line 692
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v5

    .line 693
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    if-nez v1, :cond_c8

    .line 695
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v1

    sget-object v8, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v1, v8, :cond_c8

    .line 696
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    sub-int/2addr v4, v1

    sub-int/2addr v7, v1

    .line 705
    :cond_c8
    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 707
    :cond_cb
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v1, :cond_145

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, v0, :cond_145

    .line 708
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_e8

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    if-eqz v0, :cond_e8

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-eqz v0, :cond_e8

    goto :goto_e9

    :cond_e8
    const/4 v2, 0x0

    .line 709
    :goto_e9
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    .line 710
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    .line 711
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v3

    .line 712
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 713
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterInsetStart:I

    sub-int/2addr v5, v6

    .line 715
    sget-object v7, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v3, v7, :cond_110

    .line 716
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v5, v1, v6

    goto :goto_138

    :cond_110
    if-nez v2, :cond_135

    .line 717
    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedFront:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-eq v3, v1, :cond_135

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v3, v1, :cond_11b

    goto :goto_135

    .line 721
    :cond_11b
    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Scale:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v3, v1, :cond_138

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gez v1, :cond_138

    .line 722
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v1

    if-eqz v1, :cond_12f

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    neg-int v1, v1

    goto :goto_130

    :cond_12f
    const/4 v1, 0x0

    :goto_130
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_137

    .line 720
    :cond_135
    :goto_135
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    :goto_137
    sub-int/2addr v5, v1

    .line 725
    :cond_138
    :goto_138
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v4

    .line 726
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v5

    .line 727
    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_145
    :goto_145
    add-int/lit8 p5, p5, 0x1

    goto/16 :goto_11

    :cond_149
    return-void
.end method

.method protected onMeasure(II)V
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 522
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-boolean v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    .line 524
    :goto_13
    invoke-super/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_19
    if-ge v7, v6, :cond_2d6

    .line 525
    invoke-super {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 527
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_2d1

    sget v10, Lcom/scwang/smartrefresh/layout/R$string;->srl_component_falsify:I

    invoke-virtual {v9, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v9, :cond_31

    goto/16 :goto_2d1

    .line 531
    :cond_31
    iget-object v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    const/4 v13, -0x2

    if-eqz v10, :cond_13b

    invoke-interface {v10}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v10

    if-ne v10, v9, :cond_13b

    .line 532
    iget-object v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v10}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v10

    .line 533
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    .line 534
    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v12, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v12

    iget v12, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v1, v4, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    .line 535
    iget v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    .line 537
    iget-object v14, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    sget-object v16, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlLayoutUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    if-ge v14, v11, :cond_cb

    .line 538
    iget v11, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-lez v11, :cond_84

    .line 539
    iget v12, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v11, v12

    iget v12, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v12, v11

    .line 540
    iget-object v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    sget-object v14, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlExactUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {v11, v14}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->canReplaceWith(Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;)Z

    move-result v11

    if-eqz v11, :cond_cb

    .line 541
    iget v11, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v5, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v11, v5

    iget v5, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v11, v5

    iput v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    .line 542
    iput-object v14, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    goto :goto_cb

    :cond_84
    if-ne v11, v13, :cond_cb

    .line 544
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v5}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v5

    sget-object v11, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v5, v11, :cond_96

    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iget-boolean v5, v5, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->notified:Z

    if-nez v5, :cond_cb

    .line 545
    :cond_96
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    iget v11, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v11

    iget v11, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v5, v11

    const/4 v11, 0x0

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v11, -0x80000000

    .line 546
    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    invoke-virtual {v10, v4, v14}, Landroid/view/View;->measure(II)V

    .line 547
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    if-lez v11, :cond_cb

    if-eq v11, v5, :cond_ca

    .line 550
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    sget-object v12, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlWrapUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {v5, v12}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->canReplaceWith(Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;)Z

    move-result v5

    if-eqz v5, :cond_ca

    .line 551
    iget v5, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v11, v5

    iget v5, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v11, v5

    iput v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    .line 552
    iput-object v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    :cond_ca
    const/4 v12, -0x1

    .line 558
    :cond_cb
    :goto_cb
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v5}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v5

    sget-object v11, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v5, v11, :cond_dc

    .line 559
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    const/4 v5, -0x1

    const/4 v11, 0x0

    goto :goto_fc

    .line 560
    :cond_dc
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v5}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v5

    sget-object v11, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Scale:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v5, v11, :cond_fa

    if-nez v3, :cond_fa

    .line 561
    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v0, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v5

    if-eqz v5, :cond_f3

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    goto :goto_f4

    :cond_f3
    const/4 v5, 0x0

    :goto_f4
    const/4 v11, 0x0

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_fb

    :cond_fa
    const/4 v11, 0x0

    :goto_fb
    const/4 v5, -0x1

    :goto_fc
    if-eq v12, v5, :cond_111

    .line 565
    iget v5, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v12, v5

    iget v5, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v12, v5

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v11, 0x40000000  # 2.0f

    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v10, v4, v5}, Landroid/view/View;->measure(II)V

    .line 568
    :cond_111
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iget-boolean v5, v4, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->notified:Z

    if-nez v5, :cond_12c

    .line 569
    invoke-virtual {v4}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->notified()Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    move-result-object v4

    iput-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 570
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    iget v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    int-to-float v14, v11

    mul-float v12, v12, v14

    float-to-int v12, v12

    invoke-interface {v4, v5, v11, v12}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V

    :cond_12c
    if-eqz v3, :cond_13b

    .line 573
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v0, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v4

    if-eqz v4, :cond_13b

    .line 574
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v8, v4

    .line 578
    :cond_13b
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v4, :cond_243

    invoke-interface {v4}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v4

    if-ne v4, v9, :cond_243

    .line 579
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v4}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v4

    .line 580
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    .line 581
    iget v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v10, v11

    iget v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v1, v10, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v10

    .line 582
    iget v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    .line 584
    iget-object v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    sget-object v14, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlLayoutUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    if-ge v12, v14, :cond_1d4

    .line 585
    iget v12, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-lez v12, :cond_18d

    .line 586
    iget v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v12, v11

    iget v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v11, v12

    .line 587
    iget-object v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    sget-object v13, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlExactUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {v12, v13}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->canReplaceWith(Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;)Z

    move-result v12

    if-eqz v12, :cond_1d4

    .line 588
    iget v12, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v14, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v12, v14

    iget v14, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v12, v14

    iput v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    .line 589
    iput-object v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    goto :goto_1d4

    :cond_18d
    if-ne v12, v13, :cond_1d4

    .line 591
    iget-object v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v12}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v12

    sget-object v13, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v12, v13, :cond_19f

    iget-object v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iget-boolean v12, v12, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->notified:Z

    if-nez v12, :cond_1d4

    .line 592
    :cond_19f
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    iget v13, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v12, v13

    iget v13, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v12, v13

    const/4 v13, 0x0

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/high16 v13, -0x80000000

    .line 593
    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v4, v10, v13}, Landroid/view/View;->measure(II)V

    .line 594
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    if-lez v13, :cond_1d4

    if-eq v13, v12, :cond_1d3

    .line 597
    iget-object v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    sget-object v12, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlWrapUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {v11, v12}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->canReplaceWith(Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;)Z

    move-result v11

    if-eqz v11, :cond_1d3

    .line 598
    iget v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v13, v11

    iget v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v13, v11

    iput v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    .line 599
    iput-object v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    :cond_1d3
    const/4 v11, -0x1

    .line 605
    :cond_1d4
    :goto_1d4
    iget-object v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v12}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v12

    sget-object v13, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v12, v13, :cond_1e4

    .line 606
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    :cond_1e2
    const/4 v12, 0x0

    goto :goto_202

    .line 607
    :cond_1e4
    iget-object v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v12}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v12

    sget-object v13, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Scale:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v12, v13, :cond_1e2

    if-nez v3, :cond_1e2

    .line 608
    iget-boolean v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v11}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v11

    if-eqz v11, :cond_1fc

    iget v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    neg-int v11, v11

    goto :goto_1fd

    :cond_1fc
    const/4 v11, 0x0

    :goto_1fd
    const/4 v12, 0x0

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    :goto_202
    const/4 v13, -0x1

    if-eq v11, v13, :cond_218

    .line 612
    iget v13, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v11, v13

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v11, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v11, 0x40000000  # 2.0f

    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v10, v5}, Landroid/view/View;->measure(II)V

    .line 615
    :cond_218
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iget-boolean v10, v5, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->notified:Z

    if-nez v10, :cond_233

    .line 616
    invoke-virtual {v5}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->notified()Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    move-result-object v5

    iput-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 617
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    iget-object v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    iget v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    int-to-float v14, v11

    mul-float v13, v13, v14

    float-to-int v13, v13

    invoke-interface {v5, v10, v11, v13}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V

    :cond_233
    if-eqz v3, :cond_244

    .line 620
    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v5

    if-eqz v5, :cond_244

    .line 621
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v8, v4

    goto :goto_244

    :cond_243
    const/4 v12, 0x0

    .line 625
    :cond_244
    :goto_244
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-eqz v4, :cond_2d2

    invoke-interface {v4}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v4

    if-ne v4, v9, :cond_2d2

    .line 626
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v4}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v4

    .line 627
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    .line 628
    iget-object v9, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v9, :cond_272

    iget-boolean v9, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v0, v9}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v9

    if-eqz v9, :cond_272

    iget-boolean v9, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    iget-object v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {v0, v9, v10}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableTranslationContent(ZLcom/scwang/smartrefresh/layout/api/RefreshInternal;)Z

    move-result v9

    if-eqz v9, :cond_272

    const/4 v11, 0x1

    goto :goto_273

    :cond_272
    const/4 v11, 0x0

    .line 629
    :goto_273
    iget-object v9, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v9, :cond_28b

    iget-boolean v9, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v9}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v9

    if-eqz v9, :cond_28b

    iget-boolean v9, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    iget-object v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {v0, v9, v10}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableTranslationContent(ZLcom/scwang/smartrefresh/layout/api/RefreshInternal;)Z

    move-result v9

    if-eqz v9, :cond_28b

    const/4 v9, 0x1

    goto :goto_28c

    :cond_28b
    const/4 v9, 0x0

    .line 631
    :goto_28c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v13

    add-int/2addr v10, v13

    iget v13, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v10, v13

    iget v13, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v10, v13

    iget v13, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 630
    invoke-static {v1, v10, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v10

    .line 633
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v14

    add-int/2addr v13, v14

    iget v14, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v13, v14

    iget v14, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v13, v14

    if-eqz v3, :cond_2b7

    if-eqz v11, :cond_2b7

    iget v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    goto :goto_2b8

    :cond_2b7
    const/4 v11, 0x0

    :goto_2b8
    add-int/2addr v13, v11

    if-eqz v3, :cond_2c0

    if-eqz v9, :cond_2c0

    iget v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    goto :goto_2c1

    :cond_2c0
    const/4 v11, 0x0

    :goto_2c1
    add-int/2addr v13, v11

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 632
    invoke-static {v2, v13, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 636
    invoke-virtual {v4, v10, v5}, Landroid/view/View;->measure(II)V

    .line 637
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v8, v4

    goto :goto_2d2

    :cond_2d1
    :goto_2d1
    const/4 v12, 0x0

    :cond_2d2
    :goto_2d2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_19

    .line 642
    :cond_2d6
    invoke-super/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v3, v1}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    .line 643
    invoke-static {v8, v2}, Landroid/view/View;->resolveSize(II)I

    move-result v2

    .line 641
    invoke-super {v0, v1, v2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 645
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchX:F

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 5

    .line 1824
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 4

    .line 1819
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    if-eqz p1, :cond_9

    const/4 p1, 0x0

    cmpl-float p1, p3, p1

    if-gtz p1, :cond_1f

    :cond_9
    neg-float p1, p3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->startFlingIfNeed(Ljava/lang/Float;)Z

    move-result p1

    if-nez p1, :cond_1f

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p1, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    :goto_20
    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 7

    .line 1768
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    mul-int v0, p3, p1

    const/4 v1, 0x0

    if-lez v0, :cond_26

    .line 1769
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le p1, v0, :cond_19

    .line 1770
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    .line 1771
    iput v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    move v1, p1

    goto :goto_1f

    .line 1774
    :cond_19
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    move v1, p3

    .line 1776
    :goto_1f
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->moveSpinnerInfinitely(F)V

    goto :goto_34

    :cond_26
    if-lez p3, :cond_34

    .line 1777
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    if-eqz v0, :cond_34

    sub-int/2addr p1, p3

    .line 1779
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    int-to-float p1, p1

    .line 1780
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->moveSpinnerInfinitely(F)V

    move v1, p3

    .line 1784
    :cond_34
    :goto_34
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    sub-int/2addr p3, v1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, p4, v0}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    const/4 p1, 0x1

    .line 1785
    aget p2, p4, p1

    add-int/2addr p2, v1

    aput p2, p4, p1

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 12

    .line 1792
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mParentOffsetInWindow:[I

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    .line 1799
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mParentOffsetInWindow:[I

    const/4 p2, 0x1

    aget p1, p1, p2

    add-int/2addr p5, p1

    if-eqz p5, :cond_46

    if-gez p5, :cond_1d

    .line 1800
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    if-nez p1, :cond_27

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez p1, :cond_27

    :cond_1d
    if-lez p5, :cond_46

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-nez p1, :cond_27

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-eqz p1, :cond_46

    .line 1801
    :cond_27
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object p2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq p1, p2, :cond_31

    iget-boolean p1, p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-eqz p1, :cond_3d

    .line 1806
    :cond_31
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-lez p5, :cond_38

    sget-object p2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    goto :goto_3a

    :cond_38
    sget-object p2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    :goto_3a
    invoke-interface {p1, p2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 1808
    :cond_3d
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    sub-int/2addr p1, p5

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->moveSpinnerInfinitely(F)V

    .line 1811
    :cond_46
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    if-eqz p1, :cond_4f

    if-gez p3, :cond_4f

    const/4 p1, 0x0

    .line 1812
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    :cond_4f
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    .line 1750
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedParent:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 1752
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    and-int/lit8 p2, p3, 0x2

    invoke-virtual {p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    .line 1754
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    const/4 p1, 0x1

    .line 1755
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedInProgress:Z

    const/4 p1, 0x0

    .line 1757
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->interceptAnimatorByAction(I)Z

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5

    .line 1742
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isNestedScrollingEnabled()Z

    move-result p1

    if-eqz p1, :cond_14

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    if-eqz p1, :cond_24

    .line 1743
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez p1, :cond_25

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    if-nez p1, :cond_25

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-eqz p1, :cond_24

    goto :goto_25

    :cond_24
    const/4 p2, 0x0

    :cond_25
    :goto_25
    return p2
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 3

    .line 1829
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedParent:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 1830
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedInProgress:Z

    .line 1833
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    .line 1834
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->overSpinner()V

    .line 1836
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p1}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method

.method protected overSpinner()V
    .registers 6

    .line 1550
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_35

    .line 1552
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mCurrentVelocity:I

    const/16 v1, -0x3e8

    if-le v0, v1, :cond_2a

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_2a

    .line 1553
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_e5

    .line 1555
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFloorDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/16 :goto_e5

    .line 1557
    :cond_2a
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v0, :cond_e5

    .line 1558
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->finishTwoLevel()Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto/16 :goto_e5

    .line 1560
    :cond_35
    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_d0

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v0, :cond_50

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v0, :cond_50

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gez v0, :cond_50

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 1561
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-eqz v0, :cond_50

    goto/16 :goto_d0

    .line 1567
    :cond_50
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v3, :cond_6c

    .line 1568
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    if-le v0, v1, :cond_63

    .line 1569
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto/16 :goto_e5

    :cond_63
    if-gez v0, :cond_e5

    .line 1571
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto/16 :goto_e5

    .line 1573
    :cond_6c
    sget-object v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v4, :cond_79

    .line 1574
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownCanceled:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto/16 :goto_e5

    .line 1575
    :cond_79
    sget-object v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v4, :cond_85

    .line 1576
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_e5

    .line 1577
    :cond_85
    sget-object v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v4, :cond_8f

    .line 1578
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_e5

    .line 1579
    :cond_8f
    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v3, :cond_99

    .line 1580
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_e5

    .line 1581
    :cond_99
    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToTwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_a5

    .line 1582
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevelReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_e5

    .line 1583
    :cond_a5
    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_b5

    .line 1584
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_e5

    .line 1585
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto :goto_e5

    .line 1587
    :cond_b5
    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_c6

    .line 1588
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_e5

    .line 1589
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    neg-int v1, v1

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto :goto_e5

    .line 1591
    :cond_c6
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eqz v0, :cond_e5

    .line 1592
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto :goto_e5

    .line 1562
    :cond_d0
    :goto_d0
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    neg-int v3, v1

    if-ge v0, v3, :cond_de

    .line 1563
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    neg-int v1, v1

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto :goto_e5

    :cond_de
    if-lez v0, :cond_e5

    .line 1565
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    :cond_e5
    :goto_e5
    return-void
.end method

.method public post(Ljava/lang/Runnable;)Z
    .registers 6

    .line 3504
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1b

    .line 3505
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mListDelayedRunnable:Ljava/util/List;

    if-nez v0, :cond_f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_f
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mListDelayedRunnable:Ljava/util/List;

    .line 3506
    new-instance v3, Lcom/scwang/smartrefresh/layout/util/DelayedRunnable;

    invoke-direct {v3, p1, v1, v2}, Lcom/scwang/smartrefresh/layout/util/DelayedRunnable;-><init>(Ljava/lang/Runnable;J)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return p1

    .line 3509
    :cond_1b
    new-instance v3, Lcom/scwang/smartrefresh/layout/util/DelayedRunnable;

    invoke-direct {v3, p1, v1, v2}, Lcom/scwang/smartrefresh/layout/util/DelayedRunnable;-><init>(Ljava/lang/Runnable;J)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_10

    .line 3519
    new-instance p2, Lcom/scwang/smartrefresh/layout/util/DelayedRunnable;

    invoke-direct {p2, p1, v0, v1}, Lcom/scwang/smartrefresh/layout/util/DelayedRunnable;-><init>(Ljava/lang/Runnable;J)V

    invoke-virtual {p2}, Lcom/scwang/smartrefresh/layout/util/DelayedRunnable;->run()V

    const/4 p1, 0x1

    return p1

    .line 3522
    :cond_10
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_29

    .line 3523
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mListDelayedRunnable:Ljava/util/List;

    if-nez v0, :cond_1d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1d
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mListDelayedRunnable:Ljava/util/List;

    .line 3524
    new-instance v1, Lcom/scwang/smartrefresh/layout/util/DelayedRunnable;

    invoke-direct {v1, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/util/DelayedRunnable;-><init>(Ljava/lang/Runnable;J)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return p1

    .line 3527
    :cond_29
    new-instance v3, Lcom/scwang/smartrefresh/layout/util/DelayedRunnable;

    invoke-direct {v3, p1, v0, v1}, Lcom/scwang/smartrefresh/layout/util/DelayedRunnable;-><init>(Ljava/lang/Runnable;J)V

    invoke-virtual {v2, v3, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public resetNoMoreData()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .registers 4

    const/4 v0, 0x0

    .line 2618
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    .line 2619
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v2, v1, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    if-eqz v2, :cond_2e

    check-cast v1, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    invoke-interface {v1, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;->setNoMoreData(Z)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 2620
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Footer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " NoMoreData is not supported.(不支持NoMoreData，请使用ClassicsFooter或者自定义)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2e
    return-object p0
.end method

.method protected resetStatus()V
    .registers 3

    .line 1313
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v0, v1, :cond_d

    .line 1314
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-nez v0, :cond_d

    .line 1315
    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 1318
    :cond_d
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eqz v0, :cond_17

    .line 1319
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    :cond_17
    return-void
.end method

.method public setEnableAutoLoadMore(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .registers 2

    .line 2129
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableAutoLoadMore:Z

    return-object p0
.end method

.method public bridge synthetic setEnableAutoLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .registers 2

    .line 84
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableAutoLoadMore(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public setEnableFooterTranslationContent(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .registers 2

    .line 2116
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    const/4 p1, 0x1

    .line 2117
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualFooterTranslationContent:Z

    return-object p0
.end method

.method public setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .registers 3

    const/4 v0, 0x1

    .line 2079
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualLoadMore:Z

    .line 2080
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    return-object p0
.end method

.method public setEnableNestedScroll(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .registers 2

    .line 2266
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setNestedScrollingEnabled(Z)V

    return-object p0
.end method

.method public setEnableRefresh(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .registers 2

    .line 2091
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    return-object p0
.end method

.method public setFooterHeight(F)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .registers 4

    .line 1921
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->CodeExact:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->canReplaceWith(Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1922
    invoke-static {p1}, Lcom/scwang/smartrefresh/layout/util/DensityUtil;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    .line 1923
    sget-object p1, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->CodeExactUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 1924
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz p1, :cond_1f

    .line 1925
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_1f
    return-object p0
.end method

.method public setFooterMaxDragRate(F)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .registers 6

    .line 2014
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    .line 2015
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_16

    .line 2016
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    int-to-float v3, v2

    mul-float v3, v3, p1

    float-to-int p1, v3

    invoke-interface {v0, v1, v2, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V

    goto :goto_1e

    .line 2018
    :cond_16
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->unNotify()Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    :goto_1e
    return-object p0
.end method

.method public setFooterTriggerRate(F)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .registers 2

    .line 2043
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterTriggerRate:F

    return-object p0
.end method

.method public setHeaderMaxDragRate(F)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .registers 6

    .line 1996
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    .line 1997
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_16

    .line 1998
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    int-to-float v3, v2

    mul-float p1, p1, v3

    float-to-int p1, p1

    invoke-interface {v0, v1, v2, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V

    goto :goto_1e

    .line 2000
    :cond_16
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->unNotify()Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    :goto_1e
    return-object p0
.end method

.method public bridge synthetic setHeaderMaxDragRate(F)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .registers 2

    .line 84
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setHeaderMaxDragRate(F)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3

    .line 1844
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setNoMoreData(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .registers 4

    .line 2600
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_c

    if-eqz p1, :cond_c

    .line 2601
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMoreWithNoMoreData()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-object p0

    .line 2604
    :cond_c
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    .line 2605
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v1, v0, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    if-eqz v1, :cond_39

    check-cast v0, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    invoke-interface {v0, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;->setNoMoreData(Z)Z

    move-result p1

    if-nez p1, :cond_39

    .line 2606
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Footer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " NoMoreData is not supported.(不支持NoMoreData，请使用ClassicsFooter或者自定义)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_39
    return-object p0
.end method

.method public setOnLoadMoreListener(Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .registers 3

    .line 2507
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLoadMoreListener:Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;

    .line 2508
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualLoadMore:Z

    if-nez v0, :cond_d

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    return-object p0
.end method

.method public setOnMultiPurposeListener(Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .registers 2

    .line 2536
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    return-object p0
.end method

.method public setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .registers 2

    .line 2495
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshListener:Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;

    return-object p0
.end method

.method public setReboundDuration(I)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .registers 2

    .line 2067
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mReboundDuration:I

    return-object p0
.end method

.method public setRefreshFooter(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .registers 4

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 2361
    invoke-virtual {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setRefreshFooter(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;II)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public setRefreshFooter(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;II)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .registers 6

    .line 2376
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_b

    .line 2377
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2379
    :cond_b
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    const/4 p1, 0x0

    .line 2380
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterBackgroundColor:I

    .line 2381
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNeedTouchEventWhenLoading:Z

    .line 2382
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->unNotify()Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 2383
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualLoadMore:Z

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-eqz v0, :cond_23

    goto :goto_25

    :cond_23
    const/4 v0, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 v0, 0x1

    :goto_26
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 2384
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v0

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v0, v1, :cond_41

    .line 2385
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    invoke-direct {v1, p2, p3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4a

    .line 2387
    :cond_41
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :goto_4a
    return-object p0
.end method

.method public setRefreshHeader(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .registers 4

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 2323
    invoke-virtual {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setRefreshHeader(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;II)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public setRefreshHeader(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;II)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .registers 6

    .line 2338
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_b

    .line 2339
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2341
    :cond_b
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    const/4 p1, 0x0

    .line 2342
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderBackgroundColor:I

    .line 2343
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderNeedTouchEventWhenRefreshing:Z

    .line 2344
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->unNotify()Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 2345
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v0

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v0, v1, :cond_33

    .line 2346
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    invoke-direct {v1, p2, p3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3c

    .line 2348
    :cond_33
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :goto_3c
    return-object p0
.end method

.method protected setStateDirectLoading(Z)V
    .registers 6

    .line 1196
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v0, v1, :cond_56

    .line 1197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastOpenTime:J

    const/4 v0, 0x1

    .line 1210
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    .line 1211
    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 1212
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLoadMoreListener:Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;

    if-eqz v0, :cond_1c

    if-eqz p1, :cond_25

    .line 1214
    invoke-interface {v0, p0}, Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;->onLoadMore(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    goto :goto_25

    .line 1216
    :cond_1c
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    if-nez v0, :cond_25

    const/16 v0, 0x7d0

    .line 1217
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore(I)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 1219
    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_34

    .line 1220
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    int-to-float v3, v1

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-interface {v0, p0, v1, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onStartAnimator(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V

    .line 1222
    :cond_34
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    if-eqz v0, :cond_56

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v1, v1, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    if-eqz v1, :cond_56

    if-eqz v0, :cond_45

    if-eqz p1, :cond_45

    .line 1225
    invoke-interface {v0, p0}, Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;->onLoadMore(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    .line 1227
    :cond_45
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    check-cast v0, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    int-to-float v3, v1

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-interface {p1, v0, v1, v2}, Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;->onFooterStartAnimator(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;II)V

    :cond_56
    return-void
.end method

.method protected setStateLoading(Z)V
    .registers 8

    .line 1236
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$1;

    invoke-direct {v0, p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$1;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Z)V

    .line 1242
    sget-object p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 1243
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    neg-int v1, v1

    invoke-interface {p1, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 1245
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1247
    :cond_18
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v1, :cond_27

    .line 1250
    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    int-to-float v4, v2

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-interface {v1, p0, v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onReleased(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V

    .line 1252
    :cond_27
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    if-eqz v1, :cond_3e

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v3, v2, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    if-eqz v3, :cond_3e

    .line 1254
    check-cast v2, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    int-to-float v5, v3

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-interface {v1, v2, v3, v4}, Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;->onFooterReleased(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;II)V

    :cond_3e
    if-nez p1, :cond_44

    const/4 p1, 0x0

    .line 1258
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_44
    return-void
.end method

.method protected setStateRefreshing(Z)V
    .registers 8

    .line 1266
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;

    invoke-direct {v0, p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Z)V

    .line 1289
    sget-object p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 1290
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    invoke-interface {p1, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 1292
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1294
    :cond_17
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v1, :cond_26

    .line 1297
    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    int-to-float v4, v2

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-interface {v1, p0, v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onReleased(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V

    .line 1299
    :cond_26
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    if-eqz v1, :cond_3d

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v3, v2, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    if-eqz v3, :cond_3d

    .line 1301
    check-cast v2, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    int-to-float v5, v3

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-interface {v1, v2, v3, v4}, Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;->onHeaderReleased(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;II)V

    :cond_3d
    if-nez p1, :cond_43

    const/4 p1, 0x0

    .line 1305
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_43
    return-void
.end method

.method protected setViceState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V
    .registers 4

    .line 1328
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isDragging:Z

    if-eqz v1, :cond_11

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isHeader:Z

    iget-boolean v1, p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isHeader:Z

    if-eq v0, v1, :cond_11

    .line 1329
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 1331
    :cond_11
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v0, p1, :cond_17

    .line 1332
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    :cond_17
    return-void
.end method

.method protected startFlingIfNeed(Ljava/lang/Float;)Z
    .registers 14

    if-nez p1, :cond_6

    .line 1080
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mCurrentVelocity:I

    int-to-float p1, p1

    goto :goto_a

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1081
    :goto_a
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mMinimumVelocity:I

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9d

    .line 1082
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    int-to-float v1, v0

    mul-float v1, v1, p1

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-gez v1, :cond_43

    .line 1089
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const/4 v5, 0x1

    if-eq v1, v4, :cond_37

    sget-object v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v1, v4, :cond_37

    if-gez v0, :cond_32

    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v4, :cond_32

    goto :goto_37

    .line 1092
    :cond_32
    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isReleaseToOpening:Z

    if-eqz v1, :cond_43

    return v5

    .line 1090
    :cond_37
    :goto_37
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;

    invoke-direct {v0, p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;F)V

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->start()Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    return v5

    :cond_43
    cmpg-float v1, p1, v3

    if-gez v1, :cond_67

    .line 1096
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollBounce:Z

    if-eqz v1, :cond_53

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v1, :cond_81

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v1, :cond_81

    :cond_53
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v1, v4, :cond_5b

    if-gez v0, :cond_81

    :cond_5b
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableAutoLoadMore:Z

    if-eqz v0, :cond_67

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-nez v0, :cond_81

    :cond_67
    cmpl-float v0, p1, v3

    if-lez v0, :cond_9d

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollBounce:Z

    if-eqz v0, :cond_73

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    if-nez v0, :cond_81

    :cond_73
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v0, :cond_81

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_9d

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gtz v0, :cond_9d

    .line 1105
    :cond_81
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mVerticalPermit:Z

    .line 1106
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    neg-float p1, p1

    float-to-int v7, p1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v10, -0x7fffffff

    const v11, 0x7fffffff

    invoke-virtual/range {v3 .. v11}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1107
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1109
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_9d
    return v2
.end method
