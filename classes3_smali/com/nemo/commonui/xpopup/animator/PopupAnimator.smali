.class public abstract Lcom/nemo/commonui/xpopup/animator/PopupAnimator;
.super Ljava/lang/Object;
.source "PopupAnimator.java"


# instance fields
.field public popupAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

.field public targetView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;-><init>(Landroid/view/View;Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    .line 23
    iput-object p2, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->popupAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    return-void
.end method


# virtual methods
.method public abstract animateDismiss()V
.end method

.method public abstract animateShow()V
.end method

.method public abstract initAnimator()V
.end method
