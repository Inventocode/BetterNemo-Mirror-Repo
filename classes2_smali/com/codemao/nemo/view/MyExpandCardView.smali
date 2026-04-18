.class public Lcom/codemao/nemo/view/MyExpandCardView;
.super Landroid/widget/LinearLayout;
.source "MyExpandCardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/view/MyExpandCardView$CallBack;
    }
.end annotation


# instance fields
.field private baseScreenHeight:I

.field private defaultAnimCallBack:Landroid/animation/AnimatorListenerAdapter;

.field private defaultUpdateAnimCallBack:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private downArrowView:Landroid/widget/ImageView;

.field private downDeleteView:Landroid/widget/ImageView;

.field private downLineView:Landroid/widget/ImageView;

.field private downRingView:Landroid/widget/ImageView;

.field private downloadAnimSet:Landroid/animation/AnimatorSet;

.field private downloadParentView:Landroid/view/View;

.field private duration:I

.field private leftTextBackColor:Ljava/lang/String;

.field private mBack:Lcom/codemao/nemo/view/MyExpandCardView$CallBack;

.field private mBlockNum:Landroid/widget/TextView;

.field private mBlockWaveBar:Lcom/codemao/nemo/view/WaveBar;

.field private mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mLeftBgIV:Landroid/widget/ImageView;

.field private mLeftNameTV:Landroid/widget/TextView;

.field private mLeftParentView:Landroid/view/View;

.field private mRightParentView:Landroid/view/View;

.field private mRoleNum:Landroid/widget/TextView;

.field private mRoleWaveBar:Lcom/codemao/nemo/view/WaveBar;

.field private normalWindow:Landroid/view/View;

.field private removeWindow:Landroid/view/View;

.field private roundRadius:F

.field private scale:F

.field private upArrowView:Landroid/widget/ImageView;

.field private upLineView:Landroid/widget/ImageView;

.field private upRingView:Landroid/widget/ImageView;

.field private uploadAnimSet:Landroid/animation/AnimatorSet;

.field private uploadParentView:Landroid/view/View;

.field private views:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/view/MyExpandCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x1f4

    .line 42
    iput p3, p0, Lcom/codemao/nemo/view/MyExpandCardView;->duration:I

    const-string p3, "#333D48"

    .line 77
    iput-object p3, p0, Lcom/codemao/nemo/view/MyExpandCardView;->leftTextBackColor:Ljava/lang/String;

    .line 370
    new-instance p3, Lcom/codemao/nemo/view/MyExpandCardView$12;

    invoke-direct {p3, p0}, Lcom/codemao/nemo/view/MyExpandCardView$12;-><init>(Lcom/codemao/nemo/view/MyExpandCardView;)V

    iput-object p3, p0, Lcom/codemao/nemo/view/MyExpandCardView;->defaultUpdateAnimCallBack:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 378
    new-instance p3, Lcom/codemao/nemo/view/MyExpandCardView$13;

    invoke-direct {p3, p0}, Lcom/codemao/nemo/view/MyExpandCardView$13;-><init>(Lcom/codemao/nemo/view/MyExpandCardView;)V

    iput-object p3, p0, Lcom/codemao/nemo/view/MyExpandCardView;->defaultAnimCallBack:Landroid/animation/AnimatorListenerAdapter;

    .line 90
    sget-object p3, Lcom/codemao/nemo/R$styleable;->MyExpandCardView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x0

    const/16 v0, 0x168

    .line 91
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/codemao/nemo/view/MyExpandCardView;->baseScreenHeight:I

    const/4 p3, 0x1

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/codemao/nemo/view/MyExpandCardView;->roundRadius:F

    .line 93
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/MyExpandCardView;->getScreenHeight(Landroid/content/Context;)I

    move-result p3

    int-to-float p3, p3

    iget v0, p0, Lcom/codemao/nemo/view/MyExpandCardView;->baseScreenHeight:I

    int-to-float v0, v0

    div-float/2addr p3, v0

    iput p3, p0, Lcom/codemao/nemo/view/MyExpandCardView;->scale:F

    .line 94
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    invoke-direct {p0}, Lcom/codemao/nemo/view/MyExpandCardView;->init()V

    .line 97
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/MyExpandCardView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/view/MyExpandCardView;)Lcom/codemao/nemo/view/MyExpandCardView$CallBack;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/codemao/nemo/view/MyExpandCardView;->mBack:Lcom/codemao/nemo/view/MyExpandCardView$CallBack;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/view/MyExpandCardView;)Landroid/view/View;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/codemao/nemo/view/MyExpandCardView;->removeWindow:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/view/MyExpandCardView;)Landroid/widget/ImageView;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/codemao/nemo/view/MyExpandCardView;->mLeftBgIV:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/nemo/view/MyExpandCardView;Landroid/widget/ImageView;F)V
    .registers 3

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/view/MyExpandCardView;->setColorMatrix(Landroid/widget/ImageView;F)V

    return-void
