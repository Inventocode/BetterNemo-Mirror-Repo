.class public Lcom/codemao/nemo/view/OpenLessonRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "OpenLessonRelativeLayout.java"


# instance fields
.field private adapter:Lcom/codemao/nemo/view/OpenLessonRVAdapter;

.field private clickPosition:I

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CourseVO;",
            ">;"
        }
    .end annotation
.end field

.field private dxSum:I

.field private layoutManager:Lcom/codemao/nemo/view/CarouselLayoutManager;

.field private final measureAndLayout:Ljava/lang/Runnable;

.field private onLessonClickListener:Lcom/codemao/nemo/view/OpenLessonRVAdapter$OnLessonClickListener;

.field private padding:I

.field private recyclerView:Lcom/codemao/nemo/view/MyRecyclerView;

.field private rlProgress:Landroid/widget/RelativeLayout;

.field private screenHeight:I

.field private screenWitdh:I

.field private slideProgressWB:F

.field private slideProgressWF:F

.field private tvWorksNum:Landroid/widget/TextView;

.field private viewProgress:Landroid/view/View;

.field private witdhI:I

.field private witdhP:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 37
    iput p2, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->dxSum:I

    const/4 p2, 0x0

    .line 38
    iput p2, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->witdhP:F

    .line 140
    new-instance p2, Lcom/codemao/nemo/view/OpenLessonRelativeLayout$3;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/view/OpenLessonRelativeLayout$3;-><init>(Lcom/codemao/nemo/view/OpenLessonRelativeLayout;)V

    iput-object p2, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->measureAndLayout:Ljava/lang/Runnable;

    .line 62
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/view/OpenLessonRelativeLayout;)I
    .registers 1

    .line 25
    iget p0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->dxSum:I

    return p0
.end method

.method static synthetic access$012(Lcom/codemao/nemo/view/OpenLessonRelativeLayout;I)I
    .registers 3

    .line 25
    iget v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->dxSum:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->dxSum:I

    return v0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/view/OpenLessonRelativeLayout;)I
    .registers 1

    .line 25
    iget p0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->witdhI:I

    return p0
.end method

.method static synthetic access$1000(Lcom/codemao/nemo/view/OpenLessonRelativeLayout;)Lcom/codemao/nemo/view/OpenLessonRVAdapter$OnLessonClickListener;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->onLessonClickListener:Lcom/codemao/nemo/view/OpenLessonRVAdapter$OnLessonClickListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/codemao/nemo/view/OpenLessonRelativeLayout;)Lcom/codemao/nemo/view/MyRecyclerView;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->recyclerView:Lcom/codemao/nemo/view/MyRecyclerView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/view/OpenLessonRelativeLayout;)F
    .registers 1

    .line 25
    iget p0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->witdhP:F

    return p0
.end method

.method static synthetic access$202(Lcom/codemao/nemo/view/OpenLessonRelativeLayout;F)F
    .registers 2

    .line 25
    iput p1, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->witdhP:F

    return p1
.end method

.method static synthetic access$300(Lcom/codemao/nemo/view/OpenLessonRelativeLayout;)F
    .registers 1

    .line 25
    iget p0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->slideProgressWB:F

    return p0
.end method

.method static synthetic access$400(Lcom/codemao/nemo/view/OpenLessonRelativeLayout;)F
    .registers 1

    .line 25
    iget p0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->slideProgressWF:F

    return p0
.end method

.method static synthetic access$500(Lcom/codemao/nemo/view/OpenLessonRelativeLayout;)Ljava/util/List;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->datas:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/codemao/nemo/view/OpenLessonRelativeLayout;)Landroid/view/View;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->viewProgress:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/codemao/nemo/view/OpenLessonRelativeLayout;)Lcom/codemao/nemo/view/CarouselLayoutManager;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->layoutManager:Lcom/codemao/nemo/view/CarouselLayoutManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/codemao/nemo/view/OpenLessonRelativeLayout;)Landroid/widget/TextView;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->tvWorksNum:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$902(Lcom/codemao/nemo/view/OpenLessonRelativeLayout;I)I
    .registers 2

    .line 25
    iput p1, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->clickPosition:I

    return p1
