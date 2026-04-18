.class public abstract Lcom/lxj/xpopup/core/BasePopupView;
.super Landroid/widget/FrameLayout;
.source "BasePopupView.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Landroidx/lifecycle/LifecycleOwner;
.implements Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lxj/xpopup/core/BasePopupView$BackPressListener;,
        Lcom/lxj/xpopup/core/BasePopupView$ShowSoftInputTask;
    }
.end annotation


# instance fields
.field protected blurAnimator:Lcom/lxj/xpopup/animator/BlurAnimator;

.field public dialog:Lcom/lxj/xpopup/core/FullScreenDialog;

.field dismissWithRunnable:Ljava/lang/Runnable;

.field protected doAfterDismissTask:Ljava/lang/Runnable;

.field protected doAfterShowTask:Ljava/lang/Runnable;

.field protected handler:Landroid/os/Handler;

.field private hasModifySoftMode:Z

.field public hasMoveUp:Z

.field private final initTask:Ljava/lang/Runnable;

.field protected isCreated:Z

.field protected lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field protected popupContentAnimator:Lcom/lxj/xpopup/animator/PopupAnimator;

.field public popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

.field public popupStatus:Lcom/lxj/xpopup/enums/PopupStatus;

.field private preSoftMode:I

.field protected shadowBgAnimator:Lcom/lxj/xpopup/animator/ShadowBgAnimator;

.field private showSoftInputTask:Lcom/lxj/xpopup/core/BasePopupView$ShowSoftInputTask;

.field private final touchSlop:I

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 61
    sget-object v0, Lcom/lxj/xpopup/enums/PopupStatus;->Dismiss:Lcom/lxj/xpopup/enums/PopupStatus;

    iput-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupStatus:Lcom/lxj/xpopup/enums/PopupStatus;

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->isCreated:Z

    .line 63
    iput-boolean v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->hasModifySoftMode:Z

    const/4 v1, -0x1

    .line 64
    iput v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->preSoftMode:I

    .line 65
    iput-boolean v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->hasMoveUp:Z

    .line 66
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->handler:Landroid/os/Handler;

    .line 278
    new-instance v1, Lcom/lxj/xpopup/core/BasePopupView$5;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/core/BasePopupView$5;-><init>(Lcom/lxj/xpopup/core/BasePopupView;)V

    iput-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->initTask:Ljava/lang/Runnable;

    .line 349
    new-instance v1, Lcom/lxj/xpopup/core/BasePopupView$6;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/core/BasePopupView$6;-><init>(Lcom/lxj/xpopup/core/BasePopupView;)V

    iput-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->doAfterShowTask:Ljava/lang/Runnable;

    .line 703
    new-instance v1, Lcom/lxj/xpopup/core/BasePopupView$9;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/core/BasePopupView$9;-><init>(Lcom/lxj/xpopup/core/BasePopupView;)V

    iput-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->doAfterDismissTask:Ljava/lang/Runnable;

    .line 71
    instance-of v1, p1, Landroid/app/Application;

    if-nez v1, :cond_61

    .line 74
    new-instance v1, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v1, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 75
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->touchSlop:I

    .line 76
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getInnerLayoutId()I

    move-result v1

    invoke-virtual {p1, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 79
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    .line 72
    :cond_61
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "XPopup的Context必须是Activity类型！"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/lxj/xpopup/core/BasePopupView;)V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/lxj/xpopup/core/BasePopupView;->attachToHost()V

    return-void
.end method

.method static synthetic access$100(Lcom/lxj/xpopup/core/BasePopupView;)V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/lxj/xpopup/core/BasePopupView;->detachFromHost()V

    return-void
.end method

