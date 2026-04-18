.class public abstract Lcom/nemo/commonui/xpopup/core/BasePopupView;
.super Landroid/widget/FrameLayout;
.source "BasePopupView.java"

# interfaces
.implements Lcom/nemo/commonui/xpopup/util/navbar/OnNavigationBarListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemo/commonui/xpopup/core/BasePopupView$BackPressListener;,
        Lcom/nemo/commonui/xpopup/core/BasePopupView$ShowSoftInputTask;
    }
.end annotation


# static fields
.field private static stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/nemo/commonui/xpopup/core/BasePopupView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field dismissWithRunnable:Ljava/lang/Runnable;

.field private doAfterDismissTask:Ljava/lang/Runnable;

.field private doAfterShowTask:Ljava/lang/Runnable;

.field private hasMoveUp:Z

.field private isCreated:Z

.field protected popupContentAnimator:Lcom/nemo/commonui/xpopup/animator/PopupAnimator;

.field public popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

.field public popupStatus:Lcom/nemo/commonui/xpopup/enums/PopupStatus;

.field protected shadowBgAnimator:Lcom/nemo/commonui/xpopup/animator/ShadowBgAnimator;

.field private showSoftInputTask:Lcom/nemo/commonui/xpopup/core/BasePopupView$ShowSoftInputTask;

.field private touchSlop:I

.field private x:F

