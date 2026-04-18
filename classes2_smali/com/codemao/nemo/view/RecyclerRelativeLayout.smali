.class public Lcom/codemao/nemo/view/RecyclerRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "RecyclerRelativeLayout.java"


# instance fields
.field private adapter:Lcom/codemao/nemo/view/RVAdapter;

.field private clickPosition:I

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CardVO;",
            ">;"
        }
    .end annotation
.end field

.field private dxSum:I

.field private gestureDetector:Landroid/view/GestureDetector;

.field private isCancelDownLoad:Z

.field private isCopy:Z

.field private isDelete:Z

.field private layoutManager:Lcom/codemao/nemo/view/CarouselLayoutManager;

.field private final measureAndLayout:Ljava/lang/Runnable;

.field private moduleCount:I

.field private onCardClickListener:Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;

.field private recyclerView:Lcom/codemao/nemo/view/MyRecyclerView;

.field private rlProgress:Landroid/widget/RelativeLayout;

.field private screenHeight:I

.field private screenWitdh:I

.field private slideProgressWB:F

.field private slideProgressWF:F

.field private tvWorksNum:Landroid/widget/TextView;

.field private valueAnimator:Landroid/animation/ValueAnimator;

.field private viewCover:Landroid/view/View;

.field private viewProgress:Landroid/view/View;

.field private witdhI:I

.field private witdhP:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 41
    iput p2, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->dxSum:I

    const/4 p2, 0x0

    .line 42
    iput p2, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->witdhP:F

    const/4 p2, 0x5

    .line 49
    iput p2, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->moduleCount:I

    .line 53
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 348
    new-instance p2, Lcom/codemao/nemo/view/RecyclerRelativeLayout$6;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/view/RecyclerRelativeLayout$6;-><init>(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)V

    iput-object p2, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->measureAndLayout:Ljava/lang/Runnable;

    .line 74
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Lcom/codemao/nemo/view/MyRecyclerView;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->recyclerView:Lcom/codemao/nemo/view/MyRecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Lcom/codemao/nemo/view/CarouselLayoutManager;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->layoutManager:Lcom/codemao/nemo/view/CarouselLayoutManager;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)F
    .registers 1

    .line 28
    iget p0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->slideProgressWF:F

    return p0
.end method

.method static synthetic access$1100(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Ljava/util/List;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->datas:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Landroid/view/View;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->viewProgress:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->rlProgress:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Landroid/widget/TextView;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->tvWorksNum:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/codemao/nemo/view/RecyclerRelativeLayout;I)I
    .registers 2

    .line 28
    iput p1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->clickPosition:I

    return p1
.end method

.method static synthetic access$1600(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->onCardClickListener:Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/codemao/nemo/view/RecyclerRelativeLayout;Z)Z
    .registers 2

    .line 28
    iput-boolean p1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->isDelete:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/codemao/nemo/view/RecyclerRelativeLayout;Z)Z
    .registers 2

    .line 28
    iput-boolean p1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->isCopy:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/codemao/nemo/view/RecyclerRelativeLayout;Z)Z
    .registers 2

    .line 28
    iput-boolean p1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->isCancelDownLoad:Z

    return p1
.end method

.method static synthetic access$200(Lcom/codemao/nemo/view/RecyclerRelativeLayout;J)V
    .registers 3

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->showCover(J)V

    return-void
.end method

