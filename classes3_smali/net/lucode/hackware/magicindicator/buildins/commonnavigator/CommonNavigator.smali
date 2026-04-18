.class public Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;
.super Landroid/widget/FrameLayout;
.source "CommonNavigator.java"

# interfaces
.implements Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;
.implements Lnet/lucode/hackware/magicindicator/NavigatorHelper$OnNavigatorScrollListener;


# instance fields
.field private mAdapter:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

.field private mAdjustMode:Z

.field private mEnablePivotScroll:Z

.field private mFollowTouch:Z

.field private mIndicator:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;

.field private mIndicatorContainer:Landroid/widget/LinearLayout;

.field private mIndicatorOnTop:Z

.field private mLeftPadding:I

.field private mNavigatorHelper:Lnet/lucode/hackware/magicindicator/NavigatorHelper;

.field private mObserver:Landroid/database/DataSetObserver;

.field private mPositionDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;",
            ">;"
        }
    .end annotation
.end field

.field private mReselectWhenLayout:Z

.field private mRightPadding:I

.field private mScrollPivotX:F

.field private mScrollView:Landroid/widget/HorizontalScrollView;

.field private mSmoothScroll:Z

.field private mTitleContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 74
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f000000  # 0.5f

    .line 46
    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollPivotX:F

    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mSmoothScroll:Z

    .line 48
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mFollowTouch:Z

    .line 53
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mReselectWhenLayout:Z

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mPositionDataList:Ljava/util/List;

    .line 59
    new-instance p1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator$1;

    invoke-direct {p1, p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator$1;-><init>(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;)V

    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mObserver:Landroid/database/DataSetObserver;

    .line 75
    new-instance p1, Lnet/lucode/hackware/magicindicator/NavigatorHelper;

    invoke-direct {p1}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;-><init>()V

    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/NavigatorHelper;

    .line 76
    invoke-virtual {p1, p0}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->setNavigatorScrollListener(Lnet/lucode/hackware/magicindicator/NavigatorHelper$OnNavigatorScrollListener;)V

    return-void
.end method

.method static synthetic access$000(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;)Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;
    .registers 1

    .line 30
    iget-object p0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mAdapter:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;)Lnet/lucode/hackware/magicindicator/NavigatorHelper;
    .registers 1

    .line 30
    iget-object p0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/NavigatorHelper;

    return-object p0
.end method