.method private attachToHost()V
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-eqz v0, :cond_88

    .line 126
    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->hostLifecycle:Landroidx/lifecycle/Lifecycle;

    if-eqz v0, :cond_c

    .line 127
    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    goto :goto_21

    .line 129
    :cond_c
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_21

    .line 130
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 133
    :cond_21
    :goto_21
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->doMeasure()V

    .line 135
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-boolean v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->isViewMode:Z

    if-eqz v0, :cond_4f

    .line 137
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 138
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_47

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 139
    :cond_47
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7b

    .line 142
    :cond_4f
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->dialog:Lcom/lxj/xpopup/core/FullScreenDialog;

    if-nez v0, :cond_62

    .line 143
    new-instance v0, Lcom/lxj/xpopup/core/FullScreenDialog;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lxj/xpopup/core/FullScreenDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/lxj/xpopup/core/FullScreenDialog;->setContent(Lcom/lxj/xpopup/core/BasePopupView;)Lcom/lxj/xpopup/core/FullScreenDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->dialog:Lcom/lxj/xpopup/core/FullScreenDialog;

    .line 145
    :cond_62
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_7b

    .line 146
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_7b

    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->dialog:Lcom/lxj/xpopup/core/FullScreenDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_7b

    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->dialog:Lcom/lxj/xpopup/core/FullScreenDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 150
    :cond_7b
    :goto_7b
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getHostWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Lcom/lxj/xpopup/core/BasePopupView$2;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/core/BasePopupView$2;-><init>(Lcom/lxj/xpopup/core/BasePopupView;)V

    invoke-static {v0, p0, v1}, Lcom/lxj/xpopup/util/KeyboardUtils;->registerSoftInputChangedListener(Landroid/view/Window;Lcom/lxj/xpopup/core/BasePopupView;Lcom/lxj/xpopup/util/KeyboardUtils$OnSoftInputChangedListener;)V

    return-void

    .line 124
    :cond_88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "如果弹窗对象是复用的，则不要设置isDestroyOnDismiss(true)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkDismissArea(Landroid/view/MotionEvent;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 961
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->notDismissWhenTouchInArea:Ljava/util/ArrayList;

    if-eqz v0, :cond_32

    .line 962
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_32

    const/4 v1, 0x0

    .line 964
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 965
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v3, v4, v2}, Lcom/lxj/xpopup/util/XPopupUtils;->isInRect(FFLandroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v1, 0x1

    :cond_2c
    if-nez v1, :cond_35

    .line 971
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    goto :goto_35

    .line 974
    :cond_32
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    :cond_35
    :goto_35
    return-void
.end method

.method private detachFromHost()V
    .registers 2

    .line 328
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-eqz v0, :cond_14

    iget-boolean v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->isViewMode:Z

    if-eqz v0, :cond_14

    .line 329
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1b

    .line 330
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1b

    .line 332
    :cond_14
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->dialog:Lcom/lxj/xpopup/core/FullScreenDialog;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1b
    :goto_1b
    return-void
.end method


# virtual methods
.method protected addOnUnhandledKeyListener(Landroid/view/View;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 418
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->removeOnUnhandledKeyEventListener(Landroid/view/View;Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V

    .line 419
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->addOnUnhandledKeyEventListener(Landroid/view/View;Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V

    return-void
.end method

.method protected applyDarkTheme()V
    .registers 1

    return-void
.end method

.method protected applyLightTheme()V
    .registers 1

    return-void
.end method

.method protected beforeDismiss()V
    .registers 1

    return-void
.end method

.method protected beforeShow()V
    .registers 1

    return-void
.end method

.method public destroy()V
    .registers 3

    .line 830
    invoke-static {p0, p0}, Landroidx/core/view/ViewCompat;->removeOnUnhandledKeyEventListener(Landroid/view/View;Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V

    .line 831
    iget-boolean v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->isCreated:Z

    if-eqz v0, :cond_e

    .line 832
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 834
    :cond_e
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 835
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_4d

    .line 836
    iput-object v1, v0, Lcom/lxj/xpopup/core/PopupInfo;->atView:Landroid/view/View;

    .line 837
    iput-object v1, v0, Lcom/lxj/xpopup/core/PopupInfo;->xPopupCallback:Lcom/lxj/xpopup/interfaces/XPopupCallback;

    .line 838
    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->hostLifecycle:Landroidx/lifecycle/Lifecycle;

    if-eqz v0, :cond_27

    .line 839
    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 840
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iput-object v1, v0, Lcom/lxj/xpopup/core/PopupInfo;->hostLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 842
    :cond_27
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->customAnimator:Lcom/lxj/xpopup/animator/PopupAnimator;

    if-eqz v0, :cond_42

    .line 843
    iget-object v0, v0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    if-eqz v0, :cond_3e

    .line 844
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 845
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->customAnimator:Lcom/lxj/xpopup/animator/PopupAnimator;

    iput-object v1, v0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    .line 847
    :cond_3e
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iput-object v1, v0, Lcom/lxj/xpopup/core/PopupInfo;->customAnimator:Lcom/lxj/xpopup/animator/PopupAnimator;

    .line 849
    :cond_42
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-boolean v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->isViewMode:Z

    if-eqz v0, :cond_4b

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->tryRemoveFragments()V

    .line 850
    :cond_4b
    iput-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    .line 852
    :cond_4d
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->dialog:Lcom/lxj/xpopup/core/FullScreenDialog;

    if-eqz v0, :cond_62

    .line 853
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->dialog:Lcom/lxj/xpopup/core/FullScreenDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 854
    :cond_5c
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->dialog:Lcom/lxj/xpopup/core/FullScreenDialog;

    iput-object v1, v0, Lcom/lxj/xpopup/core/FullScreenDialog;->contentView:Lcom/lxj/xpopup/core/BasePopupView;

    .line 855
    iput-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->dialog:Lcom/lxj/xpopup/core/FullScreenDialog;

    .line 857
    :cond_62
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->shadowBgAnimator:Lcom/lxj/xpopup/animator/ShadowBgAnimator;

    if-eqz v0, :cond_71

    iget-object v0, v0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    if-eqz v0, :cond_71

    .line 858
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 860
    :cond_71
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->blurAnimator:Lcom/lxj/xpopup/animator/BlurAnimator;

    if-eqz v0, :cond_97

    iget-object v0, v0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    if-eqz v0, :cond_97

    .line 861
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 862
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->blurAnimator:Lcom/lxj/xpopup/animator/BlurAnimator;

    iget-object v0, v0, Lcom/lxj/xpopup/animator/BlurAnimator;->decorBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_97

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_97

    .line 863
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->blurAnimator:Lcom/lxj/xpopup/animator/BlurAnimator;

    iget-object v0, v0, Lcom/lxj/xpopup/animator/BlurAnimator;->decorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 864
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->blurAnimator:Lcom/lxj/xpopup/animator/BlurAnimator;

    iput-object v1, v0, Lcom/lxj/xpopup/animator/BlurAnimator;->decorBitmap:Landroid/graphics/Bitmap;

    :cond_97
    return-void
.end method

.method public dismiss()V
    .registers 4

    .line 656
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->initTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 657
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupStatus:Lcom/lxj/xpopup/enums/PopupStatus;

    sget-object v1, Lcom/lxj/xpopup/enums/PopupStatus;->Dismissing:Lcom/lxj/xpopup/enums/PopupStatus;

    if-eq v0, v1, :cond_32

    sget-object v2, Lcom/lxj/xpopup/enums/PopupStatus;->Dismiss:Lcom/lxj/xpopup/enums/PopupStatus;

    if-ne v0, v2, :cond_12

    goto :goto_32

    .line 658
    :cond_12
    iput-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupStatus:Lcom/lxj/xpopup/enums/PopupStatus;

    .line 659
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 660
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-eqz v0, :cond_22

    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->xPopupCallback:Lcom/lxj/xpopup/interfaces/XPopupCallback;

    if-eqz v0, :cond_22

    .line 661
    invoke-interface {v0, p0}, Lcom/lxj/xpopup/interfaces/XPopupCallback;->beforeDismiss(Lcom/lxj/xpopup/core/BasePopupView;)V

    .line 662
    :cond_22
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->beforeDismiss()V

    .line 663
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 664
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->doDismissAnimation()V

    .line 665
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->doAfterDismiss()V

    :cond_32
    :goto_32
    return-void
.end method

.method public dismissOrHideSoftInput()V
    .registers 2

    .line 434
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getHostWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/lxj/xpopup/util/XPopupUtils;->getDecorViewInvisibleHeight(Landroid/view/Window;)I

    move-result v0

    if-nez v0, :cond_e

    .line 435
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    goto :goto_11

    .line 437
    :cond_e
    invoke-static {p0}, Lcom/lxj/xpopup/util/KeyboardUtils;->hideSoftInput(Landroid/view/View;)V

    :goto_11
    return-void
.end method

.method protected doAfterDismiss()V
    .registers 5

    .line 697
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-eqz v0, :cond_13

    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->autoOpenSoftInput:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    instance-of v0, p0, Lcom/lxj/xpopup/impl/PartShadowPopupView;

    if-nez v0, :cond_13

    .line 698
    invoke-static {p0}, Lcom/lxj/xpopup/util/KeyboardUtils;->hideSoftInput(Landroid/view/View;)V

    .line 699
    :cond_13
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->doAfterDismissTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 700
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->doAfterDismissTask:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getAnimationDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected doAfterShow()V
    .registers 5

    .line 345
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->doAfterShowTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 346
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->doAfterShowTask:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getAnimationDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected doDismissAnimation()V
    .registers 2

    .line 573
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-nez v0, :cond_5

    return-void

    .line 574
    :cond_5
    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->hasShadowBg:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->hasBlurBg:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->shadowBgAnimator:Lcom/lxj/xpopup/animator/ShadowBgAnimator;

    if-eqz v0, :cond_1f

    .line 575
    invoke-virtual {v0}, Lcom/lxj/xpopup/animator/ShadowBgAnimator;->animateDismiss()V

    goto :goto_30

    .line 576
    :cond_1f
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->hasBlurBg:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->blurAnimator:Lcom/lxj/xpopup/animator/BlurAnimator;

    if-eqz v0, :cond_30

    .line 577
    invoke-virtual {v0}, Lcom/lxj/xpopup/animator/BlurAnimator;->animateDismiss()V

    .line 580
    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupContentAnimator:Lcom/lxj/xpopup/animator/PopupAnimator;

    if-eqz v0, :cond_37

    .line 581
    invoke-virtual {v0}, Lcom/lxj/xpopup/animator/PopupAnimator;->animateDismiss()V

    :cond_37
    return-void
.end method

.method protected doMeasure()V
    .registers 5

    .line 209
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 214
    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 215
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getActivityContentView()Landroid/view/View;

    move-result-object v1

    if-nez v0, :cond_21

    .line 217
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    goto :goto_2d

    .line 219
    :cond_21
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 220
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 222
    :goto_2d
    iget-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-eqz v2, :cond_3a

    iget-boolean v2, v2, Lcom/lxj/xpopup/core/PopupInfo;->isViewMode:Z

    if-eqz v2, :cond_3a

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    goto :goto_3b

    :cond_3a
    const/4 v2, 0x0

    :goto_3b
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 223
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 224
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected doShowAnimation()V
    .registers 2

    .line 558
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-nez v0, :cond_5

    return-void

    .line 559
    :cond_5
    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->hasShadowBg:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->hasBlurBg:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->shadowBgAnimator:Lcom/lxj/xpopup/animator/ShadowBgAnimator;

    if-eqz v0, :cond_1f

    .line 560
    invoke-virtual {v0}, Lcom/lxj/xpopup/animator/ShadowBgAnimator;->animateShow()V

    goto :goto_30

    .line 561
    :cond_1f
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->hasBlurBg:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->blurAnimator:Lcom/lxj/xpopup/animator/BlurAnimator;

    if-eqz v0, :cond_30

    .line 562
    invoke-virtual {v0}, Lcom/lxj/xpopup/animator/BlurAnimator;->animateShow()V

    .line 564
    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupContentAnimator:Lcom/lxj/xpopup/animator/PopupAnimator;

    if-eqz v0, :cond_37

    .line 565
    invoke-virtual {v0}, Lcom/lxj/xpopup/animator/PopupAnimator;->animateShow()V

    :cond_37
    return-void
.end method

.method public focusAndProcessBackPress()V
    .registers 8

    .line 367
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-eqz v0, :cond_af

    iget-boolean v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->isRequestFocus:Z

    if-eqz v0, :cond_af

    const/4 v0, 0x1

    .line 368
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 369
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 371
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_19

    .line 372
    invoke-virtual {p0, p0}, Lcom/lxj/xpopup/core/BasePopupView;->addOnUnhandledKeyListener(Landroid/view/View;)V

    goto :goto_21

    .line 374
    :cond_19
    new-instance v1, Lcom/lxj/xpopup/core/BasePopupView$BackPressListener;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/core/BasePopupView$BackPressListener;-><init>(Lcom/lxj/xpopup/core/BasePopupView;)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 378
    :goto_21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 379
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {v1, v3}, Lcom/lxj/xpopup/util/XPopupUtils;->findAllEditText(Ljava/util/ArrayList;Landroid/view/ViewGroup;)V

    .line 380
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_a2

    .line 381
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getHostWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v3, p0, Lcom/lxj/xpopup/core/BasePopupView;->preSoftMode:I

    .line 382
    iget-object v3, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-boolean v3, v3, Lcom/lxj/xpopup/core/PopupInfo;->isViewMode:Z

    if-eqz v3, :cond_52

    .line 383
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getHostWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 384
    iput-boolean v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->hasModifySoftMode:Z

    :cond_52
    const/4 v3, 0x0

    .line 386
    :goto_53
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_af

    .line 387
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 389
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v2, :cond_67

    .line 390
    invoke-virtual {p0, v4}, Lcom/lxj/xpopup/core/BasePopupView;->addOnUnhandledKeyListener(Landroid/view/View;)V

    goto :goto_75

    .line 392
    :cond_67
    invoke-static {v4}, Lcom/lxj/xpopup/util/XPopupUtils;->hasSetKeyListener(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_75

    .line 393
    new-instance v5, Lcom/lxj/xpopup/core/BasePopupView$BackPressListener;

    invoke-direct {v5, p0}, Lcom/lxj/xpopup/core/BasePopupView$BackPressListener;-><init>(Lcom/lxj/xpopup/core/BasePopupView;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_75
    :goto_75
    if-nez v3, :cond_9f

    .line 396
    iget-object v5, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-boolean v6, v5, Lcom/lxj/xpopup/core/PopupInfo;->autoFocusEditText:Z

    if-eqz v6, :cond_94

    .line 397
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 398
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 399
    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 400
    iget-object v5, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v5, v5, Lcom/lxj/xpopup/core/PopupInfo;->autoOpenSoftInput:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_9f

    invoke-virtual {p0, v4}, Lcom/lxj/xpopup/core/BasePopupView;->showSoftInput(Landroid/view/View;)V

    goto :goto_9f

    .line 402
    :cond_94
    iget-object v4, v5, Lcom/lxj/xpopup/core/PopupInfo;->autoOpenSoftInput:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9f

    invoke-virtual {p0, p0}, Lcom/lxj/xpopup/core/BasePopupView;->showSoftInput(Landroid/view/View;)V

    :cond_9f
    :goto_9f
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    .line 407
    :cond_a2
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->autoOpenSoftInput:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_af

    invoke-virtual {p0, p0}, Lcom/lxj/xpopup/core/BasePopupView;->showSoftInput(Landroid/view/View;)V

    :cond_af
    return-void
.end method

.method protected genAnimatorByPopupType()Lcom/lxj/xpopup/animator/PopupAnimator;
    .registers 5

    .line 478
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_6c

    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->popupAnimation:Lcom/lxj/xpopup/enums/PopupAnimation;

    if-nez v0, :cond_a

    goto :goto_6c

    .line 479
    :cond_a
    sget-object v2, Lcom/lxj/xpopup/core/BasePopupView$10;->$SwitchMap$com$lxj$xpopup$enums$PopupAnimation:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_6e

    return-object v1

    .line 510
    :pswitch_16  #0x16
    new-instance v0, Lcom/lxj/xpopup/animator/EmptyAnimator;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getAnimationDuration()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/lxj/xpopup/animator/EmptyAnimator;-><init>(Landroid/view/View;I)V

    return-object v0

    .line 507
    :pswitch_24  #0xe, 0xf, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15
    new-instance v0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getAnimationDuration()I

    move-result v2

    iget-object v3, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v3, v3, Lcom/lxj/xpopup/core/PopupInfo;->popupAnimation:Lcom/lxj/xpopup/enums/PopupAnimation;

    invoke-direct {v0, v1, v2, v3}, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;-><init>(Landroid/view/View;ILcom/lxj/xpopup/enums/PopupAnimation;)V

    return-object v0

    .line 497
    :pswitch_36  #0xa, 0xb, 0xc, 0xd
    new-instance v0, Lcom/lxj/xpopup/animator/TranslateAnimator;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getAnimationDuration()I

    move-result v2

    iget-object v3, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v3, v3, Lcom/lxj/xpopup/core/PopupInfo;->popupAnimation:Lcom/lxj/xpopup/enums/PopupAnimation;

    invoke-direct {v0, v1, v2, v3}, Lcom/lxj/xpopup/animator/TranslateAnimator;-><init>(Landroid/view/View;ILcom/lxj/xpopup/enums/PopupAnimation;)V

    return-object v0

    .line 491
    :pswitch_48  #0x6, 0x7, 0x8, 0x9
    new-instance v0, Lcom/lxj/xpopup/animator/TranslateAlphaAnimator;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getAnimationDuration()I

    move-result v2

    iget-object v3, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v3, v3, Lcom/lxj/xpopup/core/PopupInfo;->popupAnimation:Lcom/lxj/xpopup/enums/PopupAnimation;

    invoke-direct {v0, v1, v2, v3}, Lcom/lxj/xpopup/animator/TranslateAlphaAnimator;-><init>(Landroid/view/View;ILcom/lxj/xpopup/enums/PopupAnimation;)V

    return-object v0

    .line 485
    :pswitch_5a  #0x1, 0x2, 0x3, 0x4, 0x5
    new-instance v0, Lcom/lxj/xpopup/animator/ScaleAlphaAnimator;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getAnimationDuration()I

    move-result v2

    iget-object v3, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v3, v3, Lcom/lxj/xpopup/core/PopupInfo;->popupAnimation:Lcom/lxj/xpopup/enums/PopupAnimation;

    invoke-direct {v0, v1, v2, v3}, Lcom/lxj/xpopup/animator/ScaleAlphaAnimator;-><init>(Landroid/view/View;ILcom/lxj/xpopup/enums/PopupAnimation;)V

    return-object v0

    :cond_6c
    :goto_6c
    return-object v1

    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_5a  #00000001
        :pswitch_5a  #00000002
        :pswitch_5a  #00000003
        :pswitch_5a  #00000004
        :pswitch_5a  #00000005
        :pswitch_48  #00000006
        :pswitch_48  #00000007
        :pswitch_48  #00000008
        :pswitch_48  #00000009
        :pswitch_36  #0000000a
        :pswitch_36  #0000000b
        :pswitch_36  #0000000c
        :pswitch_36  #0000000d
        :pswitch_24  #0000000e
        :pswitch_24  #0000000f
        :pswitch_24  #00000010
        :pswitch_24  #00000011
        :pswitch_24  #00000012
        :pswitch_24  #00000013
        :pswitch_24  #00000014
        :pswitch_24  #00000015
        :pswitch_16  #00000016
    .end packed-switch
.end method

.method protected getActivity()Landroid/app/Activity;
    .registers 2

    .line 180
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lxj/xpopup/util/XPopupUtils;->context2Activity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method protected getActivityContentLeft()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getActivityContentView()Landroid/view/View;
    .registers 3

    .line 193
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 194
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getAnimationDuration()I
    .registers 5

    .line 599
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 600
    :cond_6
    iget-object v1, v0, Lcom/lxj/xpopup/core/PopupInfo;->popupAnimation:Lcom/lxj/xpopup/enums/PopupAnimation;

    sget-object v2, Lcom/lxj/xpopup/enums/PopupAnimation;->NoAnimation:Lcom/lxj/xpopup/enums/PopupAnimation;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_e

    return v3

    .line 601
    :cond_e
    iget v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->animationDuration:I

    if-ltz v0, :cond_13

    goto :goto_18

    :cond_13
    invoke-static {}, Lcom/lxj/xpopup/XPopup;->getAnimationDuration()I

    move-result v0

    add-int/2addr v0, v3

    :goto_18
    return v0
.end method

.method public getHostWindow()Landroid/view/Window;
    .registers 3

    .line 337
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    iget-boolean v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->isViewMode:Z

    if-eqz v0, :cond_15

    .line 338
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_14

    .line 339
    :cond_10
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    :goto_14
    return-object v1

    .line 341
    :cond_15
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->dialog:Lcom/lxj/xpopup/core/FullScreenDialog;

    if-nez v0, :cond_1a

    goto :goto_1e

    :cond_1a
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    :goto_1e
    return-object v1
.end method

.method protected getImplLayoutId()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method protected abstract getInnerLayoutId()I
.end method

.method protected getInternalFragmentNames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    return-object v0
.end method

.method protected getMaxHeight()I
    .registers 2

    .line 629
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->maxHeight:I

    :goto_8
    return v0
.end method

.method protected getMaxWidth()I
    .registers 2

    .line 619
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->maxWidth:I

    :goto_8
    return v0
.end method

.method protected getNavBarHeight()I
    .registers 2

    .line 873
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getHostWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/lxj/xpopup/util/XPopupUtils;->getNavBarHeight(Landroid/view/Window;)I

    move-result v0

    return v0
.end method

.method protected getPopupAnimator()Lcom/lxj/xpopup/animator/PopupAnimator;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPopupContentView()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    .line 591
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getPopupHeight()I
    .registers 2

    .line 649
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->popupHeight:I

    :goto_8
    return v0
.end method

.method public getPopupImplView()Landroid/view/View;
    .registers 3

    .line 595
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getPopupWidth()I
    .registers 2

    .line 639
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->popupWidth:I

    :goto_8
    return v0
.end method

.method public getShadowBgColor()I
    .registers 2

    .line 605
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-eqz v0, :cond_9

    iget v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->shadowBgColor:I

    if-eqz v0, :cond_9

    goto :goto_d

    :cond_9
    invoke-static {}, Lcom/lxj/xpopup/XPopup;->getShadowBgColor()I

    move-result v0

    :goto_d
    return v0
.end method

.method public getStatusBarBgColor()I
    .registers 2

    .line 609
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-eqz v0, :cond_9

    iget v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->statusBarBgColor:I

    if-eqz v0, :cond_9

    goto :goto_d

    :cond_9
    invoke-static {}, Lcom/lxj/xpopup/XPopup;->getStatusBarBgColor()I

    move-result v0

    :goto_d
    return v0
.end method

.method protected getStatusBarHeight()I
    .registers 2

    .line 870
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getHostWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/lxj/xpopup/util/XPopupUtils;->getStatusBarHeight(Landroid/view/Window;)I

    move-result v0

    return v0
.end method

.method protected getWindowDecorView()Landroid/view/View;
    .registers 2

    .line 183
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getHostWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 184
    :cond_8
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getHostWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected init()V
    .registers 5

    .line 253
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->shadowBgAnimator:Lcom/lxj/xpopup/animator/ShadowBgAnimator;

    if-nez v0, :cond_13

    .line 254
    new-instance v0, Lcom/lxj/xpopup/animator/ShadowBgAnimator;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getAnimationDuration()I

    move-result v1

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getShadowBgColor()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/lxj/xpopup/animator/ShadowBgAnimator;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->shadowBgAnimator:Lcom/lxj/xpopup/animator/ShadowBgAnimator;

    .line 255
    :cond_13
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->hasBlurBg:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 256
    new-instance v0, Lcom/lxj/xpopup/animator/BlurAnimator;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getShadowBgColor()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/lxj/xpopup/animator/BlurAnimator;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->blurAnimator:Lcom/lxj/xpopup/animator/BlurAnimator;

    .line 257
    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v1, v1, Lcom/lxj/xpopup/core/PopupInfo;->hasShadowBg:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/lxj/xpopup/animator/BlurAnimator;->hasShadowBg:Z

    .line 258
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->blurAnimator:Lcom/lxj/xpopup/animator/BlurAnimator;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 259
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getActivityContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x5

    .line 258
    invoke-static {v1, v2, v3}, Lcom/lxj/xpopup/util/XPopupUtils;->view2Bitmap(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/lxj/xpopup/animator/BlurAnimator;->decorBitmap:Landroid/graphics/Bitmap;

    .line 263
    :cond_4f
    instance-of v0, p0, Lcom/lxj/xpopup/core/AttachPopupView;

    if-nez v0, :cond_68

    instance-of v0, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;

    if-nez v0, :cond_68

    instance-of v0, p0, Lcom/lxj/xpopup/impl/PartShadowPopupView;

    if-nez v0, :cond_68

    instance-of v0, p0, Lcom/lxj/xpopup/core/PositionPopupView;

    if-eqz v0, :cond_60

    goto :goto_68

    .line 266
    :cond_60
    iget-boolean v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->isCreated:Z

    if-nez v0, :cond_6b

    .line 267
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->initPopupContent()V

    goto :goto_6b

    .line 265
    :cond_68
    :goto_68
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->initPopupContent()V

    .line 269
    :cond_6b
    :goto_6b
    iget-boolean v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->isCreated:Z

    if-nez v0, :cond_85

    const/4 v0, 0x1

    .line 270
    iput-boolean v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->isCreated:Z

    .line 271
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    .line 272
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 273
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->xPopupCallback:Lcom/lxj/xpopup/interfaces/XPopupCallback;

    if-eqz v0, :cond_85

    invoke-interface {v0, p0}, Lcom/lxj/xpopup/interfaces/XPopupCallback;->onCreated(Lcom/lxj/xpopup/core/BasePopupView;)V

    .line 275
    :cond_85
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->initTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected initAnimator()V
    .registers 3

    .line 302
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 304
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-eqz v0, :cond_1e

    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->customAnimator:Lcom/lxj/xpopup/animator/PopupAnimator;

    if-eqz v0, :cond_1e

    .line 305
    iput-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupContentAnimator:Lcom/lxj/xpopup/animator/PopupAnimator;

    .line 306
    iget-object v1, v0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    if-nez v1, :cond_2c

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    goto :goto_2c

    .line 309
    :cond_1e
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->genAnimatorByPopupType()Lcom/lxj/xpopup/animator/PopupAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupContentAnimator:Lcom/lxj/xpopup/animator/PopupAnimator;

    if-nez v0, :cond_2c

    .line 311
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupAnimator()Lcom/lxj/xpopup/animator/PopupAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupContentAnimator:Lcom/lxj/xpopup/animator/PopupAnimator;

    .line 316
    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-eqz v0, :cond_3d

    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->hasShadowBg:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 317
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->shadowBgAnimator:Lcom/lxj/xpopup/animator/ShadowBgAnimator;

    invoke-virtual {v0}, Lcom/lxj/xpopup/animator/ShadowBgAnimator;->initAnimator()V

    .line 319
    :cond_3d
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-eqz v0, :cond_50

    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->hasBlurBg:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->blurAnimator:Lcom/lxj/xpopup/animator/BlurAnimator;

    if-eqz v0, :cond_50

    .line 320
    invoke-virtual {v0}, Lcom/lxj/xpopup/animator/BlurAnimator;->initAnimator()V

    .line 322
    :cond_50
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupContentAnimator:Lcom/lxj/xpopup/animator/PopupAnimator;

    if-eqz v0, :cond_57

    .line 323
    invoke-virtual {v0}, Lcom/lxj/xpopup/animator/PopupAnimator;->initAnimator()V

    :cond_57
    return-void
.end method

.method protected initPopupContent()V
    .registers 1

    return-void
.end method

.method public isShow()Z
    .registers 3

    .line 743
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupStatus:Lcom/lxj/xpopup/enums/PopupStatus;

    sget-object v1, Lcom/lxj/xpopup/enums/PopupStatus;->Dismiss:Lcom/lxj/xpopup/enums/PopupStatus;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "insets"
        }
    .end annotation

    .line 229
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getActivityContentView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/lxj/xpopup/core/BasePopupView$3;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/core/BasePopupView$3;-><init>(Lcom/lxj/xpopup/core/BasePopupView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 235
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .line 90
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 91
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->init()V

    return-void
.end method

.method protected onBackPressed()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 240
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 241
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getActivityContentView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/lxj/xpopup/core/BasePopupView$4;

    invoke-direct {v0, p0}, Lcom/lxj/xpopup/core/BasePopupView$4;-><init>(Lcom/lxj/xpopup/core/BasePopupView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onCreate()V
    .registers 1

    return-void
.end method

.method public onDestroy()V
    .registers 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 824
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onDetachedFromWindow()V

    .line 825
    invoke-direct {p0}, Lcom/lxj/xpopup/core/BasePopupView;->detachFromHost()V

    .line 826
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->destroy()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 5

    .line 878
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 879
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getWindowDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 880
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getHostWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/lxj/xpopup/util/KeyboardUtils;->removeLayoutChangeListener(Landroid/view/Window;Lcom/lxj/xpopup/core/BasePopupView;)V

    .line 881
    :cond_10
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 882
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    const/4 v2, 0x0

    if-eqz v0, :cond_37

    .line 883
    iget-boolean v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->isViewMode:Z

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->hasModifySoftMode:Z

    if-eqz v0, :cond_2e

    .line 885
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getHostWindow()Landroid/view/Window;

    move-result-object v0

    iget v3, p0, Lcom/lxj/xpopup/core/BasePopupView;->preSoftMode:I

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 886
    iput-boolean v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->hasModifySoftMode:Z

    .line 888
    :cond_2e
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-boolean v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->isDestroyOnDismiss:Z

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->destroy()V

    .line 890
    :cond_37
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-eqz v0, :cond_43

    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->hostLifecycle:Landroidx/lifecycle/Lifecycle;

    if-eqz v0, :cond_43

    .line 891
    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    goto :goto_5e

    .line 893
    :cond_43
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5e

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_5e

    .line 894
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 897
    :cond_5e
    :goto_5e
    sget-object v0, Lcom/lxj/xpopup/enums/PopupStatus;->Dismiss:Lcom/lxj/xpopup/enums/PopupStatus;

    iput-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupStatus:Lcom/lxj/xpopup/enums/PopupStatus;

    .line 898
    iput-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->showSoftInputTask:Lcom/lxj/xpopup/core/BasePopupView$ShowSoftInputTask;

    .line 899
    iput-boolean v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->hasMoveUp:Z

    return-void
.end method

.method protected onDismiss()V
    .registers 1

    return-void
.end method

.method protected onKeyboardHeightChange(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    return-void
.end method

.method protected onShow()V
    .registers 1

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 922
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 923
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 924
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/lxj/xpopup/util/XPopupUtils;->isInRect(FFLandroid/graphics/Rect;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_9d

    .line 925
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_83

    if-eq v0, v1, :cond_44

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2b

    const/4 v2, 0x3

    if-eq v0, v2, :cond_44

    goto/16 :goto_9d

    .line 935
    :cond_2b
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-eqz v0, :cond_9d

    .line 936
    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->isDismissOnTouchOutside:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 937
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/BasePopupView;->checkDismissArea(Landroid/view/MotionEvent;)V

    .line 939
    :cond_3a
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-boolean v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->isTouchThrough:Z

    if-eqz v0, :cond_9d

    invoke-virtual {p0, p1}, Lcom/lxj/xpopup/core/BasePopupView;->passTouchThrough(Landroid/view/MotionEvent;)V

    goto :goto_9d

    .line 944
    :cond_44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->x:F

    sub-float/2addr v0, v2

    .line 945
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/lxj/xpopup/core/BasePopupView;->y:F

    sub-float/2addr v2, v3

    float-to-double v3, v0

    const-wide/high16 v5, 0x4000000000000000L  # 2.0

    .line 946
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    float-to-double v7, v2

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 947
    invoke-virtual {p0, p1}, Lcom/lxj/xpopup/core/BasePopupView;->passTouchThrough(Landroid/view/MotionEvent;)V

    .line 948
    iget v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->touchSlop:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_7d

    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-eqz v0, :cond_7d

    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->isDismissOnTouchOutside:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 949
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/BasePopupView;->checkDismissArea(Landroid/view/MotionEvent;)V

    :cond_7d
    const/4 p1, 0x0

    .line 951
    iput p1, p0, Lcom/lxj/xpopup/core/BasePopupView;->x:F

    .line 952
    iput p1, p0, Lcom/lxj/xpopup/core/BasePopupView;->y:F

    goto :goto_9d

    .line 927
    :cond_83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->x:F

    .line 928
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->y:F

    .line 929
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-eqz v0, :cond_9a

    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->xPopupCallback:Lcom/lxj/xpopup/interfaces/XPopupCallback;

    if-eqz v0, :cond_9a

    .line 930
    invoke-interface {v0, p0}, Lcom/lxj/xpopup/interfaces/XPopupCallback;->onClickOutside(Lcom/lxj/xpopup/core/BasePopupView;)V

    .line 932
    :cond_9a
    invoke-virtual {p0, p1}, Lcom/lxj/xpopup/core/BasePopupView;->passTouchThrough(Landroid/view/MotionEvent;)V

    :cond_9d
    :goto_9d
    return v1
.end method

.method public onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    .line 414
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/lxj/xpopup/core/BasePopupView;->processKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public passTouchThrough(Landroid/view/MotionEvent;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 903
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-eqz v0, :cond_3a

    iget-boolean v1, v0, Lcom/lxj/xpopup/core/PopupInfo;->isClickThrough:Z

    if-nez v1, :cond_c

    iget-boolean v1, v0, Lcom/lxj/xpopup/core/PopupInfo;->isTouchThrough:Z

    if-eqz v1, :cond_3a

    .line 904
    :cond_c
    iget-boolean v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->isViewMode:Z

    if-eqz v0, :cond_33

    .line 906
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 907
    :goto_1f
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3a

    .line 908
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 910
    instance-of v3, v2, Lcom/lxj/xpopup/core/BasePopupView;

    if-nez v3, :cond_30

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 913
    :cond_33
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_3a
    return-void
.end method

.method protected processKeyEvent(ILandroid/view/KeyEvent;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2f

    .line 456
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2f

    iget-object p1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-eqz p1, :cond_2f

    .line 457
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onBackPressed()Z

    move-result p1

    if-eqz p1, :cond_15

    return p2

    .line 458
    :cond_15
    iget-object p1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object p1, p1, Lcom/lxj/xpopup/core/PopupInfo;->isDismissOnBackPressed:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object p1, p1, Lcom/lxj/xpopup/core/PopupInfo;->xPopupCallback:Lcom/lxj/xpopup/interfaces/XPopupCallback;

    if-eqz p1, :cond_2b

    .line 459
    invoke-interface {p1, p0}, Lcom/lxj/xpopup/interfaces/XPopupCallback;->onBackPressed(Lcom/lxj/xpopup/core/BasePopupView;)Z

    move-result p1

    if-nez p1, :cond_2e

    .line 460
    :cond_2b
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->dismissOrHideSoftInput()V

    :cond_2e
    return p2

    :cond_2f
    const/4 p1, 0x0

    return p1
.end method

.method public show()Lcom/lxj/xpopup/core/BasePopupView;
    .registers 6

    .line 95
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 96
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_4d

    .line 99
    :cond_d
    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-eqz v1, :cond_45

    .line 102
    iget-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupStatus:Lcom/lxj/xpopup/enums/PopupStatus;

    sget-object v3, Lcom/lxj/xpopup/enums/PopupStatus;->Showing:Lcom/lxj/xpopup/enums/PopupStatus;

    if-eq v2, v3, :cond_44

    sget-object v4, Lcom/lxj/xpopup/enums/PopupStatus;->Dismissing:Lcom/lxj/xpopup/enums/PopupStatus;

    if-ne v2, v4, :cond_1c

    goto :goto_44

    .line 104
    :cond_1c
    iput-object v3, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupStatus:Lcom/lxj/xpopup/enums/PopupStatus;

    .line 106
    iget-boolean v1, v1, Lcom/lxj/xpopup/core/PopupInfo;->isViewMode:Z

    if-nez v1, :cond_2d

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->dialog:Lcom/lxj/xpopup/core/FullScreenDialog;

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2d

    return-object p0

    .line 110
    :cond_2d
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 111
    new-instance v1, Lcom/lxj/xpopup/core/BasePopupView$1;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/core/BasePopupView$1;-><init>(Lcom/lxj/xpopup/core/BasePopupView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_44
    :goto_44
    return-object p0

    .line 100
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "popupInfo is null, if your popup object is reused, do not set isDestroyOnDismiss(true) !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    :goto_4d
    return-object p0
.end method

.method protected showSoftInput(Landroid/view/View;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focusView"
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-eqz v0, :cond_1e

    .line 424
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->showSoftInputTask:Lcom/lxj/xpopup/core/BasePopupView$ShowSoftInputTask;

    if-nez v0, :cond_10

    .line 425
    new-instance v0, Lcom/lxj/xpopup/core/BasePopupView$ShowSoftInputTask;

    invoke-direct {v0, p1}, Lcom/lxj/xpopup/core/BasePopupView$ShowSoftInputTask;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->showSoftInputTask:Lcom/lxj/xpopup/core/BasePopupView$ShowSoftInputTask;

    goto :goto_15

    .line 427
    :cond_10
    iget-object p1, p0, Lcom/lxj/xpopup/core/BasePopupView;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 429
    :goto_15
    iget-object p1, p0, Lcom/lxj/xpopup/core/BasePopupView;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->showSoftInputTask:Lcom/lxj/xpopup/core/BasePopupView$ShowSoftInputTask;

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1e
    return-void
.end method

.method protected tryRemoveFragments()V
    .registers 7

    .line 762
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_53

    .line 763
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 764
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    .line 765
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getInternalFragmentNames()Ljava/util/List;

    move-result-object v2

    if-eqz v1, :cond_53

    .line 766
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_53

    if-eqz v2, :cond_53

    const/4 v3, 0x0

    .line 767
    :goto_25
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_53

    .line 768
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 769
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 770
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    .line 771
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    .line 772
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_53
    return-void
.end method