.method static synthetic access$2000(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Landroid/view/View;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->viewCover:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Lcom/codemao/nemo/view/RVAdapter;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->adapter:Lcom/codemao/nemo/view/RVAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Landroid/view/GestureDetector;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->gestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$500(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)I
    .registers 1

    .line 28
    iget p0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->dxSum:I

    return p0
.end method

.method static synthetic access$512(Lcom/codemao/nemo/view/RecyclerRelativeLayout;I)I
    .registers 3

    .line 28
    iget v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->dxSum:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->dxSum:I

    return v0
.end method

.method static synthetic access$600(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)I
    .registers 1

    .line 28
    iget p0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->moduleCount:I

    return p0
.end method

.method static synthetic access$700(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)I
    .registers 1

    .line 28
    iget p0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->witdhI:I

    return p0
.end method

.method static synthetic access$800(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)F
    .registers 1

    .line 28
    iget p0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->witdhP:F

    return p0
.end method

.method static synthetic access$802(Lcom/codemao/nemo/view/RecyclerRelativeLayout;F)F
    .registers 2

    .line 28
    iput p1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->witdhP:F

    return p1
.end method

.method static synthetic access$900(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)F
    .registers 1

    .line 28
    iget p0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->slideProgressWB:F

    return p0
.end method

.method private init(Landroid/content/Context;)V
    .registers 2

    .line 78
    invoke-direct {p0}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->initData()V

    .line 79
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initData()V
    .registers 5

    .line 83
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->screenHeight:I

    .line 84
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->screenWitdh:I

    .line 85
    iget v1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->screenHeight:I

    if-ge v0, v1, :cond_20

    .line 87
    iput v1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->screenWitdh:I

    .line 88
    iput v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->screenHeight:I

    .line 90
    :cond_20
    iget v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->screenHeight:I

    int-to-float v1, v0

    const v2, 0x3ed4fdf4  # 0.416f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->witdhI:I

    const v1, 0x3f088659  # 0.5333f

    int-to-float v3, v0

    mul-float v3, v3, v1

    .line 91
    iput v3, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->slideProgressWB:F

    const v1, 0x3daeb1c4  # 0.0853f

    int-to-float v0, v0

    mul-float v0, v0, v1

    .line 92
    iput v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->slideProgressWF:F

    .line 93
    new-instance v0, Lcom/codemao/nemo/view/MyItemAnimator;

    invoke-direct {v0}, Lcom/codemao/nemo/view/MyItemAnimator;-><init>()V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->datas:Ljava/util/List;

    .line 95
    new-instance v0, Lcom/codemao/nemo/view/CarouselLayoutManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/nemo/view/CarouselLayoutManager;-><init>(I)V

    iput-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->layoutManager:Lcom/codemao/nemo/view/CarouselLayoutManager;

    .line 96
    iget v1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->screenWitdh:I

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/CarouselLayoutManager;->setScreenWitdh(I)V

    .line 97
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->layoutManager:Lcom/codemao/nemo/view/CarouselLayoutManager;

    iget v1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->screenHeight:I

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/CarouselLayoutManager;->setScreenHeight(I)V

    .line 98
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->layoutManager:Lcom/codemao/nemo/view/CarouselLayoutManager;

    iget v1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->screenHeight:I

    int-to-float v1, v1

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/CarouselLayoutManager;->setLeftWitdh(I)V

    .line 99
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->layoutManager:Lcom/codemao/nemo/view/CarouselLayoutManager;

    iget v1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->screenHeight:I

    int-to-float v1, v1

    const v2, 0x3ef0a3d7  # 0.47f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/CarouselLayoutManager;->setRightWitdh(I)V

    .line 100
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->layoutManager:Lcom/codemao/nemo/view/CarouselLayoutManager;

    new-instance v1, Lcom/codemao/nemo/view/CarouselZoomPostLayoutListener;

    invoke-direct {v1}, Lcom/codemao/nemo/view/CarouselZoomPostLayoutListener;-><init>()V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/CarouselLayoutManager;->setPostLayoutListener(Lcom/codemao/nemo/view/CarouselLayoutManager$PostLayoutListener;)V

    .line 101
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->layoutManager:Lcom/codemao/nemo/view/CarouselLayoutManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/CarouselLayoutManager;->setMaxVisibleItems(I)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .registers 5

    .line 105
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d02e3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0a0681

    .line 106
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/MyRecyclerView;

    iput-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->recyclerView:Lcom/codemao/nemo/view/MyRecyclerView;

    const v0, 0x7f0a0964

    .line 107
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->viewProgress:Landroid/view/View;

    const v0, 0x7f0a064f

    .line 108
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->rlProgress:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0928

    .line 109
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->tvWorksNum:Landroid/widget/TextView;

    const v0, 0x7f0a094f

    .line 110
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->viewCover:Landroid/view/View;

    .line 111
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/view/RecyclerRelativeLayout$1;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/view/RecyclerRelativeLayout$1;-><init>(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->gestureDetector:Landroid/view/GestureDetector;

    .line 155
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->recyclerView:Lcom/codemao/nemo/view/MyRecyclerView;

    new-instance v1, Lcom/codemao/nemo/view/RecyclerRelativeLayout$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/RecyclerRelativeLayout$2;-><init>(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 161
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->rlProgress:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->slideProgressWB:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 162
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->viewProgress:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->slideProgressWF:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 164
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->recyclerView:Lcom/codemao/nemo/view/MyRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 165
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->recyclerView:Lcom/codemao/nemo/view/MyRecyclerView;

    new-instance v1, Lcom/codemao/nemo/view/CenterScrollListener;

    new-instance v2, Lcom/codemao/nemo/view/RecyclerRelativeLayout$3;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/view/RecyclerRelativeLayout$3;-><init>(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)V

    invoke-direct {v1, v2}, Lcom/codemao/nemo/view/CenterScrollListener;-><init>(Lcom/codemao/nemo/view/CenterScrollListener$OnScrollListener;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 197
    new-instance v0, Lcom/codemao/nemo/view/RVAdapter;

    iget-object v1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->datas:Ljava/util/List;

    new-instance v2, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/view/RecyclerRelativeLayout$4;-><init>(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/codemao/nemo/view/RVAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;)V

    iput-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->adapter:Lcom/codemao/nemo/view/RVAdapter;

    .line 314
    iget p1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->screenWitdh:I

    iget v1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->screenHeight:I

    invoke-virtual {v0, p1, v1}, Lcom/codemao/nemo/view/RVAdapter;->setScreenSize(II)V

    .line 315
    iget-object p1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->recyclerView:Lcom/codemao/nemo/view/MyRecyclerView;

    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->layoutManager:Lcom/codemao/nemo/view/CarouselLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 316
    iget-object p1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->recyclerView:Lcom/codemao/nemo/view/MyRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 318
    iget-object p1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->recyclerView:Lcom/codemao/nemo/view/MyRecyclerView;

    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->adapter:Lcom/codemao/nemo/view/RVAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private setBottomProgress(I)V
    .registers 6

    .line 365
    iget v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->witdhI:I

    mul-int p1, p1, v0

    iput p1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->dxSum:I

    int-to-float p1, p1

    .line 366
    iget v1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->moduleCount:I

    mul-int v1, v1, v0

    int-to-float v1, v1

    sub-float/2addr p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 367
    iget v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->slideProgressWB:F

    iget v1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->slideProgressWF:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    iget v2, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->moduleCount:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->witdhP:F

    mul-float v0, v0, p1

    float-to-double v0, v0

    .line 368
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 369
    iget-object v1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->viewProgress:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x0

    .line 370
    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 371
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->viewProgress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, -0x40800000  # -1.0f

    cmpg-float v1, p1, v0

    if-lez v1, :cond_55

    .line 372
    iget-object v1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v3, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->moduleCount:I

    sub-int/2addr v1, v3

    const/4 v3, 0x3

    if-gt v1, v3, :cond_4f

    goto :goto_55

    .line 375
    :cond_4f
    iget-object v1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->rlProgress:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_5c

    .line 373
    :cond_55
    :goto_55
    iget-object v1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->rlProgress:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_5c
    cmpl-float v0, p1, v0

    if-ltz v0, :cond_6d

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_6d

    .line 378
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->rlProgress:Landroid/widget/RelativeLayout;

    const/high16 v1, 0x3f800000  # 1.0f

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    :cond_6d
    return-void
.end method

.method private showCover(J)V
    .registers 6

    .line 323
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->valueAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/high16 v2, 0x40a00000  # 5.0f

    aput v2, v0, v1

    .line 324
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 325
    new-instance v2, Lcom/codemao/nemo/view/RecyclerRelativeLayout$5;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/view/RecyclerRelativeLayout$5;-><init>(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 335
    :cond_1a
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 336
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->viewCover:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 345
    iget-object p1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public requestLayout()V
    .registers 2

    .line 360
    invoke-super {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 361
    iget-object v0, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->measureAndLayout:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCardListener(Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;)V
    .registers 2

    .line 730
    iput-object p1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->onCardClickListener:Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;

    return-void
.end method
