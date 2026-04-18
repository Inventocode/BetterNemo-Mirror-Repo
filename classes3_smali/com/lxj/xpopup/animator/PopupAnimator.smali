.class public abstract Lcom/lxj/xpopup/animator/PopupAnimator;
.super Ljava/lang/Object;
.source "PopupAnimator.java"


# instance fields
.field protected animating:Z

.field public animationDuration:I

.field public hasInit:Z

.field public popupAnimation:Lcom/lxj/xpopup/enums/PopupAnimation;

.field public targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target",
            "animationDuration"
        }
    .end annotation

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2, v0}, Lcom/lxj/xpopup/animator/PopupAnimator;-><init>(Landroid/view/View;ILcom/lxj/xpopup/enums/PopupAnimation;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILcom/lxj/xpopup/enums/PopupAnimation;)V
    .registers 5
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

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->animating:Z

    .line 16
    iput-boolean v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->hasInit:Z

    .line 18
    iput v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->animationDuration:I

    .line 26
    iput-object p1, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    .line 27
    iput p2, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->animationDuration:I

    .line 28
    iput-object p3, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->popupAnimation:Lcom/lxj/xpopup/enums/PopupAnimation;

    return-void
.end method


# virtual methods
.method public abstract animateDismiss()V
.end method

.method public abstract animateShow()V
.end method

.method public abstract initAnimator()V
.end method

.method protected observerAnimator(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animator"
        }
    .end annotation

    .line 39
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 40
    new-instance v0, Lcom/lxj/xpopup/animator/PopupAnimator$1;

    invoke-direct {v0, p0}, Lcom/lxj/xpopup/animator/PopupAnimator$1;-><init>(Lcom/lxj/xpopup/animator/PopupAnimator;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method protected observerAnimator(Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animator"
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/lxj/xpopup/animator/PopupAnimator$2;

    invoke-direct {v0, p0}, Lcom/lxj/xpopup/animator/PopupAnimator$2;-><init>(Lcom/lxj/xpopup/animator/PopupAnimator;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method