.end method

.method static synthetic access$400(Lcom/codemao/nemo/view/MyExpandCardView;)Landroid/view/View;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/codemao/nemo/view/MyExpandCardView;->mRightParentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/codemao/nemo/view/MyExpandCardView;)I
    .registers 1

    .line 40
    iget p0, p0, Lcom/codemao/nemo/view/MyExpandCardView;->duration:I

    return p0
.end method

.method static synthetic access$600(Lcom/codemao/nemo/view/MyExpandCardView;Landroid/view/View;FFJILandroid/animation/AnimatorListenerAdapter;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ObjectAnimator;
    .registers 9

    .line 40
    invoke-direct/range {p0 .. p8}, Lcom/codemao/nemo/view/MyExpandCardView;->translateXAnim(Landroid/view/View;FFJILandroid/animation/AnimatorListenerAdapter;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/codemao/nemo/view/MyExpandCardView;)Landroid/view/View;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/codemao/nemo/view/MyExpandCardView;->normalWindow:Landroid/view/View;

    return-object p0
.end method

.method private alphaAnim(Landroid/view/View;FFJILandroid/animation/AnimatorListenerAdapter;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ObjectAnimator;
    .registers 19

    const-string v2, "alpha"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 315
    invoke-direct/range {v0 .. v9}, Lcom/codemao/nemo/view/MyExpandCardView;->objectAnim(Landroid/view/View;Ljava/lang/String;FFJILandroid/animation/AnimatorListenerAdapter;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private getScreenHeight(Landroid/content/Context;)I
    .registers 3

    const-string v0, "window"

    .line 583
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 584
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 585
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 586
    iget p1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p1
.end method

.method private init()V
    .registers 4

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 103
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v1, p0, Lcom/codemao/nemo/view/MyExpandCardView;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    return-void
.end method

.method private initDownloadView()V
    .registers 3

    const v0, 0x7f0a01f0

    .line 116
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/view/MyExpandCardView;->downloadParentView:Landroid/view/View;

    const/16 v1, 0x8

    .line 117
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a01ee

    .line 118
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/nemo/view/MyExpandCardView;->downRingView:Landroid/widget/ImageView;

    const v0, 0x7f0a01eb

    .line 119
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/nemo/view/MyExpandCardView;->downArrowView:Landroid/widget/ImageView;

    const v0, 0x7f0a01ed

    .line 120
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/nemo/view/MyExpandCardView;->downLineView:Landroid/widget/ImageView;

    const v0, 0x7f0a01ec

    .line 121
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/nemo/view/MyExpandCardView;->downDeleteView:Landroid/widget/ImageView;

    .line 122
    new-instance v1, Lcom/codemao/nemo/view/MyExpandCardView$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/MyExpandCardView$1;-><init>(Lcom/codemao/nemo/view/MyExpandCardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initLeftParentView()V
    .registers 3

    const v0, 0x7f0a0487

    .line 142
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/view/MyExpandCardView;->mLeftParentView:Landroid/view/View;

    const/4 v1, 0x0

    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0507

    .line 144
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/nemo/view/MyExpandCardView;->mLeftBgIV:Landroid/widget/ImageView;

    const v0, 0x7f0a0508

    .line 145
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/nemo/view/MyExpandCardView;->mLeftNameTV:Landroid/widget/TextView;

    return-void
.end method

.method private initRightParentView()V
    .registers 3

    const v0, 0x7f0a061a

    .line 149
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/view/MyExpandCardView;->mRightParentView:Landroid/view/View;

    const/4 v1, 0x0

    .line 150
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a057e

    .line 151
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/view/MyExpandCardView;->normalWindow:Landroid/view/View;

    .line 152
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a066f

    .line 153
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/nemo/view/MyExpandCardView;->mRoleNum:Landroid/widget/TextView;

    const v0, 0x7f0a00b9

    .line 154
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/nemo/view/MyExpandCardView;->mBlockNum:Landroid/widget/TextView;

    const v0, 0x7f0a09a6

    .line 155
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/WaveBar;

    iput-object v0, p0, Lcom/codemao/nemo/view/MyExpandCardView;->mRoleWaveBar:Lcom/codemao/nemo/view/WaveBar;

    const v0, 0x7f0a09a4

    .line 156
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/WaveBar;

    iput-object v0, p0, Lcom/codemao/nemo/view/MyExpandCardView;->mBlockWaveBar:Lcom/codemao/nemo/view/WaveBar;

    const v0, 0x7f0a0619

    .line 158
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/view/MyExpandCardView$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/MyExpandCardView$2;-><init>(Lcom/codemao/nemo/view/MyExpandCardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0221

    .line 167
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/view/MyExpandCardView$3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/MyExpandCardView$3;-><init>(Lcom/codemao/nemo/view/MyExpandCardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0196

    .line 176
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/view/MyExpandCardView$4;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/MyExpandCardView$4;-><init>(Lcom/codemao/nemo/view/MyExpandCardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0716

    .line 185
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/view/MyExpandCardView$5;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/MyExpandCardView$5;-><init>(Lcom/codemao/nemo/view/MyExpandCardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0936

    .line 194
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/view/MyExpandCardView$6;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/MyExpandCardView$6;-><init>(Lcom/codemao/nemo/view/MyExpandCardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a05f5

    .line 203
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/view/MyExpandCardView$7;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/MyExpandCardView$7;-><init>(Lcom/codemao/nemo/view/MyExpandCardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a05f6

    .line 215
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/view/MyExpandCardView;->removeWindow:Landroid/view/View;

    const/4 v1, 0x4

    .line 216
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a00f7

    .line 217
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/view/MyExpandCardView$8;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/MyExpandCardView$8;-><init>(Lcom/codemao/nemo/view/MyExpandCardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0185

    .line 227
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/view/MyExpandCardView$9;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/MyExpandCardView$9;-><init>(Lcom/codemao/nemo/view/MyExpandCardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01ee

    .line 236
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/view/MyExpandCardView$10;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/MyExpandCardView$10;-><init>(Lcom/codemao/nemo/view/MyExpandCardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initUploadView()V
    .registers 3

    const v0, 0x7f0a0937

    .line 134
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/view/MyExpandCardView;->uploadParentView:Landroid/view/View;

    const/16 v1, 0x8

    .line 135
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0935

    .line 136
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/nemo/view/MyExpandCardView;->upRingView:Landroid/widget/ImageView;

    const v0, 0x7f0a0933

    .line 137
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/nemo/view/MyExpandCardView;->upArrowView:Landroid/widget/ImageView;

    const v0, 0x7f0a0934

    .line 138
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/nemo/view/MyExpandCardView;->upLineView:Landroid/widget/ImageView;

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .registers 4

    .line 107
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0083

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0a0674

    .line 108
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    .line 109
    invoke-direct {p0}, Lcom/codemao/nemo/view/MyExpandCardView;->initLeftParentView()V

    .line 110
    invoke-direct {p0}, Lcom/codemao/nemo/view/MyExpandCardView;->initRightParentView()V

    .line 111
    invoke-direct {p0}, Lcom/codemao/nemo/view/MyExpandCardView;->initDownloadView()V

    .line 112
    invoke-direct {p0}, Lcom/codemao/nemo/view/MyExpandCardView;->initUploadView()V

    return-void
.end method

.method private objectAnim(Landroid/view/View;Ljava/lang/String;FFJILandroid/animation/AnimatorListenerAdapter;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ObjectAnimator;
    .registers 12

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 p3, 0x1

    aput p4, v0, p3

    .line 326
    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 327
    invoke-virtual {p1, p3}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 328
    invoke-virtual {p1, p5, p6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 329
    invoke-virtual {p1, p7}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    if-nez p8, :cond_1a

    .line 330
    iget-object p8, p0, Lcom/codemao/nemo/view/MyExpandCardView;->defaultAnimCallBack:Landroid/animation/AnimatorListenerAdapter;

    :cond_1a
    invoke-virtual {p1, p8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez p9, :cond_21

    .line 331
    iget-object p9, p0, Lcom/codemao/nemo/view/MyExpandCardView;->defaultUpdateAnimCallBack:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    :cond_21
    invoke-virtual {p1, p9}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method private rotateAnim(Landroid/view/View;FFJILandroid/animation/AnimatorListenerAdapter;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ObjectAnimator;
    .registers 19

    const-string v2, "rotation"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 320
    invoke-direct/range {v0 .. v9}, Lcom/codemao/nemo/view/MyExpandCardView;->objectAnim(Landroid/view/View;Ljava/lang/String;FFJILandroid/animation/AnimatorListenerAdapter;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private setColorMatrix(Landroid/widget/ImageView;F)V
    .registers 4

    .line 447
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 448
    invoke-virtual {v0, p2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 449
    new-instance p2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 450
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method private translateXAnim(Landroid/view/View;FFJILandroid/animation/AnimatorListenerAdapter;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ObjectAnimator;
    .registers 19

    const-string v2, "translationX"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 310
    invoke-direct/range {v0 .. v9}, Lcom/codemao/nemo/view/MyExpandCardView;->objectAnim(Landroid/view/View;Ljava/lang/String;FFJILandroid/animation/AnimatorListenerAdapter;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private translateYAnim(Landroid/view/View;FFJILandroid/animation/AnimatorListenerAdapter;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ObjectAnimator;
    .registers 19

    const-string v2, "translationY"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 305
    invoke-direct/range {v0 .. v9}, Lcom/codemao/nemo/view/MyExpandCardView;->objectAnim(Landroid/view/View;Ljava/lang/String;FFJILandroid/animation/AnimatorListenerAdapter;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private watchAnim(Landroid/widget/TextView;JI)V
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v1, 0x1

    aput p4, v0, v1

    .line 268
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p4

    .line 269
    invoke-virtual {p4, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 270
    new-instance p2, Lcom/codemao/nemo/view/MyExpandCardView$11;

    invoke-direct {p2, p0, p1}, Lcom/codemao/nemo/view/MyExpandCardView$11;-><init>(Lcom/codemao/nemo/view/MyExpandCardView;Landroid/widget/TextView;)V

    invoke-virtual {p4, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 277
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 367
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public expandItem()V
    .registers 11

    .line 251
    iget-object v0, p0, Lcom/codemao/nemo/view/MyExpandCardView;->mLeftNameTV:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    .line 252
    iget-object v2, p0, Lcom/codemao/nemo/view/MyExpandCardView;->mLeftNameTV:Landroid/widget/TextView;

    const/4 v3, 0x0

    const-wide/16 v5, 0x1f4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/codemao/nemo/view/MyExpandCardView;->translateYAnim(Landroid/view/View;FFJILandroid/animation/AnimatorListenerAdapter;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 253
    iget-object v0, p0, Lcom/codemao/nemo/view/MyExpandCardView;->mRoleNum:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 254
    iget-object v1, p0, Lcom/codemao/nemo/view/MyExpandCardView;->mBlockNum:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 255
    iget-object v2, p0, Lcom/codemao/nemo/view/MyExpandCardView;->mRoleNum:Landroid/widget/TextView;

    iget v3, p0, Lcom/codemao/nemo/view/MyExpandCardView;->duration:I

    int-to-long v3, v3

    invoke-direct {p0, v2, v3, v4, v0}, Lcom/codemao/nemo/view/MyExpandCardView;->watchAnim(Landroid/widget/TextView;JI)V

    .line 256
    iget-object v2, p0, Lcom/codemao/nemo/view/MyExpandCardView;->mBlockNum:Landroid/widget/TextView;

    iget v3, p0, Lcom/codemao/nemo/view/MyExpandCardView;->duration:I

    int-to-long v3, v3

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/codemao/nemo/view/MyExpandCardView;->watchAnim(Landroid/widget/TextView;JI)V

    .line 257
    iget-object v2, p0, Lcom/codemao/nemo/view/MyExpandCardView;->mRoleWaveBar:Lcom/codemao/nemo/view/WaveBar;

    iget v3, p0, Lcom/codemao/nemo/view/MyExpandCardView;->duration:I

    add-int/lit16 v3, v3, 0x1f4

    int-to-long v3, v3

    sget-object v5, Lcom/codemao/nemo/view/WaveBar$Mode;->role:Lcom/codemao/nemo/view/WaveBar$Mode;

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/codemao/nemo/view/WaveBar;->drawAnim(JILcom/codemao/nemo/view/WaveBar$Mode;)V

    .line 258
    iget-object v0, p0, Lcom/codemao/nemo/view/MyExpandCardView;->mBlockWaveBar:Lcom/codemao/nemo/view/WaveBar;

    iget v2, p0, Lcom/codemao/nemo/view/MyExpandCardView;->duration:I

    add-int/lit16 v2, v2, 0x1f4

    int-to-long v2, v2

    sget-object v4, Lcom/codemao/nemo/view/WaveBar$Mode;->block:Lcom/codemao/nemo/view/WaveBar$Mode;

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/codemao/nemo/view/WaveBar;->drawAnim(JILcom/codemao/nemo/view/WaveBar$Mode;)V

    return-void
.end method

.method public getView(I)Landroid/view/View;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/codemao/nemo/view/MyExpandCardView;->views:Landroid/util/SparseArray;

    if-nez v0, :cond_b

    .line 399
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/view/MyExpandCardView;->views:Landroid/util/SparseArray;

    .line 401
    :cond_b
    iget-object v0, p0, Lcom/codemao/nemo/view/MyExpandCardView;->views:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1e

    .line 403
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 404
    iget-object v1, p0, Lcom/codemao/nemo/view/MyExpandCardView;->views:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1e
    return-object v0
.end method

.method public hideDownloadView()V
    .registers 3

    .line 534
    iget-object v0, p0, Lcom/codemao/nemo/view/MyExpandCardView;->downloadAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_7

    .line 535
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_7
    const v0, 0x7f0a01f0

    .line 537
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 538
    invoke-virtual {p0}, Lcom/codemao/nemo/view/MyExpandCardView;->resetBitmap()V

    return-void
.end method

.method public hideUploadView()V
    .registers 3

    .line 526
    iget-object v0, p0, Lcom/codemao/nemo/view/MyExpandCardView;->uploadAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_7

    .line 527
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_7
    const v0, 0x7f0a0937

    .line 529
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 530
    invoke-virtual {p0}, Lcom/codemao/nemo/view/MyExpandCardView;->resetBitmap()V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 348
    iget v0, p0, Lcom/codemao/nemo/view/MyExpandCardView;->roundRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2a

    .line 349
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 350
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/codemao/nemo/view/MyExpandCardView;->roundRadius:F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 351
    iget-object v1, p0, Lcom/codemao/nemo/view/MyExpandCardView;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 352
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 354
    :cond_2a
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .registers 6

    .line 337
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected final onMeasure(II)V
    .registers 3

    .line 342
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public resetBitmap()V
    .registers 3

    .line 542
    iget-object v0, p0, Lcom/codemao/nemo/view/MyExpandCardView;->mLeftBgIV:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/codemao/nemo/view/MyExpandCardView;->setColorMatrix(Landroid/widget/ImageView;F)V

    return-void
.end method

.method public revokeView()V
    .registers 4

    .line 546
    iget-object v0, p0, Lcom/codemao/nemo/view/MyExpandCardView;->mRightParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 547
    iget-object v1, p0, Lcom/codemao/nemo/view/MyExpandCardView;->mLeftNameTV:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/codemao/nemo/view/MyExpandCardView;->leftTextBackColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const v1, 0x7f0a057e

    .line 548
    invoke-virtual {p0, v1}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    const v1, 0x7f0a05f6

    .line 549
    invoke-virtual {p0, v1}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object v1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public setCallBack(Lcom/codemao/nemo/view/MyExpandCardView$CallBack;)V
    .registers 2

    .line 579
    iput-object p1, p0, Lcom/codemao/nemo/view/MyExpandCardView;->mBack:Lcom/codemao/nemo/view/MyExpandCardView$CallBack;

    return-void
.end method

.method public setEllipsizeText(ILjava/lang/String;)V
    .registers 5

    .line 420
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/view/PercentTextView;

    const/4 v0, 0x6

    const/16 v1, 0xe

    .line 421
    invoke-virtual {p1, p2, v0, v0, v1}, Lcom/codemao/nemo/view/PercentTextView;->setByteText(Ljava/lang/String;III)V

    return-void
.end method

.method public setLeftTextBackColor(Ljava/lang/String;)V
    .registers 2

    .line 553
    iput-object p1, p0, Lcom/codemao/nemo/view/MyExpandCardView;->leftTextBackColor:Ljava/lang/String;

    return-void
.end method

.method public setText(ILjava/lang/String;)V
    .registers 3

    .line 415
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 416
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showDownloadView(Z)V
    .registers 19

    move-object/from16 v9, p0

    .line 457
    iget-object v0, v9, Lcom/codemao/nemo/view/MyExpandCardView;->mLeftNameTV:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 458
    iget-object v0, v9, Lcom/codemao/nemo/view/MyExpandCardView;->downloadParentView:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 459
    iget-object v0, v9, Lcom/codemao/nemo/view/MyExpandCardView;->mLeftBgIV:Landroid/widget/ImageView;

    const v1, 0x3e4ccccd  # 0.2f

    invoke-direct {v9, v0, v1}, Lcom/codemao/nemo/view/MyExpandCardView;->setColorMatrix(Landroid/widget/ImageView;F)V

    if-eqz p1, :cond_d5

    .line 461
    iget-object v0, v9, Lcom/codemao/nemo/view/MyExpandCardView;->downloadAnimSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_cf

    .line 462
    iget-object v1, v9, Lcom/codemao/nemo/view/MyExpandCardView;->downRingView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000  # 360.0f

    const-wide/16 v4, 0x7d0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/codemao/nemo/view/MyExpandCardView;->rotateAnim(Landroid/view/View;FFJILandroid/animation/AnimatorListenerAdapter;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 463
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v11, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 465
    iget-object v1, v9, Lcom/codemao/nemo/view/MyExpandCardView;->downArrowView:Landroid/widget/ImageView;

    iget v0, v9, Lcom/codemao/nemo/view/MyExpandCardView;->scale:F

    const/high16 v12, 0x40c00000  # 6.0f

    mul-float v3, v0, v12

    const-wide/16 v4, 0x320

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/codemao/nemo/view/MyExpandCardView;->translateYAnim(Landroid/view/View;FFJILandroid/animation/AnimatorListenerAdapter;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 466
    iget-object v1, v9, Lcom/codemao/nemo/view/MyExpandCardView;->downArrowView:Landroid/widget/ImageView;

    iget v0, v9, Lcom/codemao/nemo/view/MyExpandCardView;->scale:F

    mul-float v2, v0, v12

    mul-float v3, v0, v12

    const-wide/16 v4, 0xc8

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/codemao/nemo/view/MyExpandCardView;->translateYAnim(Landroid/view/View;FFJILandroid/animation/AnimatorListenerAdapter;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 467
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v14, 0x2

    new-array v1, v14, [Landroid/animation/Animator;

    aput-object v13, v1, v10

    const/4 v13, 0x1

    aput-object v0, v1, v13

    .line 468
    invoke-virtual {v12, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 470
    iget-object v1, v9, Lcom/codemao/nemo/view/MyExpandCardView;->downArrowView:Landroid/widget/ImageView;

    const v2, 0x3f19999a  # 0.6f

    const/4 v3, 0x0

    const-wide/16 v4, 0x258

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/codemao/nemo/view/MyExpandCardView;->alphaAnim(Landroid/view/View;FFJILandroid/animation/AnimatorListenerAdapter;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 471
    iget-object v1, v9, Lcom/codemao/nemo/view/MyExpandCardView;->downArrowView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const v3, 0x3f19999a  # 0.6f

    const-wide/16 v4, 0x190

    invoke-direct/range {v0 .. v8}, Lcom/codemao/nemo/view/MyExpandCardView;->alphaAnim(Landroid/view/View;FFJILandroid/animation/AnimatorListenerAdapter;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 472
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v14, [Landroid/animation/Animator;

    aput-object v15, v1, v10

    aput-object v0, v1, v13

    .line 473
    invoke-virtual {v8, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 475
    iget-object v1, v9, Lcom/codemao/nemo/view/MyExpandCardView;->downLineView:Landroid/widget/ImageView;

    const v2, 0x3f19999a  # 0.6f

    const/4 v3, 0x0

    const-wide/16 v4, 0x258

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v16, v8

    move-object v8, v15

    invoke-direct/range {v0 .. v8}, Lcom/codemao/nemo/view/MyExpandCardView;->alphaAnim(Landroid/view/View;FFJILandroid/animation/AnimatorListenerAdapter;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 476
    iget-object v1, v9, Lcom/codemao/nemo/view/MyExpandCardView;->downLineView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const v3, 0x3f19999a  # 0.6f

    const-wide/16 v4, 0x190

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/codemao/nemo/view/MyExpandCardView;->alphaAnim(Landroid/view/View;FFJILandroid/animation/AnimatorListenerAdapter;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 477
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v14, [Landroid/animation/Animator;

    aput-object v15, v2, v10

    aput-object v0, v2, v13

    .line 478
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 480
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, v9, Lcom/codemao/nemo/view/MyExpandCardView;->downloadAnimSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x4

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v11, v2, v10

    aput-object v12, v2, v13

    aput-object v16, v2, v14

    const/4 v3, 0x3

    aput-object v1, v2, v3

    .line 481
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 483
    :cond_cf
    iget-object v0, v9, Lcom/codemao/nemo/view/MyExpandCardView;->downloadAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_dc

    .line 485
    :cond_d5
    iget-object v0, v9, Lcom/codemao/nemo/view/MyExpandCardView;->downloadAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_dc

    .line 486
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_dc
    :goto_dc
    return-void
.end method

.method public showUploadView()V
    .registers 18

    move-object/from16 v9, p0

    .line 496
    iget-object v0, v9, Lcom/codemao/nemo/view/MyExpandCardView;->mLeftNameTV:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 497
    iget-object v0, v9, Lcom/codemao/nemo/view/MyExpandCardView;->uploadParentView:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 498
    iget-object v0, v9, Lcom/codemao/nemo/view/MyExpandCardView;->mLeftBgIV:Landroid/widget/ImageView;

    const v1, 0x3e4ccccd  # 0.2f

    invoke-direct {v9, v0, v1}, Lcom/codemao/nemo/view/MyExpandCardView;->setColorMatrix(Landroid/widget/ImageView;F)V

    .line 499
    iget-object v0, v9, Lcom/codemao/nemo/view/MyExpandCardView;->uploadAnimSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_cd

    .line 500
    iget-object v1, v9, Lcom/codemao/nemo/view/MyExpandCardView;->upRingView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000  # 360.0f

    const-wide/16 v4, 0x7d0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/codemao/nemo/view/MyExpandCardView;->rotateAnim(Landroid/view/View;FFJILandroid/animation/AnimatorListenerAdapter;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 501
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v11, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 503
    iget-object v1, v9, Lcom/codemao/nemo/view/MyExpandCardView;->upArrowView:Landroid/widget/ImageView;

    iget v0, v9, Lcom/codemao/nemo/view/MyExpandCardView;->scale:F

    const/high16 v12, -0x3f400000  # -6.0f

    mul-float v3, v0, v12

    const-wide/16 v4, 0x320

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/codemao/nemo/view/MyExpandCardView;->translateYAnim(Landroid/view/View;FFJILandroid/animation/AnimatorListenerAdapter;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 504
    iget-object v1, v9, Lcom/codemao/nemo/view/MyExpandCardView;->upArrowView:Landroid/widget/ImageView;

    iget v0, v9, Lcom/codemao/nemo/view/MyExpandCardView;->scale:F

    mul-float v2, v0, v12

    mul-float v3, v0, v12

    const-wide/16 v4, 0xc8

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/codemao/nemo/view/MyExpandCardView;->translateYAnim(Landroid/view/View;FFJILandroid/animation/AnimatorListenerAdapter;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 505
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v14, 0x2

    new-array v1, v14, [Landroid/animation/Animator;

    aput-object v13, v1, v10

    const/4 v13, 0x1

    aput-object v0, v1, v13

    .line 506
    invoke-virtual {v12, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 508
    iget-object v1, v9, Lcom/codemao/nemo/view/MyExpandCardView;->upArrowView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const v3, 0x3ecccccd  # 0.4f

    const-wide/16 v4, 0x258

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/codemao/nemo/view/MyExpandCardView;->alphaAnim(Landroid/view/View;FFJILandroid/animation/AnimatorListenerAdapter;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 509
    iget-object v1, v9, Lcom/codemao/nemo/view/MyExpandCardView;->upArrowView:Landroid/widget/ImageView;

    const v2, 0x3ecccccd  # 0.4f

    const/4 v3, 0x0

    const-wide/16 v4, 0x190

    invoke-direct/range {v0 .. v8}, Lcom/codemao/nemo/view/MyExpandCardView;->alphaAnim(Landroid/view/View;FFJILandroid/animation/AnimatorListenerAdapter;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 510
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v14, [Landroid/animation/Animator;

    aput-object v15, v1, v10

    aput-object v0, v1, v13

    .line 511
    invoke-virtual {v8, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 513
    iget-object v1, v9, Lcom/codemao/nemo/view/MyExpandCardView;->upLineView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const v3, 0x3ecccccd  # 0.4f

    const-wide/16 v4, 0x258

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v16, v8

    move-object v8, v15

    invoke-direct/range {v0 .. v8}, Lcom/codemao/nemo/view/MyExpandCardView;->alphaAnim(Landroid/view/View;FFJILandroid/animation/AnimatorListenerAdapter;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 514
    iget-object v1, v9, Lcom/codemao/nemo/view/MyExpandCardView;->upLineView:Landroid/widget/ImageView;

    const v2, 0x3ecccccd  # 0.4f

    const/4 v3, 0x0

    const-wide/16 v4, 0x190

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/codemao/nemo/view/MyExpandCardView;->alphaAnim(Landroid/view/View;FFJILandroid/animation/AnimatorListenerAdapter;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 515
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v14, [Landroid/animation/Animator;

    aput-object v15, v2, v10

    aput-object v0, v2, v13

    .line 516
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 518
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, v9, Lcom/codemao/nemo/view/MyExpandCardView;->uploadAnimSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x4

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v11, v2, v10

    aput-object v12, v2, v13

    aput-object v16, v2, v14

    const/4 v3, 0x3

    aput-object v1, v2, v3

    .line 519
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 521
    :cond_cd
    iget-object v0, v9, Lcom/codemao/nemo/view/MyExpandCardView;->uploadAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public shrinkItem()V
    .registers 11

    .line 284
    iget-object v0, p0, Lcom/codemao/nemo/view/MyExpandCardView;->mLeftNameTV:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    int-to-float v3, v0

    .line 285
    iget-object v2, p0, Lcom/codemao/nemo/view/MyExpandCardView;->mLeftNameTV:Landroid/widget/TextView;

    const/4 v4, 0x0

    const-wide/16 v5, 0x1f4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/codemao/nemo/view/MyExpandCardView;->translateYAnim(Landroid/view/View;FFJILandroid/animation/AnimatorListenerAdapter;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
