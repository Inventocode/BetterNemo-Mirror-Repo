.class public Lcom/codemao/creativecenter/customview/CreativeSwitchButton;
.super Landroid/view/View;
.source "CreativeSwitchButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;,
        Lcom/codemao/creativecenter/customview/CreativeSwitchButton$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_HEIGHT:I

.field private static final DEFAULT_WIDTH:I


# instance fields
.field private afterState:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

.field private animateState:I

.field private animatorListener:Landroid/animation/Animator$AnimatorListener;

.field private animatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final argbEvaluator:Landroid/animation/ArgbEvaluator;

.field private background:I

.field private beforeState:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

.field private borderWidth:I

.field private bottom:F

.field private buttonMaxX:F

.field private buttonMinX:F

.field private buttonPaint:Landroid/graphics/Paint;

.field private buttonRadius:F

.field private centerY:F

.field private checkLineColor:I

.field private checkLineLength:F

.field private checkLineWidth:I

.field private checkedButtonColor:I

.field private checkedColor:I

.field private checkedLineOffsetX:F

.field private checkedLineOffsetY:F

.field private enableEffect:Z

.field eventX:F

.field private height:F

.field private isChecked:Z

.field private isEventBroadcast:Z

.field private isTouchingDown:Z

.field private isUiInited:Z

.field private left:F

.field private onCheckedChangeListener:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$OnCheckedChangeListener;

.field private paint:Landroid/graphics/Paint;

.field private postPendingDrag:Ljava/lang/Runnable;

.field private rect:Landroid/graphics/RectF;

.field private right:F

.field private shadowColor:I

.field private shadowEffect:Z

.field private shadowOffset:I

.field private shadowRadius:I

.field private showIndicator:Z

.field private top:F

.field private touchDownTime:J

.field private uncheckButtonColor:I

.field private uncheckCircleColor:I

.field private uncheckCircleOffsetX:F

.field private uncheckCircleRadius:F

.field private uncheckCircleWidth:I

.field private uncheckColor:I

.field private valueAnimator:Landroid/animation/ValueAnimator;

.field private viewRadius:F