.field private y:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->stack:Ljava/util/Stack;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    sget-object v0, Lcom/nemo/commonui/xpopup/enums/PopupStatus;->Dismiss:Lcom/nemo/commonui/xpopup/enums/PopupStatus;

    iput-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupStatus:Lcom/nemo/commonui/xpopup/enums/PopupStatus;

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->isCreated:Z

    .line 123
    iput-boolean v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->hasMoveUp:Z

    .line 235
    new-instance v1, Lcom/nemo/commonui/xpopup/core/BasePopupView$4;

    invoke-direct {v1, p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView$4;-><init>(Lcom/nemo/commonui/xpopup/core/BasePopupView;)V

    iput-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doAfterShowTask:Ljava/lang/Runnable;

    .line 517
    new-instance v1, Lcom/nemo/commonui/xpopup/core/BasePopupView$6;

    invoke-direct {v1, p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView$6;-><init>(Lcom/nemo/commonui/xpopup/core/BasePopupView;)V

    iput-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doAfterDismissTask:Ljava/lang/Runnable;

    .line 56
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->touchSlop:I

    .line 57
    new-instance v1, Lcom/nemo/commonui/xpopup/animator/ShadowBgAnimator;

    invoke-direct {v1, p0}, Lcom/nemo/commonui/xpopup/animator/ShadowBgAnimator;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->shadowBgAnimator:Lcom/nemo/commonui/xpopup/animator/ShadowBgAnimator;

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupLayoutId()I

    move-result v1

    invoke-virtual {p1, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 62
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    sget-object p1, Lcom/nemo/commonui/xpopup/enums/PopupStatus;->Dismiss:Lcom/nemo/commonui/xpopup/enums/PopupStatus;

    iput-object p1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupStatus:Lcom/nemo/commonui/xpopup/enums/PopupStatus;

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->isCreated:Z

    .line 123
    iput-boolean p1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->hasMoveUp:Z

    .line 235
    new-instance p1, Lcom/nemo/commonui/xpopup/core/BasePopupView$4;

    invoke-direct {p1, p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView$4;-><init>(Lcom/nemo/commonui/xpopup/core/BasePopupView;)V

    iput-object p1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doAfterShowTask:Ljava/lang/Runnable;

    .line 517
    new-instance p1, Lcom/nemo/commonui/xpopup/core/BasePopupView$6;

    invoke-direct {p1, p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView$6;-><init>(Lcom/nemo/commonui/xpopup/core/BasePopupView;)V

    iput-object p1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doAfterDismissTask:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    sget-object p1, Lcom/nemo/commonui/xpopup/enums/PopupStatus;->Dismiss:Lcom/nemo/commonui/xpopup/enums/PopupStatus;

    iput-object p1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupStatus:Lcom/nemo/commonui/xpopup/enums/PopupStatus;

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->isCreated:Z

    .line 123
    iput-boolean p1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->hasMoveUp:Z

    .line 235
    new-instance p1, Lcom/nemo/commonui/xpopup/core/BasePopupView$4;

    invoke-direct {p1, p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView$4;-><init>(Lcom/nemo/commonui/xpopup/core/BasePopupView;)V

    iput-object p1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doAfterShowTask:Ljava/lang/Runnable;

    .line 517
    new-instance p1, Lcom/nemo/commonui/xpopup/core/BasePopupView$6;

    invoke-direct {p1, p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView$6;-><init>(Lcom/nemo/commonui/xpopup/core/BasePopupView;)V

    iput-object p1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doAfterDismissTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/nemo/commonui/xpopup/core/BasePopupView;)V
    .registers 1

    .line 45
    invoke-direct {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->collectAnimator()V

    return-void
.end method

.method static synthetic access$100(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Z
    .registers 1

    .line 45
    iget-boolean p0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->hasMoveUp:Z

    return p0
.end method

.method static synthetic access$102(Lcom/nemo/commonui/xpopup/core/BasePopupView;Z)Z
    .registers 2

    .line 45
    iput-boolean p1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->hasMoveUp:Z

    return p1
.end method

.method static synthetic access$200()Ljava/util/Stack;
    .registers 1

    .line 45
    sget-object v0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->stack:Ljava/util/Stack;

    return-object v0
.end method

.method private collectAnimator()V
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupContentAnimator:Lcom/nemo/commonui/xpopup/animator/PopupAnimator;

    if-nez v0, :cond_2d

    .line 128
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->customAnimator:Lcom/nemo/commonui/xpopup/animator/PopupAnimator;

    if-eqz v0, :cond_13

    .line 129
    iput-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupContentAnimator:Lcom/nemo/commonui/xpopup/animator/PopupAnimator;

    .line 130
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    goto :goto_21

    .line 133
    :cond_13
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->genAnimatorByPopupType()Lcom/nemo/commonui/xpopup/animator/PopupAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupContentAnimator:Lcom/nemo/commonui/xpopup/animator/PopupAnimator;

    if-nez v0, :cond_21

    .line 135
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupAnimator()Lcom/nemo/commonui/xpopup/animator/PopupAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupContentAnimator:Lcom/nemo/commonui/xpopup/animator/PopupAnimator;

    .line 140
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->shadowBgAnimator:Lcom/nemo/commonui/xpopup/animator/ShadowBgAnimator;

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/animator/ShadowBgAnimator;->initAnimator()V

    .line 141
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupContentAnimator:Lcom/nemo/commonui/xpopup/animator/PopupAnimator;

    if-eqz v0, :cond_2d

    .line 142
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->initAnimator()V

    :cond_2d
    return-void
.end method


# virtual methods
.method protected applyFull()V
    .registers 3

    .line 157
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    .line 158
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 159
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 160
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 161
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 162
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected applySize(Z)V
    .registers 6

    .line 166
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 167
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_2b

    .line 168
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->isNavBarVisible(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2b

    :cond_29
    const/4 p1, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 p1, 0x1

    :goto_2c
    if-nez v1, :cond_3b

    .line 170
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 171
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    if-eqz p1, :cond_38

    .line 172
    invoke-static {}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->getNavBarHeight()I

    move-result v3

    :cond_38
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_5b

    :cond_3b
    if-ne v1, v2, :cond_4c

    .line 174
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-eqz p1, :cond_46

    .line 175
    invoke-static {}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->getNavBarHeight()I

    move-result p1

    goto :goto_47

    :cond_46
    const/4 p1, 0x0

    :goto_47
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 176
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_5b

    :cond_4c
    const/4 v2, 0x3

    if-ne v1, v2, :cond_5b

    .line 178
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 179
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-eqz p1, :cond_59

    .line 180
    invoke-static {}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->getNavBarHeight()I

    move-result v3

    :cond_59
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 182
    :cond_5b
    :goto_5b
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public dismiss()V
    .registers 3

    .line 488
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupStatus:Lcom/nemo/commonui/xpopup/enums/PopupStatus;

    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupStatus;->Dismissing:Lcom/nemo/commonui/xpopup/enums/PopupStatus;

    if-ne v0, v1, :cond_7

    return-void

    .line 489
    :cond_7
    iput-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupStatus:Lcom/nemo/commonui/xpopup/enums/PopupStatus;

    .line 490
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->autoOpenSoftInput:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p0}, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->hideSoftInput(Landroid/view/View;)V

    .line 491
    :cond_16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 492
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doDismissAnimation()V

    .line 493
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doAfterDismiss()V

    return-void
.end method

.method protected dismissOrHideSoftInput()V
    .registers 2

    .line 288
    sget v0, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->sDecorViewInvisibleHeightPre:I

    if-nez v0, :cond_8

    .line 289
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    goto :goto_b

    .line 291
    :cond_8
    invoke-static {p0}, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->hideSoftInput(Landroid/view/View;)V

    :goto_b
    return-void
.end method

.method protected doAfterDismiss()V
    .registers 4

    .line 512
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->autoOpenSoftInput:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p0}, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->hideSoftInput(Landroid/view/View;)V

    .line 513
    :cond_d
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doAfterDismissTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 514
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doAfterDismissTask:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getAnimationDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected doAfterShow()V
    .registers 4

    .line 231
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doAfterShowTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 232
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doAfterShowTask:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getAnimationDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected doDismissAnimation()V
    .registers 2

    .line 419
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->hasShadowBg:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 420
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->shadowBgAnimator:Lcom/nemo/commonui/xpopup/animator/ShadowBgAnimator;

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/animator/ShadowBgAnimator;->animateDismiss()V

    .line 422
    :cond_f
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupContentAnimator:Lcom/nemo/commonui/xpopup/animator/PopupAnimator;

    if-eqz v0, :cond_16

    .line 423
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->animateDismiss()V

    :cond_16
    return-void
.end method

.method protected doShowAnimation()V
    .registers 4

    .line 406
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->hasShadowBg:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 407
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->shadowBgAnimator:Lcom/nemo/commonui/xpopup/animator/ShadowBgAnimator;

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v1, v1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->popupAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    sget-object v2, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->NoAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    if-ne v1, v2, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    iput-boolean v1, v0, Lcom/nemo/commonui/xpopup/animator/ShadowBgAnimator;->isZeroDuration:Z

    .line 408
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/animator/ShadowBgAnimator;->animateShow()V

    .line 410
    :cond_1c
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupContentAnimator:Lcom/nemo/commonui/xpopup/animator/PopupAnimator;

    if-eqz v0, :cond_23

    .line 411
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->animateShow()V

    :cond_23
    return-void
.end method

.method public focusAndProcessBackPress()V
    .registers 6

    .line 252
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-boolean v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->isRequestFocus:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    .line 253
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 254
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 255
    sget-object v0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :cond_1a
    new-instance v0, Lcom/nemo/commonui/xpopup/core/BasePopupView$BackPressListener;

    invoke-direct {v0, p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView$BackPressListener;-><init>(Lcom/nemo/commonui/xpopup/core/BasePopupView;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 259
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-boolean v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->autoFocusEditText:Z

    if-nez v0, :cond_2b

    invoke-virtual {p0, p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->showSoftInput(Landroid/view/View;)V

    .line 262
    :cond_2b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 263
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v0, v2}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->findAllEditText(Ljava/util/ArrayList;Landroid/view/ViewGroup;)V

    const/4 v2, 0x0

    .line 264
    :goto_3a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_65

    .line 265
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 266
    new-instance v4, Lcom/nemo/commonui/xpopup/core/BasePopupView$BackPressListener;

    invoke-direct {v4, p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView$BackPressListener;-><init>(Lcom/nemo/commonui/xpopup/core/BasePopupView;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-nez v2, :cond_62

    .line 267
    iget-object v4, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-boolean v4, v4, Lcom/nemo/commonui/xpopup/core/PopupInfo;->autoFocusEditText:Z

    if-eqz v4, :cond_62

    .line 268
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 269
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 270
    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 271
    invoke-virtual {p0, v3}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->showSoftInput(Landroid/view/View;)V

    :cond_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    :cond_65
    return-void
.end method

.method protected genAnimatorByPopupType()Lcom/nemo/commonui/xpopup/animator/PopupAnimator;
    .registers 4

    .line 328
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_54

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->popupAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    if-nez v0, :cond_a

    goto :goto_54

    .line 329
    :cond_a
    sget-object v2, Lcom/nemo/commonui/xpopup/core/BasePopupView$7;->$SwitchMap$com$nemo$commonui$xpopup$enums$PopupAnimation:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_56

    return-object v1

    .line 360
    :pswitch_16  #0x16
    new-instance v0, Lcom/nemo/commonui/xpopup/animator/EmptyAnimator;

    invoke-direct {v0}, Lcom/nemo/commonui/xpopup/animator/EmptyAnimator;-><init>()V

    return-object v0

    .line 357
    :pswitch_1c  #0xe, 0xf, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15
    new-instance v0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v2, v2, Lcom/nemo/commonui/xpopup/core/PopupInfo;->popupAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-direct {v0, v1, v2}, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;-><init>(Landroid/view/View;Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)V

    return-object v0

    .line 347
    :pswitch_2a  #0xa, 0xb, 0xc, 0xd
    new-instance v0, Lcom/nemo/commonui/xpopup/animator/TranslateAnimator;

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v2, v2, Lcom/nemo/commonui/xpopup/core/PopupInfo;->popupAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-direct {v0, v1, v2}, Lcom/nemo/commonui/xpopup/animator/TranslateAnimator;-><init>(Landroid/view/View;Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)V

    return-object v0

    .line 341
    :pswitch_38  #0x6, 0x7, 0x8, 0x9
    new-instance v0, Lcom/nemo/commonui/xpopup/animator/TranslateAlphaAnimator;

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v2, v2, Lcom/nemo/commonui/xpopup/core/PopupInfo;->popupAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-direct {v0, v1, v2}, Lcom/nemo/commonui/xpopup/animator/TranslateAlphaAnimator;-><init>(Landroid/view/View;Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)V

    return-object v0

    .line 335
    :pswitch_46  #0x1, 0x2, 0x3, 0x4, 0x5
    new-instance v0, Lcom/nemo/commonui/xpopup/animator/ScaleAlphaAnimator;

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v2, v2, Lcom/nemo/commonui/xpopup/core/PopupInfo;->popupAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-direct {v0, v1, v2}, Lcom/nemo/commonui/xpopup/animator/ScaleAlphaAnimator;-><init>(Landroid/view/View;Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)V

    return-object v0

    :cond_54
    :goto_54
    return-object v1

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_46  #00000001
        :pswitch_46  #00000002
        :pswitch_46  #00000003
        :pswitch_46  #00000004
        :pswitch_46  #00000005
        :pswitch_38  #00000006
        :pswitch_38  #00000007
        :pswitch_38  #00000008
        :pswitch_38  #00000009
        :pswitch_2a  #0000000a
        :pswitch_2a  #0000000b
        :pswitch_2a  #0000000c
        :pswitch_2a  #0000000d
        :pswitch_1c  #0000000e
        :pswitch_1c  #0000000f
        :pswitch_1c  #00000010
        :pswitch_1c  #00000011
        :pswitch_1c  #00000012
        :pswitch_1c  #00000013
        :pswitch_1c  #00000014
        :pswitch_1c  #00000015
        :pswitch_16  #00000016
    .end packed-switch
.end method

.method public getAnimationDuration()I
    .registers 3

    .line 441
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->popupAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->NoAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    if-ne v0, v1, :cond_b

    const/16 v0, 0xa

    goto :goto_f

    :cond_b
    invoke-static {}, Lcom/nemo/commonui/xpopup/XPopup;->getAnimationDuration()I

    move-result v0

    :goto_f
    return v0
.end method

.method protected getContentView()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getImplLayoutId()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method protected getMaxHeight()I
    .registers 2

    .line 459
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->maxHeight:I

    return v0
.end method

.method protected getMaxWidth()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected getPopupAnimator()Lcom/nemo/commonui/xpopup/animator/PopupAnimator;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPopupContentView()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    .line 433
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getPopupHeight()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getPopupImplView()Landroid/view/View;
    .registers 3

    .line 437
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getPopupLayoutId()I
.end method

.method protected getPopupWidth()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected getTargetSizeView()Landroid/view/View;
    .registers 2

    .line 481
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .registers 5

    .line 77
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupStatus:Lcom/nemo/commonui/xpopup/enums/PopupStatus;

    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupStatus;->Showing:Lcom/nemo/commonui/xpopup/enums/PopupStatus;

    if-ne v0, v1, :cond_7

    return-void

    .line 78
    :cond_7
    iput-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupStatus:Lcom/nemo/commonui/xpopup/enums/PopupStatus;

    .line 79
    invoke-static {}, Lcom/nemo/commonui/xpopup/util/navbar/NavigationBarObserver;->getInstance()Lcom/nemo/commonui/xpopup/util/navbar/NavigationBarObserver;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/util/navbar/NavigationBarObserver;->register(Landroid/content/Context;)V

    .line 80
    invoke-static {}, Lcom/nemo/commonui/xpopup/util/navbar/NavigationBarObserver;->getInstance()Lcom/nemo/commonui/xpopup/util/navbar/NavigationBarObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nemo/commonui/xpopup/util/navbar/NavigationBarObserver;->addOnNavigationBarListener(Lcom/nemo/commonui/xpopup/util/navbar/OnNavigationBarListener;)V

    .line 83
    iget-boolean v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->isCreated:Z

    if-nez v0, :cond_22

    .line 84
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->initPopupContent()V

    .line 87
    :cond_22
    instance-of v0, p0, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;

    if-nez v0, :cond_5f

    .line 88
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getTargetSizeView()Landroid/view/View;

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getMaxWidth()I

    move-result v1

    if-eqz v1, :cond_3f

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getMaxWidth()I

    move-result v2

    if-le v1, v2, :cond_3f

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getMaxWidth()I

    move-result v1

    goto :goto_43

    :cond_3f
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupWidth()I

    move-result v1

    .line 90
    :goto_43
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getMaxHeight()I

    move-result v2

    if-eqz v2, :cond_58

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getMaxHeight()I

    move-result v3

    if-le v2, v3, :cond_58

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getMaxHeight()I

    move-result v2

    goto :goto_5c

    :cond_58
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupHeight()I

    move-result v2

    .line 88
    :goto_5c
    invoke-static {v0, v1, v2}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->setWidthHeight(Landroid/view/View;II)V

    .line 93
    :cond_5f
    iget-boolean v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->isCreated:Z

    if-nez v0, :cond_72

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->isCreated:Z

    .line 95
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onCreate()V

    .line 96
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->xPopupCallback:Lcom/nemo/commonui/xpopup/interfaces/XPopupCallback;

    if-eqz v0, :cond_72

    invoke-interface {v0}, Lcom/nemo/commonui/xpopup/interfaces/XPopupCallback;->onCreated()V

    .line 98
    :cond_72
    new-instance v0, Lcom/nemo/commonui/xpopup/core/BasePopupView$1;

    invoke-direct {v0, p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView$1;-><init>(Lcom/nemo/commonui/xpopup/core/BasePopupView;)V

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected initPopupContent()V
    .registers 1

    return-void
.end method

.method public isDismiss()Z
    .registers 3

    .line 563
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupStatus:Lcom/nemo/commonui/xpopup/enums/PopupStatus;

    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupStatus;->Dismiss:Lcom/nemo/commonui/xpopup/enums/PopupStatus;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isShow()Z
    .registers 3

    .line 559
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupStatus:Lcom/nemo/commonui/xpopup/enums/PopupStatus;

    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupStatus;->Dismiss:Lcom/nemo/commonui/xpopup/enums/PopupStatus;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method protected onCreate()V
    .registers 1

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 588
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 589
    sget-object v0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 590
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doAfterShowTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 591
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doAfterDismissTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 592
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->decorView:Landroid/view/ViewGroup;

    invoke-static {v0, p0}, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->removeLayoutChangeListener(Landroid/view/View;Landroid/view/View;)V

    .line 593
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->showSoftInputTask:Lcom/nemo/commonui/xpopup/core/BasePopupView$ShowSoftInputTask;

    if-eqz v0, :cond_20

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 594
    :cond_20
    sget-object v0, Lcom/nemo/commonui/xpopup/enums/PopupStatus;->Dismiss:Lcom/nemo/commonui/xpopup/enums/PopupStatus;

    iput-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupStatus:Lcom/nemo/commonui/xpopup/enums/PopupStatus;

    const/4 v0, 0x0

    .line 595
    iput-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->showSoftInputTask:Lcom/nemo/commonui/xpopup/core/BasePopupView$ShowSoftInputTask;

    const/4 v0, 0x0

    .line 596
    iput-boolean v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->hasMoveUp:Z

    return-void
.end method

.method protected onDismiss()V
    .registers 1

    return-void
.end method

.method public onNavigationBarChange(Z)V
    .registers 2

    if-nez p1, :cond_6

    .line 150
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->applyFull()V

    goto :goto_a

    :cond_6
    const/4 p1, 0x1

    .line 152
    invoke-virtual {p0, p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->applySize(Z)V

    :goto_a
    return-void
.end method

.method protected onShow()V
    .registers 1

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    .line 604
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 605
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 606
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->isInRect(FFLandroid/graphics/Rect;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_6a

    .line 607
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_5e

    if-eq v0, v1, :cond_24

    goto :goto_6a

    .line 613
    :cond_24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->x:F

    sub-float/2addr v0, v2

    .line 614
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v2, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->y:F

    sub-float/2addr p1, v2

    float-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L  # 2.0

    .line 615
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    float-to-double v6, p1

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 616
    iget v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->touchSlop:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_58

    iget-object p1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object p1, p1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->isDismissOnTouchOutside:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_58

    .line 617
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :cond_58
    const/4 p1, 0x0

    .line 619
    iput p1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->x:F

    .line 620
    iput p1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->y:F

    goto :goto_6a

    .line 609
    :cond_5e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->x:F

    .line 610
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->y:F

    :cond_6a
    :goto_6a
    return v1
.end method

.method public show()Lcom/nemo/commonui/xpopup/core/BasePopupView;
    .registers 4

    .line 186
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object p0

    .line 187
    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 188
    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->decorView:Landroid/view/ViewGroup;

    .line 189
    new-instance v1, Lcom/nemo/commonui/xpopup/core/BasePopupView$2;

    invoke-direct {v1, p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView$2;-><init>(Lcom/nemo/commonui/xpopup/core/BasePopupView;)V

    invoke-static {v0, p0, v1}, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->registerSoftInputChangedListener(Landroid/app/Activity;Landroid/view/View;Lcom/nemo/commonui/xpopup/util/KeyboardUtils$OnSoftInputChangedListener;)V

    .line 203
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->decorView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/nemo/commonui/xpopup/core/BasePopupView$3;

    invoke-direct {v1, p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView$3;-><init>(Lcom/nemo/commonui/xpopup/core/BasePopupView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-object p0
.end method

.method protected showSoftInput(Landroid/view/View;)V
    .registers 4

    .line 277
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->autoOpenSoftInput:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 278
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->showSoftInputTask:Lcom/nemo/commonui/xpopup/core/BasePopupView$ShowSoftInputTask;

    if-nez v0, :cond_16

    .line 279
    new-instance v0, Lcom/nemo/commonui/xpopup/core/BasePopupView$ShowSoftInputTask;

    invoke-direct {v0, p0, p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView$ShowSoftInputTask;-><init>(Lcom/nemo/commonui/xpopup/core/BasePopupView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->showSoftInputTask:Lcom/nemo/commonui/xpopup/core/BasePopupView$ShowSoftInputTask;

    goto :goto_19

    .line 281
    :cond_16
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 283
    :goto_19
    iget-object p1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->showSoftInputTask:Lcom/nemo/commonui/xpopup/core/BasePopupView$ShowSoftInputTask;

    const-wide/16 v0, 0xa

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_20
    return-void
.end method
