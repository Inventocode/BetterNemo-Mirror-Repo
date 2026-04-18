.class public Lcom/codemao/nemo/view/banner/Banner;
.super Landroid/widget/FrameLayout;
.source "Banner.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field private bannerBackgroundImage:I

.field private bannerDefaultImage:Landroid/widget/ImageView;

.field private bannerStyle:I

.field private bannerTitle:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private count:I

.field private currentItem:I

.field private delayTime:I

.field private dm:Landroid/util/DisplayMetrics;

.field private handler:Lcom/codemao/nemo/view/banner/WeakHandler;

.field private imageLoader:Lcom/codemao/nemo/view/banner/loader/ImageLoaderInterface;

.field private imageViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private indicator:Landroid/widget/LinearLayout;

.field private indicatorImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private indicatorInside:Landroid/widget/LinearLayout;

.field private indicatorSize:I

.field private isAutoPlay:Z

.field private lastPosition:I

.field private mIndicatorHeight:I

.field private mIndicatorMargin:I

.field private mIndicatorSelectedResId:I

.field private mIndicatorUnselectedResId:I

.field private mIndicatorWidth:I

.field private mLayoutResId:I

.field private mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mScroller:Lcom/codemao/nemo/view/banner/BannerScroller;

.field private numIndicator:Landroid/widget/TextView;

.field private numIndicatorInside:Landroid/widget/TextView;

.field private paddingBottom:I

.field private paddingLeft:I

.field private paddingRight:I

.field private paddingTop:I

.field private pageMargin:I

.field private scaleType:I

.field private scrollTime:I

.field public tag:Ljava/lang/String;

.field private final task:Ljava/lang/Runnable;

.field private titles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private viewPager:Lcom/codemao/nemo/view/banner/view/BannerViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/view/banner/Banner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, "banner"

    .line 39
    iput-object p3, p0, Lcom/codemao/nemo/view/banner/Banner;->tag:Ljava/lang/String;

    const/4 p3, 0x5

    .line 40
    iput p3, p0, Lcom/codemao/nemo/view/banner/Banner;->mIndicatorMargin:I

    const/4 p3, 0x1

    .line 45
    iput p3, p0, Lcom/codemao/nemo/view/banner/Banner;->bannerStyle:I

    const/16 v0, 0x7d0

    .line 46
    iput v0, p0, Lcom/codemao/nemo/view/banner/Banner;->delayTime:I

    const/16 v0, 0x320

    .line 47
    iput v0, p0, Lcom/codemao/nemo/view/banner/Banner;->scrollTime:I

    .line 48
    iput-boolean p3, p0, Lcom/codemao/nemo/view/banner/Banner;->isAutoPlay:Z

    const v0, 0x7f0803df

    .line 50
    iput v0, p0, Lcom/codemao/nemo/view/banner/Banner;->mIndicatorSelectedResId:I

    const v0, 0x7f0807d5

    .line 51
    iput v0, p0, Lcom/codemao/nemo/view/banner/Banner;->mIndicatorUnselectedResId:I

    const v0, 0x7f0d0074

    .line 52
    iput v0, p0, Lcom/codemao/nemo/view/banner/Banner;->mLayoutResId:I

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/codemao/nemo/view/banner/Banner;->count:I

    .line 60
    iput p3, p0, Lcom/codemao/nemo/view/banner/Banner;->lastPosition:I

    .line 61
    iput p3, p0, Lcom/codemao/nemo/view/banner/Banner;->scaleType:I

    .line 79
    iput v0, p0, Lcom/codemao/nemo/view/banner/Banner;->paddingLeft:I

    .line 80
    iput v0, p0, Lcom/codemao/nemo/view/banner/Banner;->paddingTop:I

    .line 81
    iput v0, p0, Lcom/codemao/nemo/view/banner/Banner;->paddingRight:I

    .line 82
    iput v0, p0, Lcom/codemao/nemo/view/banner/Banner;->paddingBottom:I

    .line 83
    iput v0, p0, Lcom/codemao/nemo/view/banner/Banner;->pageMargin:I

    .line 85
    new-instance p3, Lcom/codemao/nemo/view/banner/WeakHandler;

    invoke-direct {p3}, Lcom/codemao/nemo/view/banner/WeakHandler;-><init>()V

    iput-object p3, p0, Lcom/codemao/nemo/view/banner/Banner;->handler:Lcom/codemao/nemo/view/banner/WeakHandler;

    .line 491
    new-instance p3, Lcom/codemao/nemo/view/banner/Banner$1;

    invoke-direct {p3, p0}, Lcom/codemao/nemo/view/banner/Banner$1;-><init>(Lcom/codemao/nemo/view/banner/Banner;)V

    iput-object p3, p0, Lcom/codemao/nemo/view/banner/Banner;->task:Ljava/lang/Runnable;

    .line 97
    iput-object p1, p0, Lcom/codemao/nemo/view/banner/Banner;->context:Landroid/content/Context;

    .line 98
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/codemao/nemo/view/banner/Banner;->titles:Ljava/util/List;

    .line 99
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 100
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/codemao/nemo/view/banner/Banner;->imageViews:Ljava/util/List;

    .line 101
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/codemao/nemo/view/banner/Banner;->indicatorImages:Ljava/util/List;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iput-object p3, p0, Lcom/codemao/nemo/view/banner/Banner;->dm:Landroid/util/DisplayMetrics;

    .line 103
    iget p3, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p3, p3, 0x50

    iput p3, p0, Lcom/codemao/nemo/view/banner/Banner;->indicatorSize:I

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/view/banner/Banner;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/view/banner/Banner;)I
    .registers 1

    .line 38
    iget p0, p0, Lcom/codemao/nemo/view/banner/Banner;->count:I

    return p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/view/banner/Banner;)Z
    .registers 1

    .line 38
    iget-boolean p0, p0, Lcom/codemao/nemo/view/banner/Banner;->isAutoPlay:Z

    return p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/view/banner/Banner;)I
    .registers 1

    .line 38
    iget p0, p0, Lcom/codemao/nemo/view/banner/Banner;->currentItem:I

    return p0
