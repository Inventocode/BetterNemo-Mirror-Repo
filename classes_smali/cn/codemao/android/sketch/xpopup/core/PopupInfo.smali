.class public Lcn/codemao/android/sketch/xpopup/core/PopupInfo;
.super Ljava/lang/Object;
.source "PopupInfo.java"


# instance fields
.field public autoFocusEditText:Z

.field public autoOpenSoftInput:Ljava/lang/Boolean;

.field public customAnimator:Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;

.field public decorView:Landroid/view/ViewGroup;

.field public hasShadowBg:Ljava/lang/Boolean;

.field public hasStatusBarShadow:Ljava/lang/Boolean;

.field public isDismissOnBackPressed:Ljava/lang/Boolean;

.field public isDismissOnTouchOutside:Ljava/lang/Boolean;

.field public isMoveUpToKeyboard:Ljava/lang/Boolean;

.field public isRequestFocus:Z

.field public maxHeight:I

.field public maxWidth:I

.field public offsetX:I

.field public offsetY:I

.field public popupAnimation:Lcn/codemao/android/sketch/xpopup/enums/PopupAnimation;

.field public popupType:Lcn/codemao/android/sketch/xpopup/enums/PopupType;

.field public xPopupCallback:Lcn/codemao/android/sketch/xpopup/interfaces/XPopupCallback;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcn/codemao/android/sketch/xpopup/core/PopupInfo;->isDismissOnBackPressed:Ljava/lang/Boolean;

    .line 21
    iput-object v0, p0, Lcn/codemao/android/sketch/xpopup/core/PopupInfo;->isDismissOnTouchOutside:Ljava/lang/Boolean;

    .line 23
    iput-object v0, p0, Lcn/codemao/android/sketch/xpopup/core/PopupInfo;->hasShadowBg:Ljava/lang/Boolean;

    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, Lcn/codemao/android/sketch/xpopup/core/PopupInfo;->popupAnimation:Lcn/codemao/android/sketch/xpopup/enums/PopupAnimation;

    .line 28
    iput-object v1, p0, Lcn/codemao/android/sketch/xpopup/core/PopupInfo;->customAnimator:Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;

    .line 32
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcn/codemao/android/sketch/xpopup/core/PopupInfo;->autoOpenSoftInput:Ljava/lang/Boolean;

    .line 36
    iput-object v0, p0, Lcn/codemao/android/sketch/xpopup/core/PopupInfo;->isMoveUpToKeyboard:Ljava/lang/Boolean;

    .line 38
    iput-object v1, p0, Lcn/codemao/android/sketch/xpopup/core/PopupInfo;->hasStatusBarShadow:Ljava/lang/Boolean;

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcn/codemao/android/sketch/xpopup/core/PopupInfo;->isRequestFocus:Z

    .line 43
    iput-boolean v0, p0, Lcn/codemao/android/sketch/xpopup/core/PopupInfo;->autoFocusEditText:Z

    return-void
.end method
