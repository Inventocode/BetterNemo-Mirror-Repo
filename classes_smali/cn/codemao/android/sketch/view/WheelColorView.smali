.class public Lcn/codemao/android/sketch/view/WheelColorView;
.super Landroid/view/View;
.source "WheelColorView.java"


# instance fields
.field TouchSlop:I

.field private canStartAnim:Z

.field private colors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private height:I

.field private isMove:Z

.field private itemHeight:I

.field private itemWidth:I

.field lastValue:I

.field private listener:Lcn/codemao/android/sketch/view/OnWheelViewItemSelectListener;

.field private mStartX:F

.field private mTouchX:F

.field private paddingVertical:I

.field private path:Landroid/graphics/Path;

.field private select:I

.field private showCount:I

.field private touchIndex:I

.field private valueAnimator:Landroid/animation/ValueAnimator;

.field private wheelItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/view/WheelItem;",
            ">;"
        }
    .end annotation
.end field

.field private wheelSelect:Lcn/codemao/android/sketch/view/WheelSelect;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1, p2, v0}, Lcn/codemao/android/sketch/view/WheelColorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 107
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x41b00000  # 22.0f

    invoke-static {p1, p2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcn/codemao/android/sketch/view/WheelColorView;->itemHeight:I

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x41600000  # 14.0f

    invoke-static {p1, p2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcn/codemao/android/sketch/view/WheelColorView;->itemWidth:I

    const/16 p1, 0x18

    .line 44
    iput p1, p0, Lcn/codemao/android/sketch/view/WheelColorView;->showCount:I

    const/16 p2, 0xc

    .line 46
    iput p2, p0, Lcn/codemao/android/sketch/view/WheelColorView;->select:I

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v0, 0x40c00000  # 6.0f

    invoke-static {p3, v0}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p3

    iput p3, p0, Lcn/codemao/android/sketch/view/WheelColorView;->paddingVertical:I

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Lcn/codemao/android/sketch/view/WheelColorView;->TouchSlop:I

    new-array p1, p1, [Ljava/lang/Integer;

    const p3, -0xe3e04e

    .line 57
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p1, v0

    const p3, -0xc1ea51

    .line 58
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v1, 0x1

    aput-object p3, p1, v1

    const p3, -0xabee53

    .line 59
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x2

    aput-object p3, p1, v2

    const p3, -0x8ef456

    .line 60
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x3

    aput-object p3, p1, v2

    const p3, -0x5afd5b

    .line 61
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x4

    aput-object p3, p1, v2

    const p3, -0x33fd8c

    .line 62
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x5

    aput-object p3, p1, v2

    const p3, -0x1cfdba

    .line 63
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x6

    aput-object p3, p1, v2

    const/high16 p3, -0x10000

    .line 64
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x7

    aput-object p3, p1, v2

    const p3, -0x1b1fd

    .line 65
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 v2, 0x8

    aput-object p3, p1, v2

    const p3, -0x188fd

    .line 66
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 v2, 0x9

    aput-object p3, p1, v2

    const p3, -0x16bfd

    .line 67
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 v2, 0xa

    aput-object p3, p1, v2

    const p3, -0x153fd

    .line 68
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 v2, 0xb

    aput-object p3, p1, v2

    const p3, -0x140fd

    .line 69
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    const p2, -0x12cfd

    .line 70
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p3, 0xd

    aput-object p2, p1, p3

    const p2, -0x117fd

    .line 71
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p3, 0xe

    aput-object p2, p1, p3

    const p2, -0x602fd

    .line 72
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p3, 0xf

    aput-object p2, p1, p3

    const p2, -0x370bfd

    .line 73
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p3, 0x10

    aput-object p2, p1, p3

    const p2, -0x6313fd

    .line 74
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p3, 0x11

    aput-object p2, p1, p3

    const p2, -0x9b1efd

    .line 75
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p3, 0x12

    aput-object p2, p1, p3

    const p2, -0xfc37f0

    .line 76
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p3, 0x13

    aput-object p2, p1, p3

    const p2, -0xfc519b

    .line 77
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p3, 0x14

    aput-object p2, p1, p3

    const p2, -0xfc6768

    .line 78
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p3, 0x15

    aput-object p2, p1, p3

    const p2, -0xf19f5c

    .line 79
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p3, 0x16

    aput-object p2, p1, p3

    const p2, -0xebbd55

    .line 80
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p3, 0x17

    aput-object p2, p1, p3

    .line 56
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/sketch/view/WheelColorView;->colors:Ljava/util/List;

    .line 83
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelItems:Ljava/util/List;

    const/4 p1, 0x0

    .line 84
    iput-object p1, p0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelSelect:Lcn/codemao/android/sketch/view/WheelSelect;

    .line 95
    iput-boolean v1, p0, Lcn/codemao/android/sketch/view/WheelColorView;->canStartAnim:Z

    .line 317
    iput v0, p0, Lcn/codemao/android/sketch/view/WheelColorView;->lastValue:I

    new-array p1, v1, [I

    const/16 p2, 0x32

    aput p2, p1, v0

    .line 108
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/sketch/view/WheelColorView;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 109
    new-instance p2, Lcn/codemao/android/sketch/view/WheelColorView$1;

    invoke-direct {p2, p0}, Lcn/codemao/android/sketch/view/WheelColorView$1;-><init>(Lcn/codemao/android/sketch/view/WheelColorView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 133
    iget-object p1, p0, Lcn/codemao/android/sketch/view/WheelColorView;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x1f4

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method static synthetic access$002(Lcn/codemao/android/sketch/view/WheelColorView;Z)Z
    .registers 2

    .line 35
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/WheelColorView;->canStartAnim:Z

    return p1
.end method

.method static synthetic access$100(Lcn/codemao/android/sketch/view/WheelColorView;)V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/WheelColorView;->handleUp()V

    return-void
.end method

.method static synthetic access$200(Lcn/codemao/android/sketch/view/WheelColorView;F)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/WheelColorView;->handleMove(F)V

    return-void
.end method

.method static synthetic access$300(Lcn/codemao/android/sketch/view/WheelColorView;)Ljava/util/List;
    .registers 1

    .line 35
    iget-object p0, p0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcn/codemao/android/sketch/view/WheelColorView;I)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/WheelColorView;->notifyChanged(I)V

    return-void
.end method

.method private adjust()V
    .registers 7

    .line 439
    iget-object v0, p0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/WheelItem;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/WheelItem;->getStartX()F

    move-result v0

    iget v2, p0, Lcn/codemao/android/sketch/view/WheelColorView;->itemWidth:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/4 v3, -0x1

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_74

    .line 443
    iget-object v0, p0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/WheelItem;

    .line 445
    iget-object v2, p0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/view/WheelItem;

    invoke-virtual {v2}, Lcn/codemao/android/sketch/view/WheelItem;->getStartX()F

    move-result v2

    iget v4, p0, Lcn/codemao/android/sketch/view/WheelColorView;->itemWidth:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    invoke-virtual {v0, v2}, Lcn/codemao/android/sketch/view/WheelItem;->setStartX(F)V

    .line 447
    iget-object v2, p0, Lcn/codemao/android/sketch/view/WheelColorView;->colors:Ljava/util/List;

    iget-object v4, p0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelItems:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/view/WheelItem;

    invoke-virtual {v4}, Lcn/codemao/android/sketch/view/WheelItem;->getFontColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, v3, :cond_52

    return-void

    :cond_52
    add-int/2addr v2, v3

    if-gez v2, :cond_5c

    .line 453
    iget-object v3, p0, Lcn/codemao/android/sketch/view/WheelColorView;->colors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    .line 456
    :cond_5c
    iget-object v3, p0, Lcn/codemao/android/sketch/view/WheelColorView;->colors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/codemao/android/sketch/view/WheelItem;->setFontColor(I)V

    .line 458
    iget-object v2, p0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelItems:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 459
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 463
    :cond_74
    iget-object v0, p0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/WheelItem;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/WheelItem;->getStartX()F

    move-result v0

    iget v2, p0, Lcn/codemao/android/sketch/view/WheelColorView;->itemWidth:I

    neg-int v4, v2

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v2

    int-to-float v2, v4

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_ee

    .line 465
    iget-object v0, p0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/WheelItem;

    .line 467
    iget-object v2, p0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/view/WheelItem;

    invoke-virtual {v2}, Lcn/codemao/android/sketch/view/WheelItem;->getStartX()F

    move-result v2

    iget v4, p0, Lcn/codemao/android/sketch/view/WheelColorView;->itemWidth:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    invoke-virtual {v0, v2}, Lcn/codemao/android/sketch/view/WheelItem;->setStartX(F)V

    .line 469
    iget-object v2, p0, Lcn/codemao/android/sketch/view/WheelColorView;->colors:Ljava/util/List;

    iget-object v4, p0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/view/WheelItem;

    invoke-virtual {v4}, Lcn/codemao/android/sketch/view/WheelItem;->getFontColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, v3, :cond_cb

    return-void

    :cond_cb
    add-int/lit8 v2, v2, 0x1

    .line 474
    iget-object v3, p0, Lcn/codemao/android/sketch/view/WheelColorView;->colors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_d6

    goto :goto_d7

    :cond_d6
    move v1, v2

    .line 478
    :goto_d7
    iget-object v2, p0, Lcn/codemao/android/sketch/view/WheelColorView;->colors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/view/WheelItem;->setFontColor(I)V

    .line 480
    iget-object v1, p0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_ee
    return-void
.end method

.method private declared-synchronized handleMove(F)V
    .registers 6

    monitor-enter p0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_8

    .line 362
    monitor-exit p0

    return-void

    .line 363
    :cond_8
    :try_start_8
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcn/codemao/android/sketch/view/WheelColorView;->itemWidth:I

    int-to-float v3, v2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_26

    if-lez v0, :cond_1d

    int-to-float v0, v2

    sub-float/2addr p1, v0

    .line 365
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/WheelColorView;->handleMove(F)V

    .line 366
    iget p1, p0, Lcn/codemao/android/sketch/view/WheelColorView;->itemWidth:I

    goto :goto_25

    :cond_1d
    int-to-float v0, v2

    add-float/2addr p1, v0

    .line 368
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/WheelColorView;->handleMove(F)V

    .line 369
    iget p1, p0, Lcn/codemao/android/sketch/view/WheelColorView;->itemWidth:I

    neg-int p1, p1

    :goto_25
    int-to-float p1, p1

    .line 373
    :cond_26
    iget-object v0, p0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/view/WheelItem;

    .line 374
    invoke-virtual {v1, p1}, Lcn/codemao/android/sketch/view/WheelItem;->adjust(F)V

    goto :goto_2c

    .line 377
    :cond_3c
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 379
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/WheelColorView;->adjust()V
    :try_end_42
    .catchall {:try_start_8 .. :try_end_42} :catchall_44

    .line 382
    monitor-exit p0

    return-void

    :catchall_44
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized handleUp()V
    .registers 7

    monitor-enter p0

    const/4 v0, 0x0

    .line 390
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_63

    .line 391
    iget-object v1, p0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/view/WheelItem;

    .line 393
    invoke-virtual {v1}, Lcn/codemao/android/sketch/view/WheelItem;->getStartX()F

    move-result v3

    iget-object v4, p0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelSelect:Lcn/codemao/android/sketch/view/WheelSelect;

    invoke-virtual {v4}, Lcn/codemao/android/sketch/view/WheelSelect;->getStartX()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_37

    invoke-virtual {v1}, Lcn/codemao/android/sketch/view/WheelItem;->getStartX()F

    move-result v3

    iget-object v4, p0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelSelect:Lcn/codemao/android/sketch/view/WheelSelect;

    invoke-virtual {v4}, Lcn/codemao/android/sketch/view/WheelSelect;->getStartX()I

    move-result v4

    iget v5, p0, Lcn/codemao/android/sketch/view/WheelColorView;->itemWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_37

    goto :goto_64

    .line 398
    :cond_37
    invoke-virtual {v1}, Lcn/codemao/android/sketch/view/WheelItem;->getStartX()F

    move-result v3

    iget-object v4, p0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelSelect:Lcn/codemao/android/sketch/view/WheelSelect;

    invoke-virtual {v4}, Lcn/codemao/android/sketch/view/WheelSelect;->getStartX()I

    move-result v4

    iget v5, p0, Lcn/codemao/android/sketch/view/WheelColorView;->itemWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_60

    invoke-virtual {v1}, Lcn/codemao/android/sketch/view/WheelItem;->getStartX()F

    move-result v1

    iget-object v3, p0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelSelect:Lcn/codemao/android/sketch/view/WheelSelect;

    invoke-virtual {v3}, Lcn/codemao/android/sketch/view/WheelSelect;->getStartX()I

    move-result v3

    iget v4, p0, Lcn/codemao/android/sketch/view/WheelColorView;->itemWidth:I
    :try_end_57
    .catchall {:try_start_2 .. :try_end_57} :catchall_a9

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_60

    add-int/lit8 v0, v0, -0x1

    goto :goto_64

    :cond_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_63
    const/4 v0, -0x1

    :goto_64
    if-ne v0, v2, :cond_68

    .line 405
    monitor-exit p0

    return-void

    .line 408
    :cond_68
    :try_start_68
    iget-object v1, p0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelSelect:Lcn/codemao/android/sketch/view/WheelSelect;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/view/WheelSelect;->getStartX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/view/WheelItem;

    invoke-virtual {v2}, Lcn/codemao/android/sketch/view/WheelItem;->getStartX()F

    move-result v2

    sub-float/2addr v1, v2

    .line 410
    iget-object v2, p0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_82
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_92

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/view/WheelItem;

    .line 411
    invoke-virtual {v3, v1}, Lcn/codemao/android/sketch/view/WheelItem;->adjust(F)V

    goto :goto_82

    .line 413
    :cond_92
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 415
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/WheelColorView;->adjust()V

    .line 417
    iget-object v1, p0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/WheelItem;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/WheelItem;->getFontColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/codemao/android/sketch/view/WheelColorView;->notifyChanged(I)V
    :try_end_a7
    .catchall {:try_start_68 .. :try_end_a7} :catchall_a9

    .line 418
    monitor-exit p0

    return-void

    :catchall_a9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initWheelItems(III)V
    .registers 17

    move-object v0, p0

    move v7, p1

    .line 192
    iget-object v1, v0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 212
    iget v1, v0, Lcn/codemao/android/sketch/view/WheelColorView;->select:I

    add-int/lit8 v8, v1, -0xc

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 213
    :goto_d
    iget-object v1, v0, Lcn/codemao/android/sketch/view/WheelColorView;->colors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_51

    mul-int v1, v7, v10

    add-int v2, v8, v10

    if-gez v2, :cond_22

    .line 217
    iget-object v3, v0, Lcn/codemao/android/sketch/view/WheelColorView;->colors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    .line 220
    :cond_22
    iget-object v3, v0, Lcn/codemao/android/sketch/view/WheelColorView;->colors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_31

    .line 221
    iget-object v3, v0, Lcn/codemao/android/sketch/view/WheelColorView;->colors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v2, v3

    .line 225
    :cond_31
    iget-object v11, v0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelItems:Ljava/util/List;

    new-instance v12, Lcn/codemao/android/sketch/view/WheelItem;

    int-to-float v3, v1

    iget-object v1, v0, Lcn/codemao/android/sketch/view/WheelColorView;->colors:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v1, v12

    move v2, v3

    move v3, p1

    move v4, p2

    move/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcn/codemao/android/sketch/view/WheelItem;-><init>(FIIII)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_51
    add-int/lit8 v1, v8, -0x1

    if-gez v1, :cond_5c

    .line 231
    iget-object v2, v0, Lcn/codemao/android/sketch/view/WheelColorView;->colors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 232
    :cond_5c
    iget-object v10, v0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelItems:Ljava/util/List;

    new-instance v11, Lcn/codemao/android/sketch/view/WheelItem;

    neg-int v2, v7

    int-to-float v2, v2

    iget-object v3, v0, Lcn/codemao/android/sketch/view/WheelColorView;->colors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v1, v11

    move v3, p1

    move v4, p2

    move/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcn/codemao/android/sketch/view/WheelItem;-><init>(FIIII)V

    invoke-interface {v10, v9, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 234
    iget-object v1, v0, Lcn/codemao/android/sketch/view/WheelColorView;->colors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v8, v1

    .line 235
    iget-object v1, v0, Lcn/codemao/android/sketch/view/WheelColorView;->colors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v8, v1, :cond_8f

    .line 236
    iget-object v1, v0, Lcn/codemao/android/sketch/view/WheelColorView;->colors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v8, v1

    .line 239
    :cond_8f
    iget-object v9, v0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelItems:Ljava/util/List;

    new-instance v10, Lcn/codemao/android/sketch/view/WheelItem;

    iget v1, v0, Lcn/codemao/android/sketch/view/WheelColorView;->showCount:I

    mul-int v1, v1, v7

    int-to-float v2, v1

    iget-object v1, v0, Lcn/codemao/android/sketch/view/WheelColorView;->colors:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v1, v10

    move v3, p1

    move v4, p2

    move/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcn/codemao/android/sketch/view/WheelItem;-><init>(FIIII)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private notifyChanged(I)V
    .registers 4

    .line 422
    iget-object v0, p0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelSelect:Lcn/codemao/android/sketch/view/WheelSelect;

    if-eqz v0, :cond_7

    .line 423
    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/view/WheelSelect;->setFontColor(I)V

    .line 424
    :cond_7
    iget-object v0, p0, Lcn/codemao/android/sketch/view/WheelColorView;->colors:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    .line 426
    iput v0, p0, Lcn/codemao/android/sketch/view/WheelColorView;->select:I

    .line 427
    iget-object v0, p0, Lcn/codemao/android/sketch/view/WheelColorView;->listener:Lcn/codemao/android/sketch/view/OnWheelViewItemSelectListener;

    if-eqz v0, :cond_1d

    .line 428
    invoke-interface {v0, p1}, Lcn/codemao/android/sketch/view/OnWheelViewItemSelectListener;->onColorSelected(I)V

    :cond_1d
    return-void
.end method

.method private scrollDiff(F)V
    .registers 4

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scrollDiff: diff = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WheelColorView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x42480000  # 50.0f

    div-float/2addr p1, v0

    .line 324
    iget-object v0, p0, Lcn/codemao/android/sketch/view/WheelColorView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 325
    iget-object v0, p0, Lcn/codemao/android/sketch/view/WheelColorView;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcn/codemao/android/sketch/view/WheelColorView$2;

    invoke-direct {v1, p0, p1}, Lcn/codemao/android/sketch/view/WheelColorView$2;-><init>(Lcn/codemao/android/sketch/view/WheelColorView;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 339
    iget-object p1, p0, Lcn/codemao/android/sketch/view/WheelColorView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private touchIndexSafe()Z
    .registers 3

    .line 314
    iget v0, p0, Lcn/codemao/android/sketch/view/WheelColorView;->touchIndex:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_14

    if-lez v0, :cond_14

    iget-object v1, p0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ge v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private touchItem(FF)I
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 344
    :goto_2
    iget-object v2, p0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 345
    iget-object v2, p0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/view/WheelItem;

    .line 347
    invoke-virtual {v2, p1, p2}, Lcn/codemao/android/sketch/view/WheelItem;->containsPoint(FF)Z

    move-result v2

    if-eqz v2, :cond_19

    return v1

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1c
    return v0
.end method


# virtual methods
.method public getSelRect()Landroid/graphics/RectF;
    .registers 2

    .line 175
    iget-object v0, p0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelSelect:Lcn/codemao/android/sketch/view/WheelSelect;

    if-eqz v0, :cond_9

    .line 176
    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/WheelSelect;->getSelRectF()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public listener(Lcn/codemao/android/sketch/view/OnWheelViewItemSelectListener;)Lcn/codemao/android/sketch/view/WheelColorView;
    .registers 2

    .line 510
    iput-object p1, p0, Lcn/codemao/android/sketch/view/WheelColorView;->listener:Lcn/codemao/android/sketch/view/OnWheelViewItemSelectListener;

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 490
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 491
    iget-object v0, p0, Lcn/codemao/android/sketch/view/WheelColorView;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 492
    iget-object v0, p0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/view/WheelItem;

    .line 493
    invoke-virtual {v1, p1}, Lcn/codemao/android/sketch/view/WheelItem;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_e

    .line 495
    :cond_1e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 498
    iget-object v0, p0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelSelect:Lcn/codemao/android/sketch/view/WheelSelect;

    if-eqz v0, :cond_28

    .line 499
    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/view/WheelSelect;->onDraw(Landroid/graphics/Canvas;)V

    :cond_28
    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    .line 142
    iget p1, p0, Lcn/codemao/android/sketch/view/WheelColorView;->itemHeight:I

    iget p2, p0, Lcn/codemao/android/sketch/view/WheelColorView;->paddingVertical:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iput p1, p0, Lcn/codemao/android/sketch/view/WheelColorView;->height:I

    .line 145
    iget p1, p0, Lcn/codemao/android/sketch/view/WheelColorView;->itemWidth:I

    iget p2, p0, Lcn/codemao/android/sketch/view/WheelColorView;->showCount:I

    mul-int p1, p1, p2

    iput p1, p0, Lcn/codemao/android/sketch/view/WheelColorView;->width:I

    const/high16 p2, 0x40000000  # 2.0f

    .line 148
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget v0, p0, Lcn/codemao/android/sketch/view/WheelColorView;->height:I

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 11

    .line 154
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 157
    iget p1, p0, Lcn/codemao/android/sketch/view/WheelColorView;->itemWidth:I

    iget p2, p0, Lcn/codemao/android/sketch/view/WheelColorView;->itemHeight:I

    iget p3, p0, Lcn/codemao/android/sketch/view/WheelColorView;->paddingVertical:I

    invoke-direct {p0, p1, p2, p3}, Lcn/codemao/android/sketch/view/WheelColorView;->initWheelItems(III)V

    .line 159
    new-instance p1, Lcn/codemao/android/sketch/view/WheelSelect;

    iget v2, p0, Lcn/codemao/android/sketch/view/WheelColorView;->itemWidth:I

    mul-int/lit8 v1, v2, 0xc

    iget v3, p0, Lcn/codemao/android/sketch/view/WheelColorView;->height:I

    iget-object p2, p0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelItems:Ljava/util/List;

    const/16 p3, 0xd

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/codemao/android/sketch/view/WheelItem;

    invoke-virtual {p2}, Lcn/codemao/android/sketch/view/WheelItem;->getFontColor()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcn/codemao/android/sketch/view/WheelSelect;-><init>(IIIILandroid/content/Context;)V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelSelect:Lcn/codemao/android/sketch/view/WheelSelect;

    .line 163
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/WheelColorView;->path:Landroid/graphics/Path;

    .line 164
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 165
    iget p2, p0, Lcn/codemao/android/sketch/view/WheelColorView;->paddingVertical:I

    int-to-float p3, p2

    iput p3, p1, Landroid/graphics/RectF;->top:F

    const/4 p3, 0x0

    .line 166
    iput p3, p1, Landroid/graphics/RectF;->left:F

    .line 167
    iget p3, p0, Lcn/codemao/android/sketch/view/WheelColorView;->width:I

    int-to-float p3, p3

    iput p3, p1, Landroid/graphics/RectF;->right:F

    .line 168
    iget p3, p0, Lcn/codemao/android/sketch/view/WheelColorView;->itemHeight:I

    add-int/2addr p3, p2

    int-to-float p3, p3

    iput p3, p1, Landroid/graphics/RectF;->bottom:F

    .line 169
    iget-object p3, p0, Lcn/codemao/android/sketch/view/WheelColorView;->path:Landroid/graphics/Path;

    div-int/lit8 p4, p2, 0x3

    int-to-float p4, p4

    div-int/lit8 p2, p2, 0x3

    int-to-float p2, p2

    sget-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p3, p1, p4, p2, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 265
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v1, "WheelColorView"

    const/4 v2, 0x1

    if-eqz v0, :cond_a4

    const/16 v3, 0xd

    if-eq v0, v2, :cond_6b

    const/4 v4, 0x2

    if-eq v0, v4, :cond_15

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6b

    goto/16 :goto_9f

    .line 277
    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v4, p0, Lcn/codemao/android/sketch/view/WheelColorView;->mTouchX:F

    sub-float/2addr v0, v4

    .line 278
    iget-boolean v4, p0, Lcn/codemao/android/sketch/view/WheelColorView;->isMove:Z

    if-nez v4, :cond_34

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcn/codemao/android/sketch/view/WheelColorView;->mStartX:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcn/codemao/android/sketch/view/WheelColorView;->TouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_34

    .line 279
    iput-boolean v2, p0, Lcn/codemao/android/sketch/view/WheelColorView;->isMove:Z

    .line 282
    :cond_34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchEvent: dy = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " TouchSlop = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcn/codemao/android/sketch/view/WheelColorView;->TouchSlop:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcn/codemao/android/sketch/view/WheelColorView;->mTouchX:F

    .line 286
    invoke-direct {p0, v0}, Lcn/codemao/android/sketch/view/WheelColorView;->handleMove(F)V

    .line 288
    iget-object v0, p0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelItems:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/WheelItem;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/WheelItem;->getFontColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/codemao/android/sketch/view/WheelColorView;->notifyChanged(I)V

    goto :goto_9f

    .line 295
    :cond_6b
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/WheelColorView;->isMove:Z

    if-eqz v0, :cond_73

    .line 296
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/WheelColorView;->handleUp()V

    goto :goto_9f

    .line 298
    :cond_73
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/WheelColorView;->canStartAnim:Z

    if-eqz v0, :cond_9f

    invoke-direct {p0}, Lcn/codemao/android/sketch/view/WheelColorView;->touchIndexSafe()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 299
    iget-object v0, p0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelItems:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/WheelItem;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/WheelItem;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 300
    iget-object v1, p0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelItems:Ljava/util/List;

    iget v2, p0, Lcn/codemao/android/sketch/view/WheelColorView;->touchIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/view/WheelItem;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/view/WheelItem;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 301
    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    .line 302
    invoke-direct {p0, v0}, Lcn/codemao/android/sketch/view/WheelColorView;->scrollDiff(F)V

    .line 309
    :cond_9f
    :goto_9f
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_a4
    const/4 v0, 0x0

    .line 267
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/WheelColorView;->isMove:Z

    .line 268
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/view/WheelColorView;->mTouchX:F

    iput v0, p0, Lcn/codemao/android/sketch/view/WheelColorView;->mStartX:F

    .line 269
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 270
    iget v0, p0, Lcn/codemao/android/sketch/view/WheelColorView;->mTouchX:F

    invoke-direct {p0, v0, p1}, Lcn/codemao/android/sketch/view/WheelColorView;->touchItem(FF)I

    move-result p1

    iput p1, p0, Lcn/codemao/android/sketch/view/WheelColorView;->touchIndex:I

    .line 272
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTouchEvent: touchIndex = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/codemao/android/sketch/view/WheelColorView;->touchIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public rebuild(I)V
    .registers 4

    .line 527
    iget-object v0, p0, Lcn/codemao/android/sketch/view/WheelColorView;->wheelSelect:Lcn/codemao/android/sketch/view/WheelSelect;

    if-eqz v0, :cond_7

    .line 528
    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/view/WheelSelect;->setFontColor(I)V

    .line 529
    :cond_7
    iget-object v0, p0, Lcn/codemao/android/sketch/view/WheelColorView;->colors:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_16

    .line 531
    iput p1, p0, Lcn/codemao/android/sketch/view/WheelColorView;->select:I

    .line 533
    :cond_16
    iget p1, p0, Lcn/codemao/android/sketch/view/WheelColorView;->itemWidth:I

    iget v0, p0, Lcn/codemao/android/sketch/view/WheelColorView;->itemHeight:I

    iget v1, p0, Lcn/codemao/android/sketch/view/WheelColorView;->paddingVertical:I

    invoke-direct {p0, p1, v0, v1}, Lcn/codemao/android/sketch/view/WheelColorView;->initWheelItems(III)V

    .line 534
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSelectColor(I)V
    .registers 2

    .line 522
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/WheelColorView;->notifyChanged(I)V

    return-void
.end method
