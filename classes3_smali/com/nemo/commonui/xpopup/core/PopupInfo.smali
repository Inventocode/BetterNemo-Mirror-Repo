.class public Lcom/nemo/commonui/xpopup/core/PopupInfo;
.super Ljava/lang/Object;
.source "PopupInfo.java"


# instance fields
.field public atView:Landroid/view/View;

.field public autoFocusEditText:Z

.field public autoOpenSoftInput:Ljava/lang/Boolean;

.field public customAnimator:Lcom/nemo/commonui/xpopup/animator/PopupAnimator;

.field public decorView:Landroid/view/ViewGroup;

.field public enableDrag:Ljava/lang/Boolean;

.field public hasEyeshieldView:Z

.field public hasShadowBg:Ljava/lang/Boolean;

.field public hasStatusBarShadow:Ljava/lang/Boolean;

.field public isCenterHorizontal:Z

.field public isDismissOnBackPressed:Ljava/lang/Boolean;

.field public isDismissOnTouchOutside:Ljava/lang/Boolean;

.field public isMoveUpToKeyboard:Ljava/lang/Boolean;

.field public isOpenEyeshieldMode:Z

.field public isRequestFocus:Z

.field public maxHeight:I

.field public maxWidth:I

.field public offsetX:I

.field public offsetY:I

.field public popupAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

.field public popupPosition:Lcom/nemo/commonui/xpopup/enums/PopupPosition;

.field public popupType:Lcom/nemo/commonui/xpopup/enums/PopupType;

.field public touchPoint:Landroid/graphics/PointF;

.field public xPopupCallback:Lcom/nemo/commonui/xpopup/interfaces/XPopupCallback;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->isDismissOnBackPressed:Ljava/lang/Boolean;

    .line 21
    iput-object v0, p0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->isDismissOnTouchOutside:Ljava/lang/Boolean;

    .line 23
    iput-object v0, p0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->hasShadowBg:Ljava/lang/Boolean;

    const/4 v1, 0x0

    .line 24
    iput-object v1, p0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->atView:Landroid/view/View;

    .line 27
    iput-object v1, p0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->popupAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    .line 28
    iput-object v1, p0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->customAnimator:Lcom/nemo/commonui/xpopup/animator/PopupAnimator;

    .line 29
    iput-object v1, p0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    .line 32
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->autoOpenSoftInput:Ljava/lang/Boolean;

    .line 36
    iput-object v0, p0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->isMoveUpToKeyboard:Ljava/lang/Boolean;

    .line 37
    iput-object v1, p0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->popupPosition:Lcom/nemo/commonui/xpopup/enums/PopupPosition;

    .line 38
    iput-object v2, p0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->hasStatusBarShadow:Ljava/lang/Boolean;

    .line 40
    iput-object v0, p0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->enableDrag:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->isCenterHorizontal:Z

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->isRequestFocus:Z

    .line 43
    iput-boolean v0, p0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->autoFocusEditText:Z

    .line 49
    sget-object v0, Lcom/nemo/commonui/NemoUIConfigManager;->INSTANCE:Lcom/nemo/commonui/NemoUIConfigManager;

    invoke-virtual {v0}, Lcom/nemo/commonui/NemoUIConfigManager;->getHasEyeshieldView()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->hasEyeshieldView:Z

    .line 53
    invoke-virtual {v0}, Lcom/nemo/commonui/NemoUIConfigManager;->isOpenEyeshieldMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->isOpenEyeshieldMode:Z

    return-void
.end method


# virtual methods
.method public getAtView()Landroid/view/View;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->atView:Landroid/view/View;

    return-object v0
.end method