.end method

.method static synthetic access$202(Lcom/codemao/nemo/view/banner/Banner;I)I
    .registers 2

    .line 38
    iput p1, p0, Lcom/codemao/nemo/view/banner/Banner;->currentItem:I

    return p1
.end method

.method static synthetic access$300(Lcom/codemao/nemo/view/banner/Banner;)Lcom/codemao/nemo/view/banner/view/BannerViewPager;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/codemao/nemo/view/banner/Banner;->viewPager:Lcom/codemao/nemo/view/banner/view/BannerViewPager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/nemo/view/banner/Banner;)Ljava/lang/Runnable;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/codemao/nemo/view/banner/Banner;->task:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/codemao/nemo/view/banner/Banner;)Lcom/codemao/nemo/view/banner/WeakHandler;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/codemao/nemo/view/banner/Banner;->handler:Lcom/codemao/nemo/view/banner/WeakHandler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/codemao/nemo/view/banner/Banner;)I
    .registers 1

    .line 38
    iget p0, p0, Lcom/codemao/nemo/view/banner/Banner;->delayTime:I

    return p0
.end method

.method private createIndicator()V
    .registers 6

    .line 437
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/Banner;->indicatorImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 438
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/Banner;->indicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 439
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/Banner;->indicatorInside:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 440
    :goto_10
    iget v1, p0, Lcom/codemao/nemo/view/banner/Banner;->count:I

    if-ge v0, v1, :cond_5b

    .line 441
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/codemao/nemo/view/banner/Banner;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 442
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 443
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/codemao/nemo/view/banner/Banner;->mIndicatorWidth:I

    iget v4, p0, Lcom/codemao/nemo/view/banner/Banner;->mIndicatorHeight:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 444
    iget v3, p0, Lcom/codemao/nemo/view/banner/Banner;->mIndicatorMargin:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 445
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    if-nez v0, :cond_37

    .line 447
    iget v3, p0, Lcom/codemao/nemo/view/banner/Banner;->mIndicatorSelectedResId:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3c

    .line 449
    :cond_37
    iget v3, p0, Lcom/codemao/nemo/view/banner/Banner;->mIndicatorUnselectedResId:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 451
    :goto_3c
    iget-object v3, p0, Lcom/codemao/nemo/view/banner/Banner;->indicatorImages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    iget v3, p0, Lcom/codemao/nemo/view/banner/Banner;->bannerStyle:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_53

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4a

    goto :goto_53

    :cond_4a
    const/4 v4, 0x5

    if-ne v3, v4, :cond_58

    .line 456
    iget-object v3, p0, Lcom/codemao/nemo/view/banner/Banner;->indicatorInside:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_58

    .line 454
    :cond_53
    :goto_53
    iget-object v3, p0, Lcom/codemao/nemo/view/banner/Banner;->indicator:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_58
    :goto_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_5b
    return-void
