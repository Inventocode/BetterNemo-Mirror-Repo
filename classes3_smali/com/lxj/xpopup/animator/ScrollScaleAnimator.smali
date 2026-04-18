.class public Lcom/lxj/xpopup/animator/ScrollScaleAnimator;
.super Lcom/lxj/xpopup/animator/PopupAnimator;
.source "ScrollScaleAnimator.java"


# instance fields
.field private intEvaluator:Landroid/animation/IntEvaluator;

.field private startAlpha:F

.field private startScale:F

.field private startScrollX:I

.field private startScrollY:I


# direct methods
.method public constructor <init>(Landroid/view/View;ILcom/lxj/xpopup/enums/PopupAnimation;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "animationDuration",
            "popupAnimation"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/lxj/xpopup/animator/PopupAnimator;-><init>(Landroid/view/View;ILcom/lxj/xpopup/enums/PopupAnimation;)V

    .line 15
    new-instance p1, Landroid/animation/IntEvaluator;

    invoke-direct {p1}, Landroid/animation/IntEvaluator;-><init>()V

    iput-object p1, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->intEvaluator:Landroid/animation/IntEvaluator;

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->startAlpha:F

    .line 18
    iput p1, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->startScale:F

    return-void
.end method

.method static synthetic access$000(Lcom/lxj/xpopup/animator/ScrollScaleAnimator;)V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->applyPivot()V

    return-void
.end method

.method static synthetic access$100(Lcom/lxj/xpopup/animator/ScrollScaleAnimator;)I
    .registers 1

    .line 13
    iget p0, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->startScrollX:I

    return p0
.end method

.method static synthetic access$200(Lcom/lxj/xpopup/animator/ScrollScaleAnimator;)I
    .registers 1

    .line 13
    iget p0, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->startScrollY:I

    return p0
.end method

.method static synthetic access$300(Lcom/lxj/xpopup/animator/ScrollScaleAnimator;)Landroid/animation/IntEvaluator;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->intEvaluator:Landroid/animation/IntEvaluator;

    return-object p0
.end method

.method static synthetic access$400(Lcom/lxj/xpopup/animator/ScrollScaleAnimator;F)V
    .registers 2

    .line 13
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->doScaleAnimation(F)V

    return-void
.end method

.method private applyPivot()V
    .registers 4

    .line 39
    sget-object v0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator$4;->$SwitchMap$com$lxj$xpopup$enums$PopupAnimation:[I

    iget-object v1, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->popupAnimation:Lcom/lxj/xpopup/enums/PopupAnimation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_164

    goto/16 :goto_162

    .line 90
    :pswitch_10  #0x8
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 91
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 92
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->startScrollX:I

    .line 93
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->startScrollY:I

    .line 94
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    iget v1, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->startScale:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 95
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    iget v1, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->startScale:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    goto/16 :goto_162

    .line 84
    :pswitch_40  #0x7
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 85
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 86
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->startScrollY:I

    .line 87
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    iget v1, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->startScale:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    goto/16 :goto_162

    .line 76
    :pswitch_68  #0x6
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 77
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 78
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->startScrollX:I

    .line 79
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->startScrollY:I

    .line 80
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    iget v1, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->startScale:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 81
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    iget v1, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->startScale:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    goto/16 :goto_162

    .line 70
    :pswitch_9e  #0x5
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 71
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 72
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->startScrollX:I

    .line 73
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    iget v1, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->startScale:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    goto/16 :goto_162

    .line 62
    :pswitch_c6  #0x4
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 63
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 64
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->startScrollX:I

    .line 65
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->startScrollY:I

    .line 66
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    iget v1, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->startScale:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 67
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    iget v1, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->startScale:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_162

    .line 56
    :pswitch_f5  #0x3
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 57
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 58
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->startScrollY:I

    .line 59
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    iget v1, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->startScale:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_162

    .line 48
    :pswitch_116  #0x2
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 49
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 50
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->startScrollX:I

    .line 51
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->startScrollY:I

    .line 52
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    iget v1, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->startScale:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 53
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    iget v1, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->startScale:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_162

    .line 41
    :pswitch_13f  #0x1
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 42
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 43
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->startScrollX:I

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->startScrollY:I

    .line 45
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    iget v1, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->startScale:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    :goto_162
    return-void

    nop

    :pswitch_data_164
    .packed-switch 0x1
        :pswitch_13f  #00000001
        :pswitch_116  #00000002
        :pswitch_f5  #00000003
        :pswitch_c6  #00000004
        :pswitch_9e  #00000005
        :pswitch_68  #00000006
        :pswitch_40  #00000007
        :pswitch_10  #00000008
    .end packed-switch
.end method

.method private doScaleAnimation(F)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fraction"
        }
    .end annotation

    .line 124
    sget-object v0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator$4;->$SwitchMap$com$lxj$xpopup$enums$PopupAnimation:[I

    iget-object v1, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->popupAnimation:Lcom/lxj/xpopup/enums/PopupAnimation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    goto :goto_24

    .line 131
    :pswitch_e  #0x3, 0x7
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_24

    .line 137
    :pswitch_14  #0x2, 0x4, 0x6, 0x8
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 138
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_24

    .line 127
    :pswitch_1f  #0x1, 0x5
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    :goto_24
    return-void

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_1f  #00000001
        :pswitch_14  #00000002
        :pswitch_e  #00000003
        :pswitch_14  #00000004
        :pswitch_1f  #00000005
        :pswitch_14  #00000006
        :pswitch_e  #00000007
        :pswitch_14  #00000008
    .end packed-switch
.end method


# virtual methods
.method public animateDismiss()V
    .registers 4

    .line 145
    iget-boolean v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->animating:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 146
    fill-array-data v0, :array_2e

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 147
    invoke-virtual {p0, v0}, Lcom/lxj/xpopup/animator/PopupAnimator;->observerAnimator(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 148
    new-instance v1, Lcom/lxj/xpopup/animator/ScrollScaleAnimator$3;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/animator/ScrollScaleAnimator$3;-><init>(Lcom/lxj/xpopup/animator/ScrollScaleAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 158
    iget v1, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->animationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v2}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 159
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 160
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_2e
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public animateShow()V
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    new-instance v1, Lcom/lxj/xpopup/animator/ScrollScaleAnimator$2;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/animator/ScrollScaleAnimator$2;-><init>(Lcom/lxj/xpopup/animator/ScrollScaleAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public initAnimator()V
    .registers 3

    .line 26
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    iget v1, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->startAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 28
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    new-instance v1, Lcom/lxj/xpopup/animator/ScrollScaleAnimator$1;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/animator/ScrollScaleAnimator$1;-><init>(Lcom/lxj/xpopup/animator/ScrollScaleAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
