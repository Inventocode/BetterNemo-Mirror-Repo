.class public Lcom/lxj/xpopup/core/PopupInfo;
.super Ljava/lang/Object;
.source "PopupInfo.java"


# instance fields
.field public animationDuration:I

.field public atView:Landroid/view/View;

.field public autoDismiss:Ljava/lang/Boolean;

.field public autoFocusEditText:Z

.field public autoOpenSoftInput:Ljava/lang/Boolean;

.field public borderRadius:F

.field public customAnimator:Lcom/lxj/xpopup/animator/PopupAnimator;

.field public enableDrag:Z

.field public enableShowWhenAppBackground:Z

.field public hasBlurBg:Ljava/lang/Boolean;

.field public hasNavigationBar:Ljava/lang/Boolean;

.field public hasShadowBg:Ljava/lang/Boolean;

.field public hasStatusBar:Ljava/lang/Boolean;

.field public hasStatusBarShadow:Ljava/lang/Boolean;

.field public hostLifecycle:Landroidx/lifecycle/Lifecycle;

.field public isCenterHorizontal:Z

.field public isClickThrough:Z

.field public isCoverSoftInput:Ljava/lang/Boolean;

.field public isDarkTheme:Z

.field public isDestroyOnDismiss:Z

.field public isDismissOnBackPressed:Ljava/lang/Boolean;

.field public isDismissOnTouchOutside:Ljava/lang/Boolean;

.field public isLightNavigationBar:I

.field public isLightStatusBar:I

.field public isMoveUpToKeyboard:Ljava/lang/Boolean;

.field public isRequestFocus:Z

.field public isThreeDrag:Z

.field public isTouchThrough:Z

.field public isViewMode:Z

.field public keepScreenOn:Z

.field public maxHeight:I

.field public maxWidth:I

.field public navigationBarColor:I

.field public notDismissWhenTouchInArea:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public offsetX:I

.field public offsetY:I

.field public popupAnimation:Lcom/lxj/xpopup/enums/PopupAnimation;

.field public popupHeight:I

.field public popupPosition:Lcom/lxj/xpopup/enums/PopupPosition;

.field public popupWidth:I

.field public positionByWindowCenter:Z

.field public shadowBgColor:I

.field public statusBarBgColor:I

.field public touchPoint:Landroid/graphics/PointF;