.field private viewState:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x42680000  # 58.0f

    .line 31
    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->dp2pxInt(F)I

    move-result v0

    sput v0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->DEFAULT_WIDTH:I

    const/high16 v0, 0x42100000  # 36.0f

    .line 32
    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->dp2pxInt(F)I

    move-result v0

    sput v0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->DEFAULT_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 994
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->rect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 998
    iput v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->animateState:I

    .line 1005
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 1027
    iput-boolean v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isTouchingDown:Z

    .line 1031
    iput-boolean v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isUiInited:Z

    .line 1035
    iput-boolean v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isEventBroadcast:Z

    .line 1044
    new-instance v0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$1;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$1;-><init>(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->postPendingDrag:Ljava/lang/Runnable;

    .line 1053
    new-instance v0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;-><init>(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->animatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1117
    new-instance v0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$3;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$3;-><init>(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->animatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 994
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->rect:Landroid/graphics/RectF;

    const/4 p3, 0x0

    .line 998
    iput p3, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->animateState:I

    .line 1005
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 1027
    iput-boolean p3, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isTouchingDown:Z

    .line 1031
    iput-boolean p3, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isUiInited:Z

    .line 1035
    iput-boolean p3, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isEventBroadcast:Z

    .line 1044
    new-instance p3, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$1;

    invoke-direct {p3, p0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$1;-><init>(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)V

    iput-object p3, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->postPendingDrag:Ljava/lang/Runnable;

    .line 1053
    new-instance p3, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;

    invoke-direct {p3, p0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$2;-><init>(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)V

    iput-object p3, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->animatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1117
    new-instance p3, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$3;

    invoke-direct {p3, p0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$3;-><init>(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)V

    iput-object p3, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->animatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)Z
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isInAnimating()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)I
    .registers 1

    .line 30
    iget p0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->uncheckColor:I

    return p0
.end method

.method static synthetic access$1100(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)I
    .registers 1

    .line 30
    iget p0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->checkedColor:I

    return p0
.end method

.method static synthetic access$1200(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)F
    .registers 1

    .line 30
    iget p0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->viewRadius:F

    return p0
.end method

.method static synthetic access$1300(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)I
    .registers 1

    .line 30
    iget p0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->checkLineColor:I

    return p0
.end method

.method static synthetic access$1400(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->broadcastEvent()V

    return-void
.end method

.method static synthetic access$1500(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)Z
    .registers 1

    .line 30
    iget-boolean p0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isChecked:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;Z)Z
    .registers 2

    .line 30
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isChecked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->pendingDragState()V

    return-void
.end method

.method static synthetic access$300(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)I
    .registers 1

    .line 30
    iget p0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->animateState:I

    return p0
.end method

.method static synthetic access$302(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;I)I
    .registers 2

    .line 30
    iput p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->animateState:I

    return p1
.end method

.method static synthetic access$400(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->viewState:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    return-object p0
.end method

.method static synthetic access$500(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->beforeState:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    return-object p0
.end method

.method static synthetic access$600(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->afterState:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    return-object p0
.end method

.method static synthetic access$700(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)Landroid/animation/ArgbEvaluator;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    return-object p0
.end method

.method static synthetic access$800(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)F
    .registers 1

    .line 30
    iget p0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->buttonMinX:F

    return p0
.end method

.method static synthetic access$900(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)F
    .registers 1

    .line 30
    iget p0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->buttonMaxX:F

    return p0
.end method

.method private broadcastEvent()V
    .registers 3

    .line 558
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->onCheckedChangeListener:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$OnCheckedChangeListener;

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    .line 559
    iput-boolean v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isEventBroadcast:Z

    .line 560
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isChecked()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;Z)V

    :cond_e
    const/4 v0, 0x0

    .line 562
    iput-boolean v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isEventBroadcast:Z

    return-void
.end method

.method private static dp2px(F)F
    .registers 3

    .line 810
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 811
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private static dp2pxInt(F)I
    .registers 1

    .line 815
    invoke-static {p0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->dp2px(F)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private drawArc(Landroid/graphics/Canvas;FFFFFFLandroid/graphics/Paint;)V
    .registers 21

    move-object v0, p0

    .line 431
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_19

    const/4 v10, 0x1

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v11, p8

    .line 432
    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    goto :goto_31

    .line 435
    :cond_19
    iget-object v1, v0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->rect:Landroid/graphics/RectF;

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual {v1, p2, p3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 436
    iget-object v3, v0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->rect:Landroid/graphics/RectF;

    const/4 v6, 0x1

    move-object v2, p1

    move/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_31
    return-void
.end method

.method private drawButton(Landroid/graphics/Canvas;FF)V
    .registers 6

    .line 472
    iget v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->buttonRadius:F

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->buttonPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 474
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 475
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 476
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->paint:Landroid/graphics/Paint;

    const v1, -0x222223

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 477
    iget v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->buttonRadius:F

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawRoundRect(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V
    .registers 16

    .line 455
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_12

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p6

    move-object v7, p7

    .line 456
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_1c

    .line 459
    :cond_12
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 460
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2, p6, p6, p7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_1c
    return-void
.end method

.method private drawUncheckIndicator(Landroid/graphics/Canvas;)V
    .registers 10

    .line 384
    iget v2, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->uncheckCircleColor:I

    iget v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->uncheckCircleWidth:I

    int-to-float v3, v0

    iget v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->right:F

    iget v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->uncheckCircleOffsetX:F

    sub-float v4, v0, v1

    iget v5, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->centerY:F

    iget v6, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->uncheckCircleRadius:F

    iget-object v7, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->paint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->drawUncheckIndicator(Landroid/graphics/Canvas;IFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    .line 84
    sget-object v1, Lcom/codemao/creativecenter/R$styleable;->CreativeSwitchButton:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_b

    :cond_a
    move-object p1, v0

    .line 87
    :goto_b
    sget p2, Lcom/codemao/creativecenter/R$styleable;->CreativeSwitchButton_sb_shadow_effect:I

    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->optBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->shadowEffect:Z

    .line 91
    sget p2, Lcom/codemao/creativecenter/R$styleable;->CreativeSwitchButton_sb_uncheckcircle_color:I

    const v2, -0x555556

    invoke-static {p1, p2, v2}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->optColor(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->uncheckCircleColor:I

    .line 95
    sget p2, Lcom/codemao/creativecenter/R$styleable;->CreativeSwitchButton_sb_uncheckcircle_width:I

    const/high16 v2, 0x3fc00000  # 1.5f

    .line 97
    invoke-static {v2}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->dp2pxInt(F)I

    move-result v3

    .line 95
    invoke-static {p1, p2, v3}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->optPixelSize(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->uncheckCircleWidth:I

    const/high16 p2, 0x41200000  # 10.0f

    .line 99
    invoke-static {p2}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->dp2px(F)F

    move-result p2

    iput p2, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->uncheckCircleOffsetX:F

    .line 101
    sget p2, Lcom/codemao/creativecenter/R$styleable;->CreativeSwitchButton_sb_uncheckcircle_radius:I

    const/high16 v3, 0x40800000  # 4.0f

    .line 103
    invoke-static {v3}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->dp2px(F)F

    move-result v4

    .line 101
    invoke-static {p1, p2, v4}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->optPixelSize(Landroid/content/res/TypedArray;IF)F

    move-result p2

    iput p2, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->uncheckCircleRadius:F

    .line 105
    invoke-static {v3}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->dp2px(F)F

    move-result p2

    iput p2, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->checkedLineOffsetX:F

    .line 106
    invoke-static {v3}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->dp2px(F)F

    move-result p2

    iput p2, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->checkedLineOffsetY:F

    .line 108
    sget p2, Lcom/codemao/creativecenter/R$styleable;->CreativeSwitchButton_sb_shadow_radius:I

    const/high16 v3, 0x40200000  # 2.5f

    .line 110
    invoke-static {v3}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->dp2pxInt(F)I

    move-result v3

    .line 108
    invoke-static {p1, p2, v3}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->optPixelSize(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->shadowRadius:I

    .line 112
    sget p2, Lcom/codemao/creativecenter/R$styleable;->CreativeSwitchButton_sb_shadow_offset:I

    .line 114
    invoke-static {v2}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->dp2pxInt(F)I

    move-result v2

    .line 112
    invoke-static {p1, p2, v2}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->optPixelSize(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->shadowOffset:I

    .line 116
    sget p2, Lcom/codemao/creativecenter/R$styleable;->CreativeSwitchButton_sb_shadow_color:I

    const/high16 v2, 0x33000000

    invoke-static {p1, p2, v2}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->optColor(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->shadowColor:I

    .line 120
    sget p2, Lcom/codemao/creativecenter/R$styleable;->CreativeSwitchButton_sb_uncheck_color:I

    const v2, -0x222223

    invoke-static {p1, p2, v2}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->optColor(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->uncheckColor:I

    .line 124
    sget p2, Lcom/codemao/creativecenter/R$styleable;->CreativeSwitchButton_sb_checked_color:I

    const v2, -0xae2c99

    invoke-static {p1, p2, v2}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->optColor(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->checkedColor:I

    .line 128
    sget p2, Lcom/codemao/creativecenter/R$styleable;->CreativeSwitchButton_sb_border_width:I

    const/high16 v2, 0x3f800000  # 1.0f

    .line 130
    invoke-static {v2}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->dp2pxInt(F)I

    move-result v3

    .line 128
    invoke-static {p1, p2, v3}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->optPixelSize(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->borderWidth:I

    .line 132
    sget p2, Lcom/codemao/creativecenter/R$styleable;->CreativeSwitchButton_sb_checkline_color:I

    const/4 v3, -0x1

    invoke-static {p1, p2, v3}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->optColor(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->checkLineColor:I

    .line 136
    sget p2, Lcom/codemao/creativecenter/R$styleable;->CreativeSwitchButton_sb_checkline_width:I

    .line 138
    invoke-static {v2}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->dp2pxInt(F)I

    move-result v2

    .line 136
    invoke-static {p1, p2, v2}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->optPixelSize(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->checkLineWidth:I

    const/high16 p2, 0x40c00000  # 6.0f

    .line 140
    invoke-static {p2}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->dp2px(F)F

    move-result p2

    iput p2, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->checkLineLength:F

    .line 142
    sget p2, Lcom/codemao/creativecenter/R$styleable;->CreativeSwitchButton_sb_button_color:I

    invoke-static {p1, p2, v3}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->optColor(Landroid/content/res/TypedArray;II)I

    move-result p2

    .line 146
    sget v2, Lcom/codemao/creativecenter/R$styleable;->CreativeSwitchButton_sb_uncheckbutton_color:I

    invoke-static {p1, v2, p2}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->optColor(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->uncheckButtonColor:I

    .line 150
    sget v2, Lcom/codemao/creativecenter/R$styleable;->CreativeSwitchButton_sb_checkedbutton_color:I

    invoke-static {p1, v2, p2}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->optColor(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->checkedButtonColor:I

    .line 154
    sget v2, Lcom/codemao/creativecenter/R$styleable;->CreativeSwitchButton_sb_effect_duration:I

    const/16 v4, 0x12c

    invoke-static {p1, v2, v4}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->optInt(Landroid/content/res/TypedArray;II)I

    move-result v2

    .line 158
    sget v4, Lcom/codemao/creativecenter/R$styleable;->CreativeSwitchButton_sb_checked:I

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->optBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isChecked:Z

    .line 162
    sget v4, Lcom/codemao/creativecenter/R$styleable;->CreativeSwitchButton_sb_show_indicator:I

    invoke-static {p1, v4, v1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->optBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->showIndicator:Z

    .line 166
    sget v4, Lcom/codemao/creativecenter/R$styleable;->CreativeSwitchButton_sb_background:I

    invoke-static {p1, v4, v3}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->optColor(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->background:I

    .line 170
    sget v3, Lcom/codemao/creativecenter/R$styleable;->CreativeSwitchButton_sb_enable_effect:I

    invoke-static {p1, v3, v1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->optBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->enableEffect:Z

    if-eqz p1, :cond_f8

    .line 175
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 179
    :cond_f8
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->paint:Landroid/graphics/Paint;

    .line 180
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->buttonPaint:Landroid/graphics/Paint;

    .line 181
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    iget-boolean p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->shadowEffect:Z

    if-eqz p1, :cond_11b

    .line 184
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->buttonPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->shadowRadius:I

    int-to-float p2, p2

    const/4 v3, 0x0

    iget v4, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->shadowOffset:I

    int-to-float v4, v4

    iget v6, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->shadowColor:I

    invoke-virtual {p1, p2, v3, v4, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 191
    :cond_11b
    new-instance p1, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    invoke-direct {p1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->viewState:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    .line 192
    new-instance p1, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    invoke-direct {p1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->beforeState:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    .line 193
    new-instance p1, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    invoke-direct {p1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->afterState:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 195
    fill-array-data p1, :array_164

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, v2

    .line 196
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 197
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 199
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->animatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 200
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->animatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 202
    invoke-super {p0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 203
    invoke-virtual {p0, v5, v5, v5, v5}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->setPadding(IIII)V

    .line 204
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0xb

    if-lt p1, p2, :cond_162

    .line 205
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_162
    return-void

    nop

    :array_164
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private isDragState()Z
    .registers 3

    .line 685
    iget v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->animateState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private isInAnimating()Z
    .registers 2

    .line 666
    iget v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->animateState:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private isPendingDragState()Z
    .registers 4

    .line 675
    iget v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->animateState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v2, 0x3

    if-ne v0, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_a
    return v1
.end method

.method private static optBoolean(Landroid/content/res/TypedArray;IZ)Z
    .registers 3

    if-nez p0, :cond_3

    return p2

    .line 861
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    return p0
.end method

.method private static optColor(Landroid/content/res/TypedArray;II)I
    .registers 3

    if-nez p0, :cond_3

    return p2

    .line 852
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    return p0
.end method

.method private static optInt(Landroid/content/res/TypedArray;II)I
    .registers 3

    if-nez p0, :cond_3

    return p2

    .line 824
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    return p0
.end method

.method private static optPixelSize(Landroid/content/res/TypedArray;IF)F
    .registers 3

    if-nez p0, :cond_3

    return p2

    .line 834
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    return p0
.end method

.method private static optPixelSize(Landroid/content/res/TypedArray;II)I
    .registers 3

    if-nez p0, :cond_3

    return p2

    .line 843
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p0

    return p0
.end method

.method private pendingCancelDragState()V
    .registers 3

    .line 754
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isDragState()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isPendingDragState()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 755
    :cond_c
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 756
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_19
    const/4 v0, 0x3

    .line 759
    iput v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->animateState:I

    .line 760
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->beforeState:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->viewState:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->access$000(Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;)V

    .line 762
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 763
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->afterState:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->setCheckedViewState(Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;)V

    goto :goto_34

    .line 765
    :cond_2f
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->afterState:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->setUncheckViewState(Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;)V

    .line 767
    :goto_34
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_39
    return-void
.end method

.method private pendingDragState()V
    .registers 4

    .line 720
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isInAnimating()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 723
    :cond_7
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isTouchingDown:Z

    if-nez v0, :cond_c

    return-void

    .line 727
    :cond_c
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 728
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_19
    const/4 v0, 0x1

    .line 731
    iput v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->animateState:I

    .line 733
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->beforeState:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->viewState:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->access$000(Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;)V

    .line 734
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->afterState:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->viewState:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->access$000(Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;)V

    .line 736
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 737
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->afterState:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    iget v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->checkedColor:I

    iput v1, v0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->checkStateColor:I

    .line 738
    iget v2, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->buttonMaxX:F

    iput v2, v0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->buttonX:F

    .line 739
    iput v1, v0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->checkedLineColor:I

    goto :goto_4b

    .line 741
    :cond_3d
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->afterState:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    iget v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->uncheckColor:I

    iput v1, v0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->checkStateColor:I

    .line 742
    iget v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->buttonMinX:F

    iput v1, v0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->buttonX:F

    .line 743
    iget v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->viewRadius:F

    iput v1, v0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->radius:F

    .line 746
    :goto_4b
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private pendingSettleState()V
    .registers 3

    .line 776
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 777
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_d
    const/4 v0, 0x4

    .line 780
    iput v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->animateState:I

    .line 781
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->beforeState:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->viewState:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->access$000(Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;)V

    .line 783
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 784
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->afterState:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->setCheckedViewState(Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;)V

    goto :goto_28

    .line 786
    :cond_23
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->afterState:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->setUncheckViewState(Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;)V

    .line 788
    :goto_28
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private setCheckedViewState(Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;)V
    .registers 3

    .line 277
    iget v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->viewRadius:F

    iput v0, p1, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->radius:F

    .line 278
    iget v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->checkedColor:I

    iput v0, p1, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->checkStateColor:I

    .line 279
    iget v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->checkLineColor:I

    iput v0, p1, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->checkedLineColor:I

    .line 280
    iget v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->buttonMaxX:F

    iput v0, p1, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->buttonX:F

    .line 281
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->buttonPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->checkedButtonColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private setUncheckViewState(Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;)V
    .registers 3

    const/4 v0, 0x0

    .line 266
    iput v0, p1, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->radius:F

    .line 267
    iget v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->uncheckColor:I

    iput v0, p1, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->checkStateColor:I

    const/4 v0, 0x0

    .line 268
    iput v0, p1, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->checkedLineColor:I

    .line 269
    iget v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->buttonMinX:F

    iput v0, p1, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->buttonX:F

    .line 270
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->buttonPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->uncheckButtonColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private toggle(ZZ)V
    .registers 4

    .line 509
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 513
    :cond_7
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isEventBroadcast:Z

    if-nez v0, :cond_70

    .line 516
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isUiInited:Z

    if-nez v0, :cond_1b

    .line 517
    iget-boolean p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isChecked:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isChecked:Z

    if-eqz p2, :cond_1a

    .line 519
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->broadcastEvent()V

    :cond_1a
    return-void

    .line 524
    :cond_1b
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 525
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 528
    :cond_28
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->enableEffect:Z

    if-eqz v0, :cond_50

    if-nez p1, :cond_2f

    goto :goto_50

    :cond_2f
    const/4 p1, 0x5

    .line 542
    iput p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->animateState:I

    .line 543
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->beforeState:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->viewState:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->access$000(Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;)V

    .line 545
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_45

    .line 547
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->afterState:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->setUncheckViewState(Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;)V

    goto :goto_4a

    .line 549
    :cond_45
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->afterState:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->setCheckedViewState(Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;)V

    .line 551
    :goto_4a
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 529
    :cond_50
    :goto_50
    iget-boolean p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isChecked:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isChecked:Z

    .line 530
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_62

    .line 531
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->viewState:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->setCheckedViewState(Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;)V

    goto :goto_67

    .line 533
    :cond_62
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->viewState:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->setUncheckViewState(Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;)V

    .line 535
    :goto_67
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    if-eqz p2, :cond_6f

    .line 537
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->broadcastEvent()V

    :cond_6f
    return-void

    .line 514
    :cond_70
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "should NOT switch the state in method: [onCheckedChanged]!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected drawCheckedIndicator(Landroid/graphics/Canvas;)V
    .registers 12

    .line 344
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->viewState:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    iget v3, v0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->checkedLineColor:I

    iget v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->checkLineWidth:I

    int-to-float v4, v0

    iget v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->left:F

    iget v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->viewRadius:F

    add-float v2, v0, v1

    iget v5, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->checkedLineOffsetX:F

    sub-float v5, v2, v5

    iget v2, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->centerY:F

    iget v6, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->checkLineLength:F

    sub-float v7, v2, v6

    add-float/2addr v0, v1

    iget v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->checkedLineOffsetY:F

    sub-float/2addr v0, v1

    add-float v8, v2, v6

    iget-object v9, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->paint:Landroid/graphics/Paint;

    move-object v1, p0

    move-object v2, p1

    move v6, v7

    move v7, v0

    invoke-virtual/range {v1 .. v9}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->drawCheckedIndicator(Landroid/graphics/Canvas;IFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected drawCheckedIndicator(Landroid/graphics/Canvas;IFFFFFLandroid/graphics/Paint;)V
    .registers 15

    .line 370
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p8, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 371
    invoke-virtual {p8, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 372
    invoke-virtual {p8, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object v0, p1

    move v1, p4

    move v2, p5

    move v3, p6

    move v4, p7

    move-object v5, p8

    .line 373
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected drawUncheckIndicator(Landroid/graphics/Canvas;IFFFFLandroid/graphics/Paint;)V
    .registers 9

    .line 410
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p7, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 411
    invoke-virtual {p7, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 412
    invoke-virtual {p7, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 413
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public isChecked()Z
    .registers 2

    .line 491
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isChecked:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 15

    .line 286
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 288
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->borderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 289
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 291
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->background:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 292
    iget v4, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->left:F

    iget v5, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->top:F

    iget v6, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->right:F

    iget v7, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->bottom:F

    iget v8, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->viewRadius:F

    iget-object v9, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->paint:Landroid/graphics/Paint;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->drawRoundRect(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    .line 296
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 297
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->uncheckColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 298
    iget v4, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->left:F

    iget v5, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->top:F

    iget v6, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->right:F

    iget v7, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->bottom:F

    iget v8, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->viewRadius:F

    iget-object v9, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->paint:Landroid/graphics/Paint;

    invoke-direct/range {v2 .. v9}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->drawRoundRect(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    .line 303
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->showIndicator:Z

    if-eqz v0, :cond_4e

    .line 304
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->drawUncheckIndicator(Landroid/graphics/Canvas;)V

    .line 308
    :cond_4e
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->viewState:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    iget v0, v0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->radius:F

    const/high16 v1, 0x3f000000  # 0.5f

    mul-float v0, v0, v1

    .line 309
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 310
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->viewState:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    iget v2, v2, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->checkStateColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 311
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->borderWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000  # 2.0f

    mul-float v4, v0, v3

    add-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 312
    iget v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->left:F

    add-float v6, v1, v0

    iget v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->top:F

    add-float v7, v1, v0

    iget v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->right:F

    sub-float v8, v1, v0

    iget v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->bottom:F

    sub-float v9, v1, v0

    iget v10, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->viewRadius:F

    iget-object v11, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->paint:Landroid/graphics/Paint;

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v11}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->drawRoundRect(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    .line 317
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 318
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 319
    iget v6, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->left:F

    iget v7, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->top:F

    iget v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->viewRadius:F

    mul-float v1, v0, v3

    add-float v8, v6, v1

    mul-float v0, v0, v3

    add-float v9, v7, v0

    const/high16 v10, 0x42b40000  # 90.0f

    const/high16 v11, 0x43340000  # 180.0f

    iget-object v12, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->paint:Landroid/graphics/Paint;

    invoke-direct/range {v4 .. v12}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->drawArc(Landroid/graphics/Canvas;FFFFFFLandroid/graphics/Paint;)V

    .line 323
    iget v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->left:F

    iget v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->viewRadius:F

    add-float v5, v0, v1

    iget v6, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->top:F

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->viewState:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    iget v7, v0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->buttonX:F

    mul-float v1, v1, v3

    add-float v8, v6, v1

    iget-object v9, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->paint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 329
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->showIndicator:Z

    if-eqz v0, :cond_ce

    .line 330
    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->drawCheckedIndicator(Landroid/graphics/Canvas;)V

    .line 334
    :cond_ce
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->viewState:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    iget v0, v0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->buttonX:F

    iget v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->centerY:F

    invoke-direct {p0, p1, v0, v1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->drawButton(Landroid/graphics/Canvas;FF)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    .line 211
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 212
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000  # 2.0f

    if-eqz v0, :cond_10

    if-ne v0, v2, :cond_16

    .line 216
    :cond_10
    sget p1, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->DEFAULT_WIDTH:I

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_16
    if-eqz v1, :cond_1a

    if-ne v1, v2, :cond_20

    .line 220
    :cond_1a
    sget p2, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->DEFAULT_HEIGHT:I

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 222
    :cond_20
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 7

    .line 227
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 230
    iget p3, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->shadowRadius:I

    iget p4, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->shadowOffset:I

    add-int/2addr p3, p4

    iget p4, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->borderWidth:I

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    int-to-float p3, p3

    int-to-float p2, p2

    sub-float/2addr p2, p3

    sub-float p4, p2, p3

    .line 232
    iput p4, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->height:F

    int-to-float p1, p1

    sub-float/2addr p1, p3

    const/high16 v0, 0x3f000000  # 0.5f

    mul-float p4, p4, v0

    .line 235
    iput p4, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->viewRadius:F

    .line 237
    iget v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->borderWidth:I

    int-to-float v1, v1

    sub-float/2addr p4, v1

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->dp2px(F)F

    move-result v1

    sub-float/2addr p4, v1

    iput p4, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->buttonRadius:F

    .line 239
    iput p3, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->left:F

    .line 240
    iput p3, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->top:F

    .line 241
    iput p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->right:F

    .line 242
    iput p2, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->bottom:F

    add-float/2addr p2, p3

    mul-float p2, p2, v0

    .line 245
    iput p2, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->centerY:F

    .line 247
    iget p2, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->viewRadius:F

    add-float/2addr p3, p2

    iput p3, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->buttonMinX:F

    sub-float/2addr p1, p2

    .line 248
    iput p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->buttonMaxX:F

    .line 250
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 251
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->viewState:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->setCheckedViewState(Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;)V

    goto :goto_50

    .line 253
    :cond_4b
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->viewState:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->setUncheckViewState(Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;)V

    :goto_50
    const/4 p1, 0x1

    .line 256
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isUiInited:Z

    .line 258
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12

    .line 569
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 572
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_107

    const/high16 v3, 0x3f000000  # 0.5f

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x0

    if-eq v0, v2, :cond_b6

    const/4 v6, 0x2

    if-eq v0, v6, :cond_4c

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1e

    goto/16 :goto_11b

    .line 641
    :cond_1e
    iput-boolean v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isTouchingDown:Z

    .line 643
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->postPendingDrag:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 644
    iget p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->eventX:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 645
    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v5, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    cmpl-float p1, p1, v3

    if-lez p1, :cond_3a

    const/4 v1, 0x1

    .line 647
    :cond_3a
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isChecked()Z

    move-result p1

    if-ne v1, p1, :cond_45

    .line 648
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->pendingCancelDragState()V

    goto/16 :goto_11b

    .line 650
    :cond_45
    iput-boolean v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isChecked:Z

    .line 651
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->pendingSettleState()V

    goto/16 :goto_11b

    .line 585
    :cond_4c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->eventX:F

    .line 586
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isPendingDragState()Z

    move-result p1

    if-eqz p1, :cond_76

    .line 588
    iget p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->eventX:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 589
    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v5, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 591
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->viewState:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    iget v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->buttonMinX:F

    iget v3, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->buttonMaxX:F

    sub-float/2addr v3, v1

    mul-float v3, v3, p1

    add-float/2addr v1, v3

    iput v1, v0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->buttonX:F

    goto/16 :goto_11b

    .line 595
    :cond_76
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isDragState()Z

    move-result p1

    if-eqz p1, :cond_11b

    .line 597
    iget p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->eventX:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 598
    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v5, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 600
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->viewState:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;

    iget v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->buttonMinX:F

    iget v3, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->buttonMaxX:F

    sub-float/2addr v3, v1

    mul-float v3, v3, p1

    add-float/2addr v1, v3

    iput v1, v0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->buttonX:F

    .line 604
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    iget v3, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->uncheckColor:I

    .line 606
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->checkedColor:I

    .line 607
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 604
    invoke-virtual {v1, p1, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->checkStateColor:I

    .line 609
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_11b

    .line 615
    :cond_b6
    iput-boolean v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isTouchingDown:Z

    .line 617
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->postPendingDrag:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->touchDownTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x12c

    cmp-long v0, v6, v8

    if-gtz v0, :cond_ce

    .line 621
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->toggle()V

    goto :goto_11b

    .line 622
    :cond_ce
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isDragState()Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 624
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->eventX:F

    .line 625
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 626
    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v5, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    cmpl-float p1, p1, v3

    if-lez p1, :cond_ed

    const/4 v1, 0x1

    .line 628
    :cond_ed
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isChecked()Z

    move-result p1

    if-ne v1, p1, :cond_f7

    .line 629
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->pendingCancelDragState()V

    goto :goto_11b

    .line 631
    :cond_f7
    iput-boolean v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isChecked:Z

    .line 632
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->pendingSettleState()V

    goto :goto_11b

    .line 634
    :cond_fd
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isPendingDragState()Z

    move-result p1

    if-eqz p1, :cond_11b

    .line 636
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->pendingCancelDragState()V

    goto :goto_11b

    .line 576
    :cond_107
    iput-boolean v2, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isTouchingDown:Z

    .line 577
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->touchDownTime:J

    .line 579
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->postPendingDrag:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 581
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->postPendingDrag:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11b
    :goto_11b
    return v2
.end method

.method public setChecked(Z)V
    .registers 3

    .line 482
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->isChecked()Z

    move-result v0

    if-ne p1, v0, :cond_a

    .line 483
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void

    .line 486
    :cond_a
    iget-boolean p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->enableEffect:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->toggle(ZZ)V

    return-void
.end method

.method public setEnableEffect(Z)V
    .registers 2

    .line 713
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->enableEffect:Z

    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/codemao/creativecenter/customview/CreativeSwitchButton$OnCheckedChangeListener;)V
    .registers 2

    .line 801
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->onCheckedChangeListener:Lcom/codemao/creativecenter/customview/CreativeSwitchButton$OnCheckedChangeListener;

    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    return-void
.end method

.method public final setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 2

    return-void
.end method

.method public final setPadding(IIII)V
    .registers 5

    const/4 p1, 0x0

    .line 74
    invoke-super {p0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setShadowEffect(Z)V
    .registers 6

    .line 694
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->shadowEffect:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 697
    :cond_5
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->shadowEffect:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    .line 700
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->buttonPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->shadowRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->shadowOffset:I

    int-to-float v2, v2

    iget v3, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->shadowColor:I

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_1e

    .line 705
    :cond_18
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->buttonPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :goto_1e
    return-void
.end method

.method public toggle()V
    .registers 2

    const/4 v0, 0x1

    .line 496
    invoke-virtual {p0, v0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->toggle(Z)V

    return-void
.end method

.method public toggle(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 505
    invoke-direct {p0, p1, v0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->toggle(ZZ)V

    return-void
.end method