.method static synthetic access$200(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;)V
    .registers 1

    .line 30
    invoke-direct {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->init()V

    return-void
.end method

.method private init()V
    .registers 6

    .line 119
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 122
    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mAdjustMode:Z

    if-eqz v0, :cond_16

    .line 123
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lnet/lucode/hackware/magicindicator/R$layout;->pager_navigator_layout_no_scroll:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_24

    .line 125
    :cond_16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lnet/lucode/hackware/magicindicator/R$layout;->pager_navigator_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 128
    :goto_24
    sget v1, Lnet/lucode/hackware/magicindicator/R$id;->scroll_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollView:Landroid/widget/HorizontalScrollView;

    .line 130
    sget v1, Lnet/lucode/hackware/magicindicator/R$id;->title_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mTitleContainer:Landroid/widget/LinearLayout;

    .line 131
    iget v2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mLeftPadding:I

    iget v3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mRightPadding:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 133
    sget v1, Lnet/lucode/hackware/magicindicator/R$id;->indicator_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mIndicatorContainer:Landroid/widget/LinearLayout;

    .line 134
    iget-boolean v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mIndicatorOnTop:Z

    if-eqz v1, :cond_57

    .line 135
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->bringChildToFront(Landroid/view/View;)V

    .line 138
    :cond_57
    invoke-direct {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->initTitlesAndIndicator()V

    return-void
.end method

.method private initTitlesAndIndicator()V
    .registers 8

    .line 145
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/NavigatorHelper;

    invoke-virtual {v0}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->getTotalCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    const/4 v3, -0x1

    if-ge v2, v0, :cond_3f

    .line 146
    iget-object v4, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mAdapter:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;->getTitleView(Landroid/content/Context;I)Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    move-result-object v4

    .line 147
    instance-of v5, v4, Landroid/view/View;

    if-eqz v5, :cond_3c

    .line 148
    check-cast v4, Landroid/view/View;

    .line 150
    iget-boolean v5, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mAdjustMode:Z

    if-eqz v5, :cond_31

    .line 151
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 152
    iget-object v3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mAdapter:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v6, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;->getTitleWeight(Landroid/content/Context;I)F

    move-result v3

    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_37

    .line 154
    :cond_31
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 156
    :goto_37
    iget-object v3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mTitleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 159
    :cond_3f
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mAdapter:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    if-eqz v0, :cond_5f

    .line 160
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;->getIndicator(Landroid/content/Context;)Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;

    move-result-object v0

    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mIndicator:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;

    .line 161
    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_5f

    .line 162
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 163
    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mIndicatorContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mIndicator:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5f
    return-void
.end method

.method private preparePositionData()V
    .registers 7

    .line 187
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mPositionDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 188
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/NavigatorHelper;

    invoke-virtual {v0}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->getTotalCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_68

    .line 189
    new-instance v2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;

    invoke-direct {v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;-><init>()V

    .line 190
    iget-object v3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mTitleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_60

    .line 192
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mLeft:I

    .line 193
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, v2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mTop:I

    .line 194
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    iput v4, v2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mRight:I

    .line 195
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    iput v4, v2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mBottom:I

    .line 196
    instance-of v5, v3, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IMeasurablePagerTitleView;

    if-eqz v5, :cond_52

    .line 197
    check-cast v3, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IMeasurablePagerTitleView;

    .line 198
    invoke-interface {v3}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IMeasurablePagerTitleView;->getContentLeft()I

    move-result v4

    iput v4, v2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mContentLeft:I

    .line 199
    invoke-interface {v3}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IMeasurablePagerTitleView;->getContentTop()I

    move-result v4

    iput v4, v2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mContentTop:I

    .line 200
    invoke-interface {v3}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IMeasurablePagerTitleView;->getContentRight()I

    move-result v4

    iput v4, v2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mContentRight:I

    .line 201
    invoke-interface {v3}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IMeasurablePagerTitleView;->getContentBottom()I

    move-result v3

    iput v3, v2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mContentBottom:I

    goto :goto_60

    .line 203
    :cond_52
    iget v3, v2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mLeft:I

    iput v3, v2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mContentLeft:I

    .line 204
    iget v3, v2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mTop:I

    iput v3, v2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mContentTop:I

    .line 205
    iget v3, v2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mRight:I

    iput v3, v2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mContentRight:I

    .line 206
    iput v4, v2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mContentBottom:I

    .line 209
    :cond_60
    :goto_60
    iget-object v3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mPositionDataList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_68
    return-void
.end method


# virtual methods
.method public getAdapter()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;
    .registers 2

    .line 95
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mAdapter:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    return-object v0
.end method

.method public getLeftPadding()I
    .registers 2

    .line 404
    iget v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mLeftPadding:I

    return v0
.end method

.method public getPagerIndicator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;
    .registers 2

    .line 277
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mIndicator:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;

    return-object v0
.end method

.method public getRightPadding()I
    .registers 2

    .line 396
    iget v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mRightPadding:I

    return v0
.end method

.method public getScrollPivotX()F
    .registers 2

    .line 240
    iget v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollPivotX:F

    return v0
.end method

.method public getScrollView()Landroid/widget/HorizontalScrollView;
    .registers 2

    .line 428
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method public getTitleContainer()Landroid/widget/LinearLayout;
    .registers 2

    .line 392
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mTitleContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onAttachToMagicIndicator()V
    .registers 1

    .line 269
    invoke-direct {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->init()V

    return-void
.end method

.method public onDeselected(II)V
    .registers 5

    .line 375
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mTitleContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_5

    return-void

    .line 378
    :cond_5
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 379
    instance-of v1, v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    if-eqz v1, :cond_12

    .line 380
    check-cast v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    invoke-interface {v0, p1, p2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;->onDeselected(II)V

    :cond_12
    return-void
.end method

.method public onDetachFromMagicIndicator()V
    .registers 1

    return-void
.end method

.method public onEnter(IIFZ)V
    .registers 7

    .line 290
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mTitleContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_5

    return-void

    .line 293
    :cond_5
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 294
    instance-of v1, v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    if-eqz v1, :cond_12

    .line 295
    check-cast v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    invoke-interface {v0, p1, p2, p3, p4}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;->onEnter(IIFZ)V

    :cond_12
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 170
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 171
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mAdapter:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    if-eqz p1, :cond_33

    .line 172
    invoke-direct {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->preparePositionData()V

    .line 173
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mIndicator:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;

    if-eqz p1, :cond_13

    .line 174
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mPositionDataList:Ljava/util/List;

    invoke-interface {p1, p2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;->onPositionDataProvide(Ljava/util/List;)V

    .line 176
    :cond_13
    iget-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mReselectWhenLayout:Z

    if-eqz p1, :cond_33

    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/NavigatorHelper;

    invoke-virtual {p1}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->getScrollState()I

    move-result p1

    if-nez p1, :cond_33

    .line 177
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/NavigatorHelper;

    invoke-virtual {p1}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->getCurrentIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->onPageSelected(I)V

    .line 178
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/NavigatorHelper;

    invoke-virtual {p1}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->getCurrentIndex()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->onPageScrolled(IFI)V

    :cond_33
    return-void
.end method

.method public onLeave(IIFZ)V
    .registers 7

    .line 301
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mTitleContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_5

    return-void

    .line 304
    :cond_5
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 305
    instance-of v1, v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    if-eqz v1, :cond_12

    .line 306
    check-cast v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    invoke-interface {v0, p1, p2, p3, p4}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;->onLeave(IIFZ)V

    :cond_12
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 3

    .line 259
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mAdapter:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    if-eqz v0, :cond_10

    .line 260
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/NavigatorHelper;

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->onPageScrollStateChanged(I)V

    .line 261
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mIndicator:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;

    if-eqz v0, :cond_10

    .line 262
    invoke-interface {v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;->onPageScrollStateChanged(I)V

    :cond_10
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 6

    .line 215
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mAdapter:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    if-eqz v0, :cond_81

    .line 217
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/NavigatorHelper;

    invoke-virtual {v0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->onPageScrolled(IFI)V

    .line 218
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mIndicator:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;

    if-eqz v0, :cond_10

    .line 219
    invoke-interface {v0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;->onPageScrolled(IFI)V

    .line 223
    :cond_10
    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz p3, :cond_81

    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mPositionDataList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_81

    if-ltz p1, :cond_81

    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mPositionDataList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_81

    .line 224
    iget-boolean p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mFollowTouch:Z

    if-eqz p3, :cond_81

    .line 225
    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mPositionDataList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 226
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mPositionDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 227
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mPositionDataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;

    .line 228
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mPositionDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;

    .line 229
    invoke-virtual {p3}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->horizontalCenter()I

    move-result p3

    int-to-float p3, p3

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollPivotX:F

    mul-float v0, v0, v1

    sub-float/2addr p3, v0

    .line 230
    invoke-virtual {p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->horizontalCenter()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollPivotX:F

    mul-float v0, v0, v1

    sub-float/2addr p1, v0

    .line 231
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollView:Landroid/widget/HorizontalScrollView;

    sub-float/2addr p1, p3

    mul-float p1, p1, p2

    add-float/2addr p3, p1

    float-to-int p1, p3

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_81
    return-void
.end method

.method public onPageSelected(I)V
    .registers 3

    .line 249
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mAdapter:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    if-eqz v0, :cond_10

    .line 250
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/NavigatorHelper;

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->onPageSelected(I)V

    .line 251
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mIndicator:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;

    if-eqz v0, :cond_10

    .line 252
    invoke-interface {v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;->onPageSelected(I)V

    :cond_10
    return-void
.end method

.method public onSelected(II)V
    .registers 5

    .line 337
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mTitleContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_5

    return-void

    .line 340
    :cond_5
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 341
    instance-of v1, v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    if-eqz v1, :cond_12

    .line 342
    check-cast v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    invoke-interface {v0, p1, p2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;->onSelected(II)V

    .line 344
    :cond_12
    iget-boolean p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mAdjustMode:Z

    if-nez p2, :cond_a4

    iget-boolean p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mFollowTouch:Z

    if-nez p2, :cond_a4

    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz p2, :cond_a4

    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mPositionDataList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_a4

    .line 345
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mPositionDataList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 346
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mPositionDataList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;

    .line 347
    iget-boolean p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mEnablePivotScroll:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_62

    .line 348
    invoke-virtual {p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->horizontalCenter()I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p2}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollPivotX:F

    mul-float p2, p2, v1

    sub-float/2addr p1, p2

    .line 349
    iget-boolean p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mSmoothScroll:Z

    if-eqz p2, :cond_5b

    .line 350
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollView:Landroid/widget/HorizontalScrollView;

    float-to-int p1, p1

    invoke-virtual {p2, p1, v0}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_a4

    .line 352
    :cond_5b
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollView:Landroid/widget/HorizontalScrollView;

    float-to-int p1, p1

    invoke-virtual {p2, p1, v0}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    goto :goto_a4

    .line 356
    :cond_62
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p2}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p2

    iget v1, p1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mLeft:I

    if-le p2, v1, :cond_7c

    .line 357
    iget-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mSmoothScroll:Z

    if-eqz p1, :cond_76

    .line 358
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1, v1, v0}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_a4

    .line 360
    :cond_76
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1, v1, v0}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    goto :goto_a4

    .line 362
    :cond_7c
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p2}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    add-int/2addr p2, v1

    iget p1, p1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mRight:I

    if-ge p2, p1, :cond_a4

    .line 363
    iget-boolean p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mSmoothScroll:Z

    if-eqz p2, :cond_9a

    .line 364
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p2, p1, v0}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_a4

    .line 366
    :cond_9a
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p2, p1, v0}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_a4
    :goto_a4
    return-void
.end method

.method public setAdapter(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;)V
    .registers 4

    .line 99
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mAdapter:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    if-eqz v0, :cond_c

    .line 103
    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 105
    :cond_c
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mAdapter:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    if-eqz p1, :cond_2a

    .line 107
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 108
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/NavigatorHelper;

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mAdapter:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    invoke-virtual {v0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;->getCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->setTotalCount(I)V

    .line 109
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mTitleContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_33

    .line 110
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mAdapter:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    invoke-virtual {p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;->notifyDataSetChanged()V

    goto :goto_33

    .line 113
    :cond_2a
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/NavigatorHelper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->setTotalCount(I)V

    .line 114
    invoke-direct {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->init()V

    :cond_33
    :goto_33
    return-void
.end method

.method public setAdjustMode(Z)V
    .registers 2

    .line 91
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mAdjustMode:Z

    return-void
.end method

.method public setEnablePivotScroll(Z)V
    .registers 2

    .line 285
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mEnablePivotScroll:Z

    return-void
.end method

.method public setFollowTouch(Z)V
    .registers 2

    .line 323
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mFollowTouch:Z

    return-void
.end method

.method public setIndicatorOnTop(Z)V
    .registers 2

    .line 416
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mIndicatorOnTop:Z

    return-void
.end method

.method public setLeftPadding(I)V
    .registers 2

    .line 408
    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mLeftPadding:I

    return-void
.end method

.method public setReselectWhenLayout(Z)V
    .registers 2

    .line 424
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mReselectWhenLayout:Z

    return-void
.end method

.method public setRightPadding(I)V
    .registers 2

    .line 400
    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mRightPadding:I

    return-void
.end method

.method public setScrollPivotX(F)V
    .registers 2

    .line 244
    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollPivotX:F

    return-void
.end method

.method public setScrollView(Landroid/widget/HorizontalScrollView;)V
    .registers 2

    .line 432
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollView:Landroid/widget/HorizontalScrollView;

    return-void
.end method

.method public setSkimOver(Z)V
    .registers 3

    .line 332
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/NavigatorHelper;

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->setSkimOver(Z)V

    return-void
.end method

.method public setSmoothScroll(Z)V
    .registers 2

    .line 315
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mSmoothScroll:Z

    return-void
.end method