.end method

.method private init(Landroid/content/Context;)V
    .registers 2

    .line 66
    invoke-direct {p0}, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->initData()V

    .line 67
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initData()V
    .registers 7

    .line 71
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->screenHeight:I

    .line 72
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->screenWitdh:I

    .line 73
    iget v1, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->screenHeight:I

    if-ge v0, v1, :cond_20

    .line 75
    iput v1, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->screenWitdh:I

    .line 76
    iput v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->screenHeight:I

    .line 78
    :cond_20
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_43

    .line 79
    iget v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->screenHeight:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->screenHeight:I

    .line 80
    iget v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->screenWitdh:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->screenWitdh:I

    .line 82
    :cond_43
    iget v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->screenHeight:I

    int-to-double v1, v0

    const-wide v3, 0x3fa47ae147ae147bL  # 0.04

    mul-double v1, v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->padding:I

    int-to-float v2, v0

    const v3, 0x3edfbe77  # 0.437f

    mul-float v2, v2, v3

    float-to-int v2, v2

    const/4 v3, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    .line 83
    iput v2, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->witdhI:I

    const v1, 0x3f088659  # 0.5333f

    int-to-float v2, v0

    mul-float v2, v2, v1

    .line 84
    iput v2, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->slideProgressWB:F

    const v1, 0x3daeb1c4  # 0.0853f

    int-to-float v0, v0

    mul-float v0, v0, v1

    .line 85
    iput v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->slideProgressWF:F

    .line 86
    new-instance v0, Lcom/codemao/nemo/view/MyItemAnimator;

    invoke-direct {v0}, Lcom/codemao/nemo/view/MyItemAnimator;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->datas:Ljava/util/List;

    .line 88
    new-instance v0, Lcom/codemao/nemo/view/CarouselLayoutManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/nemo/view/CarouselLayoutManager;-><init>(I)V

    iput-object v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->layoutManager:Lcom/codemao/nemo/view/CarouselLayoutManager;

    .line 89
    iget v1, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->padding:I

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/CarouselLayoutManager;->setPadding(I)V

    .line 90
    iget-object v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->layoutManager:Lcom/codemao/nemo/view/CarouselLayoutManager;

    iget v1, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->screenWitdh:I

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/CarouselLayoutManager;->setScreenWitdh(I)V

    .line 91
    iget-object v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->layoutManager:Lcom/codemao/nemo/view/CarouselLayoutManager;

    iget v1, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->screenHeight:I

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/CarouselLayoutManager;->setScreenHeight(I)V

    .line 92
    iget-object v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->layoutManager:Lcom/codemao/nemo/view/CarouselLayoutManager;

    iget v1, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->screenHeight:I

    int-to-double v1, v1

    const-wide v4, 0x3fdbf7ced916872bL  # 0.437

    mul-double v1, v1, v4

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/CarouselLayoutManager;->setLeftWitdh(I)V

    .line 93
    iget-object v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->layoutManager:Lcom/codemao/nemo/view/CarouselLayoutManager;

    iget v1, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->screenHeight:I

    int-to-double v1, v1

    mul-double v1, v1, v4

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/CarouselLayoutManager;->setRightWitdh(I)V

    .line 94
    iget-object v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->layoutManager:Lcom/codemao/nemo/view/CarouselLayoutManager;

    new-instance v1, Lcom/codemao/nemo/view/CarouselZoomPostLayoutListener;

    invoke-direct {v1}, Lcom/codemao/nemo/view/CarouselZoomPostLayoutListener;-><init>()V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/CarouselLayoutManager;->setPostLayoutListener(Lcom/codemao/nemo/view/CarouselLayoutManager$PostLayoutListener;)V

    .line 95
    iget-object v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->layoutManager:Lcom/codemao/nemo/view/CarouselLayoutManager;

    invoke-virtual {v0, v3}, Lcom/codemao/nemo/view/CarouselLayoutManager;->setMaxVisibleItems(I)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .registers 5

    .line 99
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d02cf

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0a0681

    .line 100
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/MyRecyclerView;

    iput-object v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->recyclerView:Lcom/codemao/nemo/view/MyRecyclerView;

    const v0, 0x7f0a0964

    .line 101
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->viewProgress:Landroid/view/View;

    const v0, 0x7f0a064f

    .line 102
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->rlProgress:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0928

    .line 103
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->tvWorksNum:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->rlProgress:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->slideProgressWB:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 105
    iget-object v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->viewProgress:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->slideProgressWF:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 107
    iget-object v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->recyclerView:Lcom/codemao/nemo/view/MyRecyclerView;

    new-instance v1, Lcom/codemao/nemo/view/CenterScrollListener;

    new-instance v2, Lcom/codemao/nemo/view/OpenLessonRelativeLayout$1;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/view/OpenLessonRelativeLayout$1;-><init>(Lcom/codemao/nemo/view/OpenLessonRelativeLayout;)V

    invoke-direct {v1, v2}, Lcom/codemao/nemo/view/CenterScrollListener;-><init>(Lcom/codemao/nemo/view/CenterScrollListener$OnScrollListener;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 121
    new-instance v0, Lcom/codemao/nemo/view/OpenLessonRVAdapter;

    iget-object v1, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->datas:Ljava/util/List;

    new-instance v2, Lcom/codemao/nemo/view/OpenLessonRelativeLayout$2;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/view/OpenLessonRelativeLayout$2;-><init>(Lcom/codemao/nemo/view/OpenLessonRelativeLayout;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/codemao/nemo/view/OpenLessonRVAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/codemao/nemo/view/OpenLessonRVAdapter$OnLessonClickListener;)V

    iput-object v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->adapter:Lcom/codemao/nemo/view/OpenLessonRVAdapter;

    .line 133
    iget p1, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->screenWitdh:I

    iget v1, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->screenHeight:I

    invoke-virtual {v0, p1, v1}, Lcom/codemao/nemo/view/OpenLessonRVAdapter;->setScreenSize(II)V

    .line 134
    iget-object p1, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->recyclerView:Lcom/codemao/nemo/view/MyRecyclerView;

    iget-object v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->layoutManager:Lcom/codemao/nemo/view/CarouselLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 135
    iget-object p1, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->recyclerView:Lcom/codemao/nemo/view/MyRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 136
    iget-object p1, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->recyclerView:Lcom/codemao/nemo/view/MyRecyclerView;

    iget-object v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->adapter:Lcom/codemao/nemo/view/OpenLessonRVAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private setBottomProgress(I)V
    .registers 4

    .line 157
    iget v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->witdhI:I

    mul-int p1, p1, v0

    iput p1, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->dxSum:I

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 159
    iget v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->slideProgressWB:F

    iget v1, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->slideProgressWF:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->witdhP:F

    mul-float p1, p1, v0

    float-to-double v0, p1

    .line 160
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    .line 161
    iget-object v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->viewProgress:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    .line 162
    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 163
    iget-object p1, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->viewProgress:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public requestLayout()V
    .registers 2

    .line 152
    invoke-super {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 153
    iget-object v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->measureAndLayout:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setLessonClickjListener(Lcom/codemao/nemo/view/OpenLessonRVAdapter$OnLessonClickListener;)V
    .registers 2

    .line 191
    iput-object p1, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->onLessonClickListener:Lcom/codemao/nemo/view/OpenLessonRVAdapter$OnLessonClickListener;

    return-void
.end method