.end method

.method private handleTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    .line 129
    :cond_3
    sget-object v0, Lcom/codemao/nemo/R$styleable;->Banner:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x1a

    .line 130
    iget v0, p0, Lcom/codemao/nemo/view/banner/Banner;->indicatorSize:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/banner/Banner;->mIndicatorWidth:I

    const/16 p2, 0x18

    .line 131
    iget v0, p0, Lcom/codemao/nemo/view/banner/Banner;->indicatorSize:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/banner/Banner;->mIndicatorHeight:I

    const/16 p2, 0x19

    const/4 v0, 0x5

    .line 132
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/banner/Banner;->mIndicatorMargin:I

    const/16 p2, 0x16

    const v0, 0x7f0803df

    .line 133
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/banner/Banner;->mIndicatorSelectedResId:I

    const/16 p2, 0x17

    const v0, 0x7f0807d5

    .line 134
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/banner/Banner;->mIndicatorUnselectedResId:I

    const/16 p2, 0x15

    .line 135
    iget v0, p0, Lcom/codemao/nemo/view/banner/Banner;->scaleType:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/banner/Banner;->scaleType:I

    const/16 p2, 0x14

    const/16 v0, 0x7d0

    .line 136
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/banner/Banner;->delayTime:I

    const/16 p2, 0x1c

    const/16 v0, 0x320

    .line 137
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/banner/Banner;->scrollTime:I

    const/16 p2, 0x1b

    const/4 v0, 0x1

    .line 138
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/codemao/nemo/view/banner/Banner;->isAutoPlay:Z

    const/16 p2, 0x1d

    const/4 v1, -0x1

    .line 139
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    const/16 p2, 0x1e

    .line 140
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    const/16 p2, 0x1f

    .line 141
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    const/16 p2, 0x20

    .line 142
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    const/16 p2, 0x10

    .line 143
    iget v1, p0, Lcom/codemao/nemo/view/banner/Banner;->mLayoutResId:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/banner/Banner;->mLayoutResId:I

    const p2, 0x7f0805be

    .line 144
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/banner/Banner;->bannerBackgroundImage:I

    .line 145
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initImages()V
    .registers 4

    .line 348
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/Banner;->imageViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 349
    iget v0, p0, Lcom/codemao/nemo/view/banner/Banner;->bannerStyle:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_47

    const/4 v1, 0x4

    if-eq v0, v1, :cond_47

    const/4 v1, 0x5

    if-ne v0, v1, :cond_11

    goto :goto_47

    :cond_11
    const/4 v1, 0x3

    const-string v2, "1/"

    if-ne v0, v1, :cond_2d

    .line 354
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/Banner;->numIndicatorInside:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/codemao/nemo/view/banner/Banner;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4a

    :cond_2d
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4a

    .line 356
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/Banner;->numIndicator:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/codemao/nemo/view/banner/Banner;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4a

    .line 352
    :cond_47
    :goto_47
    invoke-direct {p0}, Lcom/codemao/nemo/view/banner/Banner;->createIndicator()V

    :cond_4a
    :goto_4a
    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 108
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/Banner;->imageViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/view/banner/Banner;->handleTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget p2, p0, Lcom/codemao/nemo/view/banner/Banner;->mLayoutResId:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0093

    .line 111
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/codemao/nemo/view/banner/Banner;->bannerDefaultImage:Landroid/widget/ImageView;

    const p2, 0x7f0a0095

    .line 112
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/view/banner/view/BannerViewPager;

    iput-object p2, p0, Lcom/codemao/nemo/view/banner/Banner;->viewPager:Lcom/codemao/nemo/view/banner/view/BannerViewPager;

    const p2, 0x7f0a07b3

    .line 113
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const p2, 0x7f0a012a

    .line 114
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/codemao/nemo/view/banner/Banner;->indicator:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0323

    .line 115
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/codemao/nemo/view/banner/Banner;->indicatorInside:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0094

    .line 116
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/codemao/nemo/view/banner/Banner;->bannerTitle:Landroid/widget/TextView;

    const p2, 0x7f0a0587

    .line 117
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/codemao/nemo/view/banner/Banner;->numIndicator:Landroid/widget/TextView;

    const p2, 0x7f0a0588

    .line 118
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/codemao/nemo/view/banner/Banner;->numIndicatorInside:Landroid/widget/TextView;

    const p2, 0x7f0a0640

    .line 119
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 120
    iget-object p1, p0, Lcom/codemao/nemo/view/banner/Banner;->bannerDefaultImage:Landroid/widget/ImageView;

    iget p2, p0, Lcom/codemao/nemo/view/banner/Banner;->bannerBackgroundImage:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    iget-object p1, p0, Lcom/codemao/nemo/view/banner/Banner;->viewPager:Lcom/codemao/nemo/view/banner/view/BannerViewPager;

    iget p2, p0, Lcom/codemao/nemo/view/banner/Banner;->pageMargin:I

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    .line 122
    invoke-direct {p0}, Lcom/codemao/nemo/view/banner/Banner;->initViewPagerScroll()V

    return-void
