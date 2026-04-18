.class public Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;
.super Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;
.source "ScrollScaleAnimator.java"


# instance fields
.field private floatEvaluator:Landroid/animation/FloatEvaluator;

.field private intEvaluator:Landroid/animation/IntEvaluator;

.field public isOnlyScaleX:Z

.field private startAlpha:F

.field private startScale:F

.field private startScrollX:I

.field private startScrollY:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lcn/codemao/android/sketch/xpopup/enums/PopupAnimation;)V
    .registers 3

    .line 32
    invoke-direct {p0, p1, p2}, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;-><init>(Landroid/view/View;Lcn/codemao/android/sketch/xpopup/enums/PopupAnimation;)V

    .line 24
    new-instance p1, Landroid/animation/FloatEvaluator;

    invoke-direct {p1}, Landroid/animation/FloatEvaluator;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;->floatEvaluator:Landroid/animation/FloatEvaluator;

    .line 25
    new-instance p1, Landroid/animation/IntEvaluator;

    invoke-direct {p1}, Landroid/animation/IntEvaluator;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;->intEvaluator:Landroid/animation/IntEvaluator;

    const p1, 0x3e4ccccd  # 0.2f

    .line 27
    iput p1, p0, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;->startAlpha:F

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;->startScale:F

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;->isOnlyScaleX:Z

    return-void
.end method

.method static synthetic access$000(Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;)V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;->applyPivot()V

    return-void
.end method

.method static synthetic access$100(Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;)I
    .registers 1

    .line 22
    iget p0, p0, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;->startScrollX:I

    return p0
.end method

.method static synthetic access$200(Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;)I
    .registers 1

    .line 22
    iget p0, p0, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;->startScrollY:I

    return p0
.end method

.method static synthetic access$300(Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;)F
    .registers 1

    .line 22
    iget p0, p0, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;->startAlpha:F

    return p0
.end method

.method static synthetic access$400(Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;)Landroid/animation/FloatEvaluator;
    .registers 1

    .line 22
    iget-object p0, p0, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;->floatEvaluator:Landroid/animation/FloatEvaluator;

    return-object p0
.end method

.method static synthetic access$500(Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;)Landroid/animation/IntEvaluator;
    .registers 1

    .line 22
    iget-object p0, p0, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;->intEvaluator:Landroid/animation/IntEvaluator;

    return-object p0
.end method

.method static synthetic access$600(Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;)F
    .registers 1

    .line 22
    iget p0, p0, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;->startScale:F

    return p0
.end method

.method private applyPivot()V
    .registers 4

    .line 55
    sget-object v0, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator$4;->$SwitchMap$cn$codemao$android$sketch$xpopup$enums$PopupAnimation:[I

    iget-object v1, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->popupAnimation:Lcn/codemao/android/sketch/xpopup/enums/PopupAnimation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_10e

    goto/16 :goto_10d

    .line 101
    :pswitch_10  #0x8
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 102
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 104
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;->startScrollX:I

    .line 105
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;->startScrollY:I

    goto/16 :goto_10d

    .line 95
    :pswitch_32  #0x7
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 96
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 98
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;->startScrollY:I

    goto/16 :goto_10d

    .line 88
    :pswitch_53  #0x6
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 89
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 91
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;->startScrollX:I

    .line 92
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;->startScrollY:I

    goto/16 :goto_10d

    .line 82
    :pswitch_7b  #0x5
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 83
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 85
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;->startScrollX:I

    goto :goto_10d

    .line 76
    :pswitch_9b  #0x4
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 77
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 78
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;->startScrollX:I

    .line 79
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;->startScrollY:I

    goto :goto_10d

    .line 70
    :pswitch_bc  #0x3
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 71
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 73
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;->startScrollY:I

    goto :goto_10d

    .line 64
    :pswitch_d6  #0x2
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 65
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 66
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;->startScrollX:I

    .line 67
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;->startScrollY:I

    goto :goto_10d

    .line 57
    :pswitch_f1  #0x1
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 58
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 60
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;->startScrollX:I

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;->startScrollY:I

    :goto_10d
    return-void

    :pswitch_data_10e
    .packed-switch 0x1
        :pswitch_f1  #00000001
        :pswitch_d6  #00000002
        :pswitch_bc  #00000003
        :pswitch_9b  #00000004
        :pswitch_7b  #00000005
        :pswitch_53  #00000006
        :pswitch_32  #00000007
        :pswitch_10  #00000008
    .end packed-switch
.end method


# virtual methods
.method public animateDismiss()V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 135
    fill-array-data v0, :array_28

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 136
    new-instance v1, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator$3;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator$3;-><init>(Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 150
    invoke-static {}, Lcn/codemao/android/sketch/xpopup/XPopup;->getAnimationDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v2}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 151
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 152
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_28
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public animateShow()V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 112
    fill-array-data v0, :array_28

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 113
    new-instance v1, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator$2;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator$2;-><init>(Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 129
    invoke-static {}, Lcn/codemao/android/sketch/xpopup/XPopup;->getAnimationDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v2}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 130
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_28
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public initAnimator()V
    .registers 3

    .line 37
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    iget v1, p0, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;->startAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 38
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    iget v1, p0, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;->startScale:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 39
    iget-boolean v0, p0, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;->isOnlyScaleX:Z

    if-nez v0, :cond_19

    .line 40
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    iget v1, p0, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;->startScale:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 43
    :cond_19
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    new-instance v1, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator$1;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator$1;-><init>(Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
