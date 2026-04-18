.class public Lcom/nemo/commonui/xpopup/XPopup$Builder;
.super Ljava/lang/Object;
.source "XPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemo/commonui/xpopup/XPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance p1, Lcom/nemo/commonui/xpopup/core/PopupInfo;

    invoke-direct {p1}, Lcom/nemo/commonui/xpopup/core/PopupInfo;-><init>()V

    iput-object p1, p0, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    return-void
.end method


# virtual methods
.method public asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;
    .registers 3

    .line 513
    instance-of v0, p1, Lcom/nemo/commonui/xpopup/core/CenterPopupView;

    if-eqz v0, :cond_a

    .line 514
    sget-object v0, Lcom/nemo/commonui/xpopup/enums/PopupType;->Center:Lcom/nemo/commonui/xpopup/enums/PopupType;

    invoke-virtual {p0, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupType(Lcom/nemo/commonui/xpopup/enums/PopupType;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    goto :goto_27

    .line 515
    :cond_a
    instance-of v0, p1, Lcom/nemo/commonui/xpopup/core/BottomPopupView;

    if-eqz v0, :cond_14

    .line 516
    sget-object v0, Lcom/nemo/commonui/xpopup/enums/PopupType;->Bottom:Lcom/nemo/commonui/xpopup/enums/PopupType;

    invoke-virtual {p0, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupType(Lcom/nemo/commonui/xpopup/enums/PopupType;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    goto :goto_27

    .line 517
    :cond_14
    instance-of v0, p1, Lcom/nemo/commonui/xpopup/core/AttachPopupView;

    if-eqz v0, :cond_1e

    .line 518
    sget-object v0, Lcom/nemo/commonui/xpopup/enums/PopupType;->AttachView:Lcom/nemo/commonui/xpopup/enums/PopupType;

    invoke-virtual {p0, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupType(Lcom/nemo/commonui/xpopup/enums/PopupType;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    goto :goto_27

    .line 519
    :cond_1e
    instance-of v0, p1, Lcom/nemo/commonui/xpopup/core/PositionPopupView;

    if-eqz v0, :cond_27

    .line 520
    sget-object v0, Lcom/nemo/commonui/xpopup/enums/PopupType;->Position:Lcom/nemo/commonui/xpopup/enums/PopupType;

    invoke-virtual {p0, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupType(Lcom/nemo/commonui/xpopup/enums/PopupType;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    .line 522
    :cond_27
    :goto_27
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iput-object v0, p1, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    return-object p1
.end method

.method public autoOpenSoftInput(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;
    .registers 3

    .line 213
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iput-object p1, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->autoOpenSoftInput:Ljava/lang/Boolean;

    return-object p0
.end method

.method public dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;
    .registers 3

    .line 95
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iput-object p1, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->isDismissOnBackPressed:Ljava/lang/Boolean;

    return-object p0
.end method

.method public dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;
    .registers 3

    .line 106
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iput-object p1, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->isDismissOnTouchOutside:Ljava/lang/Boolean;

    return-object p0
.end method

.method public enableDrag(Z)Lcom/nemo/commonui/xpopup/XPopup$Builder;
    .registers 3

    .line 281
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->enableDrag:Ljava/lang/Boolean;

    return-object p0
.end method

.method public hasShadowBg(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;
    .registers 3

    .line 128
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iput-object p1, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->hasShadowBg:Ljava/lang/Boolean;

    return-object p0
.end method

.method public hasStatusBarShadow(Z)Lcom/nemo/commonui/xpopup/XPopup$Builder;
    .registers 3

    .line 248
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->hasStatusBarShadow:Ljava/lang/Boolean;

    return-object p0
.end method

.method public moveUpToKeyboard(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;
    .registers 3

    .line 224
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iput-object p1, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->isMoveUpToKeyboard:Ljava/lang/Boolean;

    return-object p0
.end method

.method public offsetX(I)Lcom/nemo/commonui/xpopup/XPopup$Builder;
    .registers 3

    .line 259
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iput p1, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->offsetX:I

    return-object p0
.end method

.method public offsetY(I)Lcom/nemo/commonui/xpopup/XPopup$Builder;
    .registers 3

    .line 270
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iput p1, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->offsetY:I

    return-object p0
.end method

.method public popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;
    .registers 3

    .line 169
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iput-object p1, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->popupAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    return-object p0
.end method

.method public popupPosition(Lcom/nemo/commonui/xpopup/enums/PopupPosition;)Lcom/nemo/commonui/xpopup/XPopup$Builder;
    .registers 3

    .line 236
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iput-object p1, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->popupPosition:Lcom/nemo/commonui/xpopup/enums/PopupPosition;

    return-object p0
.end method

.method public popupType(Lcom/nemo/commonui/xpopup/enums/PopupType;)Lcom/nemo/commonui/xpopup/XPopup$Builder;
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iput-object p1, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->popupType:Lcom/nemo/commonui/xpopup/enums/PopupType;

    return-object p0
.end method

.method public setPopupCallback(Lcom/nemo/commonui/xpopup/interfaces/XPopupCallback;)Lcom/nemo/commonui/xpopup/XPopup$Builder;
    .registers 3

    .line 336
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iput-object p1, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->xPopupCallback:Lcom/nemo/commonui/xpopup/interfaces/XPopupCallback;

    return-object p0
.end method