.end method

.method private initViewPagerScroll()V
    .registers 4

    .line 150
    :try_start_0
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const-string v1, "mScroller"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 152
    new-instance v1, Lcom/codemao/nemo/view/banner/BannerScroller;

    iget-object v2, p0, Lcom/codemao/nemo/view/banner/Banner;->viewPager:Lcom/codemao/nemo/view/banner/view/BannerViewPager;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/codemao/nemo/view/banner/BannerScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/codemao/nemo/view/banner/Banner;->mScroller:Lcom/codemao/nemo/view/banner/BannerScroller;

    .line 153
    iget v2, p0, Lcom/codemao/nemo/view/banner/Banner;->scrollTime:I

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/view/banner/BannerScroller;->setDuration(I)V

    .line 154
    iget-object v1, p0, Lcom/codemao/nemo/view/banner/Banner;->viewPager:Lcom/codemao/nemo/view/banner/view/BannerViewPager;

    iget-object v2, p0, Lcom/codemao/nemo/view/banner/Banner;->mScroller:Lcom/codemao/nemo/view/banner/BannerScroller;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_30

    :catch_26
    move-exception v0

    .line 156
    iget-object v1, p0, Lcom/codemao/nemo/view/banner/Banner;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_30
    return-void
.end method

.method private setImageList(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_73

    .line 361
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_a

    goto :goto_73

    .line 366
    :cond_a
    iget-object v1, p0, Lcom/codemao/nemo/view/banner/Banner;->bannerDefaultImage:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 367
    invoke-direct {p0}, Lcom/codemao/nemo/view/banner/Banner;->initImages()V

    const/4 v1, 0x0

    .line 368
    :goto_15
    iget v2, p0, Lcom/codemao/nemo/view/banner/Banner;->count:I

    add-int/lit8 v2, v2, 0x1

    if-gt v1, v2, :cond_72

    const/4 v2, 0x0

    .line 370
    iget-object v3, p0, Lcom/codemao/nemo/view/banner/Banner;->imageLoader:Lcom/codemao/nemo/view/banner/loader/ImageLoaderInterface;

    if-eqz v3, :cond_26

    .line 371
    iget-object v2, p0, Lcom/codemao/nemo/view/banner/Banner;->context:Landroid/content/Context;

    invoke-interface {v3, v2}, Lcom/codemao/nemo/view/banner/loader/ImageLoaderInterface;->createImageView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    :cond_26
    if-nez v2, :cond_2f

    .line 374
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/codemao/nemo/view/banner/Banner;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 376
    :cond_2f
    invoke-direct {p0, v2}, Lcom/codemao/nemo/view/banner/Banner;->setScaleType(Landroid/view/View;)V

    if-nez v1, :cond_3d

    .line 379
    iget v3, p0, Lcom/codemao/nemo/view/banner/Banner;->count:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_4e

    .line 380
    :cond_3d
    iget v3, p0, Lcom/codemao/nemo/view/banner/Banner;->count:I

    add-int/lit8 v3, v3, 0x1

    if-ne v1, v3, :cond_48

    .line 381
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_4e

    :cond_48
    add-int/lit8 v3, v1, -0x1

    .line 383
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 385
    :goto_4e
    iget v4, p0, Lcom/codemao/nemo/view/banner/Banner;->paddingLeft:I

    iget v5, p0, Lcom/codemao/nemo/view/banner/Banner;->paddingTop:I

    iget v6, p0, Lcom/codemao/nemo/view/banner/Banner;->paddingRight:I

    iget v7, p0, Lcom/codemao/nemo/view/banner/Banner;->paddingBottom:I

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 386
    iget-object v4, p0, Lcom/codemao/nemo/view/banner/Banner;->imageViews:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    iget-object v4, p0, Lcom/codemao/nemo/view/banner/Banner;->imageLoader:Lcom/codemao/nemo/view/banner/loader/ImageLoaderInterface;

    if-eqz v4, :cond_68

    .line 388
    iget-object v5, p0, Lcom/codemao/nemo/view/banner/Banner;->context:Landroid/content/Context;

    invoke-interface {v4, v5, v3, v2}, Lcom/codemao/nemo/view/banner/loader/ImageLoaderInterface;->displayImage(Landroid/content/Context;Ljava/lang/Object;Landroid/view/View;)V

    goto :goto_6f

    .line 390
    :cond_68
    iget-object v2, p0, Lcom/codemao/nemo/view/banner/Banner;->tag:Ljava/lang/String;

    const-string v3, "Please set images loader."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6f
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_72
    return-void

    .line 362
    :cond_73
    :goto_73
    iget-object p1, p0, Lcom/codemao/nemo/view/banner/Banner;->bannerDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 363
    iget-object p1, p0, Lcom/codemao/nemo/view/banner/Banner;->tag:Ljava/lang/String;

    const-string v0, "The image data set is empty."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setScaleType(Landroid/view/View;)V
    .registers 3

    .line 404
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_3b

    .line 405
    check-cast p1, Landroid/widget/ImageView;

    .line 406
    iget v0, p0, Lcom/codemao/nemo/view/banner/Banner;->scaleType:I

    packed-switch v0, :pswitch_data_3c

    goto :goto_3b

    .line 429
    :pswitch_c  #0x7
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_3b

    .line 426
    :pswitch_12  #0x6
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_3b

    .line 423
    :pswitch_18  #0x5
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_3b

    .line 420
    :pswitch_1e  #0x4
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_3b

    .line 417
    :pswitch_24  #0x3
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_3b

    .line 414
    :pswitch_2a  #0x2
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_3b

    .line 411
    :pswitch_30  #0x1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_3b

    .line 408
    :pswitch_36  #0x0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_3b
    :goto_3b
    return-void

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_36  #00000000
        :pswitch_30  #00000001
        :pswitch_2a  #00000002
        :pswitch_24  #00000003
        :pswitch_1e  #00000004
        :pswitch_18  #00000005
        :pswitch_12  #00000006
        :pswitch_c  #00000007
    .end packed-switch
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 511
    iget-boolean v0, p0, Lcom/codemao/nemo/view/banner/Banner;->isAutoPlay:Z

    if-eqz v0, :cond_1b

    .line 512
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    const/4 v1, 0x3

    if-eq v0, v1, :cond_18

    const/4 v1, 0x4

    if-ne v0, v1, :cond_12

    goto :goto_18

    :cond_12
    if-nez v0, :cond_1b

    .line 517
    invoke-virtual {p0}, Lcom/codemao/nemo/view/banner/Banner;->stopAutoPlay()V

    goto :goto_1b

    .line 515
    :cond_18
    :goto_18
    invoke-virtual {p0}, Lcom/codemao/nemo/view/banner/Banner;->startAutoPlay()V

    .line 520
    :cond_1b
    :goto_1b
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onPageScrollStateChanged(I)V
    .registers 6

    .line 587
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/Banner;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_7

    .line 588
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_7
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_24

    if-eq p1, v1, :cond_e

    goto :goto_3a

    .line 600
    :cond_e
    iget p1, p0, Lcom/codemao/nemo/view/banner/Banner;->currentItem:I

    iget v2, p0, Lcom/codemao/nemo/view/banner/Banner;->count:I

    add-int/lit8 v3, v2, 0x1

    if-ne p1, v3, :cond_1c

    .line 601
    iget-object p1, p0, Lcom/codemao/nemo/view/banner/Banner;->viewPager:Lcom/codemao/nemo/view/banner/view/BannerViewPager;

    invoke-virtual {p1, v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_3a

    :cond_1c
    if-nez p1, :cond_3a

    .line 603
    iget-object p1, p0, Lcom/codemao/nemo/view/banner/Banner;->viewPager:Lcom/codemao/nemo/view/banner/view/BannerViewPager;

    invoke-virtual {p1, v2, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_3a

    .line 593
    :cond_24
    iget p1, p0, Lcom/codemao/nemo/view/banner/Banner;->currentItem:I

    if-nez p1, :cond_30

    .line 594
    iget-object p1, p0, Lcom/codemao/nemo/view/banner/Banner;->viewPager:Lcom/codemao/nemo/view/banner/view/BannerViewPager;

    iget v1, p0, Lcom/codemao/nemo/view/banner/Banner;->count:I

    invoke-virtual {p1, v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_3a

    .line 595
    :cond_30
    iget v2, p0, Lcom/codemao/nemo/view/banner/Banner;->count:I

    add-int/2addr v2, v1

    if-ne p1, v2, :cond_3a

    .line 596
    iget-object p1, p0, Lcom/codemao/nemo/view/banner/Banner;->viewPager:Lcom/codemao/nemo/view/banner/view/BannerViewPager;

    invoke-virtual {p1, v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 5

    .line 613
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/Banner;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_b

    .line 614
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/view/banner/Banner;->toRealPosition(I)I

    move-result p1

    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_b
    return-void
.end method

.method public onPageSelected(I)V
    .registers 8

    .line 620
    iput p1, p0, Lcom/codemao/nemo/view/banner/Banner;->currentItem:I

    .line 621
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/Banner;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_d

    .line 622
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/view/banner/Banner;->toRealPosition(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 624
    :cond_d
    iget v0, p0, Lcom/codemao/nemo/view/banner/Banner;->bannerStyle:I

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq v0, v3, :cond_18

    if-eq v0, v2, :cond_18

    if-ne v0, v1, :cond_41

    .line 627
    :cond_18
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/Banner;->indicatorImages:Ljava/util/List;

    iget v4, p0, Lcom/codemao/nemo/view/banner/Banner;->lastPosition:I

    sub-int/2addr v4, v3

    iget v5, p0, Lcom/codemao/nemo/view/banner/Banner;->count:I

    add-int/2addr v4, v5

    rem-int/2addr v4, v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v4, p0, Lcom/codemao/nemo/view/banner/Banner;->mIndicatorUnselectedResId:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 628
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/Banner;->indicatorImages:Ljava/util/List;

    add-int/lit8 v4, p1, -0x1

    iget v5, p0, Lcom/codemao/nemo/view/banner/Banner;->count:I

    add-int/2addr v4, v5

    rem-int/2addr v4, v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v4, p0, Lcom/codemao/nemo/view/banner/Banner;->mIndicatorSelectedResId:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 629
    iput p1, p0, Lcom/codemao/nemo/view/banner/Banner;->lastPosition:I

    :cond_41
    if-nez p1, :cond_45

    .line 631
    iget p1, p0, Lcom/codemao/nemo/view/banner/Banner;->count:I

    .line 632
    :cond_45
    iget v0, p0, Lcom/codemao/nemo/view/banner/Banner;->count:I

    if-le p1, v0, :cond_4a

    const/4 p1, 0x1

    .line 633
    :cond_4a
    iget v0, p0, Lcom/codemao/nemo/view/banner/Banner;->bannerStyle:I

    const/4 v4, 0x2

    const-string v5, "/"

    if-eq v0, v4, :cond_9f

    const/4 v4, 0x3

    if-eq v0, v4, :cond_77

    if-eq v0, v2, :cond_68

    if-eq v0, v1, :cond_59

    goto :goto_b8

    .line 647
    :cond_59
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/Banner;->bannerTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/nemo/view/banner/Banner;->titles:Ljava/util/List;

    sub-int/2addr p1, v3

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b8

    .line 644
    :cond_68
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/Banner;->bannerTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/nemo/view/banner/Banner;->titles:Ljava/util/List;

    sub-int/2addr p1, v3

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b8

    .line 640
    :cond_77
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/Banner;->numIndicatorInside:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/codemao/nemo/view/banner/Banner;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/Banner;->bannerTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/nemo/view/banner/Banner;->titles:Ljava/util/List;

    sub-int/2addr p1, v3

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b8

    .line 637
    :cond_9f
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/Banner;->numIndicator:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/codemao/nemo/view/banner/Banner;->count:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_b8
    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .registers 2

    .line 671
    iput-object p1, p0, Lcom/codemao/nemo/view/banner/Banner;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public startAutoPlay()V
    .registers 5

    .line 483
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/Banner;->handler:Lcom/codemao/nemo/view/banner/WeakHandler;

    iget-object v1, p0, Lcom/codemao/nemo/view/banner/Banner;->task:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/banner/WeakHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 484
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/Banner;->handler:Lcom/codemao/nemo/view/banner/WeakHandler;

    iget-object v1, p0, Lcom/codemao/nemo/view/banner/Banner;->task:Ljava/lang/Runnable;

    iget v2, p0, Lcom/codemao/nemo/view/banner/Banner;->delayTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/nemo/view/banner/WeakHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stopAutoPlay()V
    .registers 3

    .line 488
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/Banner;->handler:Lcom/codemao/nemo/view/banner/WeakHandler;

    iget-object v1, p0, Lcom/codemao/nemo/view/banner/Banner;->task:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/banner/WeakHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toRealPosition(I)I
    .registers 3

    add-int/lit8 p1, p1, -0x1

    .line 530
    iget v0, p0, Lcom/codemao/nemo/view/banner/Banner;->count:I

    rem-int/2addr p1, v0

    if-gez p1, :cond_8

    add-int/2addr p1, v0

    :cond_8
    return p1
.end method
