.class public Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;
.super Lcom/nemo/commonui/xpopup/animator/PopupAnimator;
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
.method public constructor <init>(Landroid/view/View;Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)V
    .registers 3

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;-><init>(Landroid/view/View;Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)V

    .line 20
    new-instance p1, Landroid/animation/FloatEvaluator;

    invoke-direct {p1}, Landroid/animation/FloatEvaluator;-><init>()V

    iput-object p1, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->floatEvaluator:Landroid/animation/FloatEvaluator;

    .line 21
    new-instance p1, Landroid/animation/IntEvaluator;

    invoke-direct {p1}, Landroid/animation/IntEvaluator;-><init>()V

    iput-object p1, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->intEvaluator:Landroid/animation/IntEvaluator;

    const p1, 0x3e4ccccd  # 0.2f

    .line 23
    iput p1, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->startAlpha:F

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->startScale:F

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->isOnlyScaleX:Z

    return-void
.end method

.method static synthetic access$000(Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;)V
    .registers 1

    .line 18
    invoke-direct {p0}, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->applyPivot()V

    return-void
.end method

.method static synthetic access$100(Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;)I
    .registers 1

    .line 18
    iget p0, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->startScrollX:I

    return p0
.end method

.method static synthetic access$200(Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;)I
    .registers 1

    .line 18
    iget p0, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->startScrollY:I

    return p0
.end method

.method static synthetic access$300(Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;)F
    .registers 1

    .line 18
    iget p0, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->startAlpha:F

    return p0
.end method

.method static synthetic access$400(Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;)Landroid/animation/FloatEvaluator;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->floatEvaluator:Landroid/animation/FloatEvaluator;

    return-object p0
.end method

.method static synthetic access$500(Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;)Landroid/animation/IntEvaluator;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->intEvaluator:Landroid/animation/IntEvaluator;

    return-object p0
.end method

.method static synthetic access$600(Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;)F
    .registers 1

    .line 18
    iget p0, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->startScale:F

    return p0
.end method

.method private applyPivot()V
    .registers 4

    .line 51
    sget-object v0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator$4;->$SwitchMap$com$nemo$commonui$xpopup$enums$PopupAnimation:[I

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->popupAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_10e

    goto/16 :goto_10d

    .line 97
    :pswitch_10  #0x8
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 98
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 100
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->startScrollX:I

    .line 101
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->startScrollY:I

    goto/16 :goto_10d

    .line 91
    :pswitch_32  #0x7
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 92
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 94
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->startScrollY:I

    goto/16 :goto_10d

    .line 84
    :pswitch_53  #0x6
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 85
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 87
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->startScrollX:I

    .line 88
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->startScrollY:I

    goto/16 :goto_10d

    .line 78
    :pswitch_7b  #0x5
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 79
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 81
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->startScrollX:I

    goto :goto_10d

    .line 72
    :pswitch_9b  #0x4
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 73
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 74
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->startScrollX:I

    .line 75
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->startScrollY:I

    goto :goto_10d

    .line 66
    :pswitch_bc  #0x3
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 67
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 69
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->startScrollY:I

    goto :goto_10d

    .line 60
    :pswitch_d6  #0x2
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 61
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 62
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->startScrollX:I

    .line 63
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->startScrollY:I

    goto :goto_10d

    .line 53
    :pswitch_f1  #0x1
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 54
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 56
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->startScrollX:I

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->startScrollY:I

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

    .line 131
    fill-array-data v0, :array_28

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 132
    new-instance v1, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator$3;

    invoke-direct {v1, p0}, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator$3;-><init>(Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 145
    invoke-static {}, Lcom/nemo/commonui/xpopup/XPopup;->getAnimationDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v2}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 146
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 147
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

    .line 108
    fill-array-data v0, :array_28

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 109
    new-instance v1, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator$2;

    invoke-direct {v1, p0}, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator$2;-><init>(Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 125
    invoke-static {}, Lcom/nemo/commonui/xpopup/XPopup;->getAnimationDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v2}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 126
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

    .line 33
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    iget v1, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->startAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 34
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    iget v1, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->startScale:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 35
    iget-boolean v0, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->isOnlyScaleX:Z

    if-nez v0, :cond_19

    .line 36
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    iget v1, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->startScale:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 39
    :cond_19
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    new-instance v1, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator$1;

    invoke-direct {v1, p0}, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator$1;-><init>(Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