.field public xPopupCallback:Lcom/lxj/xpopup/interfaces/XPopupCallback;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/lxj/xpopup/core/PopupInfo;->isDismissOnBackPressed:Ljava/lang/Boolean;

    .line 19
    iput-object v0, p0, Lcom/lxj/xpopup/core/PopupInfo;->isDismissOnTouchOutside:Ljava/lang/Boolean;

    .line 20
    iput-object v0, p0, Lcom/lxj/xpopup/core/PopupInfo;->autoDismiss:Ljava/lang/Boolean;

    .line 21
    iput-object v0, p0, Lcom/lxj/xpopup/core/PopupInfo;->hasShadowBg:Ljava/lang/Boolean;

    .line 22
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/lxj/xpopup/core/PopupInfo;->hasBlurBg:Ljava/lang/Boolean;

    const/4 v2, 0x0

    .line 23
    iput-object v2, p0, Lcom/lxj/xpopup/core/PopupInfo;->atView:Landroid/view/View;

    .line 25
    iput-object v2, p0, Lcom/lxj/xpopup/core/PopupInfo;->popupAnimation:Lcom/lxj/xpopup/enums/PopupAnimation;

    .line 26
    iput-object v2, p0, Lcom/lxj/xpopup/core/PopupInfo;->customAnimator:Lcom/lxj/xpopup/animator/PopupAnimator;

    .line 27
    iput-object v2, p0, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    const/high16 v3, 0x41700000  # 15.0f

    .line 31
    iput v3, p0, Lcom/lxj/xpopup/core/PopupInfo;->borderRadius:F

    .line 32
    iput-object v1, p0, Lcom/lxj/xpopup/core/PopupInfo;->autoOpenSoftInput:Ljava/lang/Boolean;

    .line 35
    iput-object v0, p0, Lcom/lxj/xpopup/core/PopupInfo;->isMoveUpToKeyboard:Ljava/lang/Boolean;

    .line 36
    iput-object v2, p0, Lcom/lxj/xpopup/core/PopupInfo;->popupPosition:Lcom/lxj/xpopup/enums/PopupPosition;

    .line 37
    iput-object v1, p0, Lcom/lxj/xpopup/core/PopupInfo;->hasStatusBarShadow:Ljava/lang/Boolean;

    .line 38
    iput-object v0, p0, Lcom/lxj/xpopup/core/PopupInfo;->hasStatusBar:Ljava/lang/Boolean;

    .line 39
    iput-object v0, p0, Lcom/lxj/xpopup/core/PopupInfo;->hasNavigationBar:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/lxj/xpopup/core/PopupInfo;->navigationBarColor:I

    .line 41
    iput v0, p0, Lcom/lxj/xpopup/core/PopupInfo;->isLightNavigationBar:I

    .line 42
    iput v0, p0, Lcom/lxj/xpopup/core/PopupInfo;->isLightStatusBar:I

    const/4 v2, 0x1

    .line 44
    iput-boolean v2, p0, Lcom/lxj/xpopup/core/PopupInfo;->enableDrag:Z

    .line 45
    iput-boolean v0, p0, Lcom/lxj/xpopup/core/PopupInfo;->isCenterHorizontal:Z

    .line 46
    iput-boolean v2, p0, Lcom/lxj/xpopup/core/PopupInfo;->isRequestFocus:Z

    .line 47
    iput-boolean v2, p0, Lcom/lxj/xpopup/core/PopupInfo;->autoFocusEditText:Z

    .line 48
    iput-boolean v0, p0, Lcom/lxj/xpopup/core/PopupInfo;->isClickThrough:Z

    .line 49
    iput-boolean v0, p0, Lcom/lxj/xpopup/core/PopupInfo;->isTouchThrough:Z

    .line 50
    iput-boolean v0, p0, Lcom/lxj/xpopup/core/PopupInfo;->isDarkTheme:Z

    .line 51
    iput-boolean v0, p0, Lcom/lxj/xpopup/core/PopupInfo;->enableShowWhenAppBackground:Z

    .line 52
    iput-boolean v0, p0, Lcom/lxj/xpopup/core/PopupInfo;->isThreeDrag:Z

    .line 53
    iput-boolean v0, p0, Lcom/lxj/xpopup/core/PopupInfo;->isDestroyOnDismiss:Z

    .line 54
    iput-boolean v0, p0, Lcom/lxj/xpopup/core/PopupInfo;->positionByWindowCenter:Z

    .line 55
    iput-boolean v0, p0, Lcom/lxj/xpopup/core/PopupInfo;->isViewMode:Z

    .line 56
    iput-boolean v0, p0, Lcom/lxj/xpopup/core/PopupInfo;->keepScreenOn:Z

    .line 57
    iput v0, p0, Lcom/lxj/xpopup/core/PopupInfo;->shadowBgColor:I

    const/4 v2, -0x1

    .line 58
    iput v2, p0, Lcom/lxj/xpopup/core/PopupInfo;->animationDuration:I

    .line 59
    iput v0, p0, Lcom/lxj/xpopup/core/PopupInfo;->statusBarBgColor:I

    .line 62
    iput-object v1, p0, Lcom/lxj/xpopup/core/PopupInfo;->isCoverSoftInput:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getAtViewRect()Landroid/graphics/Rect;
    .registers 8

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 66
    iget-object v1, p0, Lcom/lxj/xpopup/core/PopupInfo;->atView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 67
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    aget v2, v0, v2

    iget-object v6, p0, Lcom/lxj/xpopup/core/PopupInfo;->atView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v2, v6

    aget v0, v0, v4

    iget-object v4, p0, Lcom/lxj/xpopup/core/PopupInfo;->atView:Landroid/view/View;

    .line 68
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v0, v4

    invoke-direct {v1, v3, v5, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method
