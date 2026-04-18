.class public Lcom/lxj/xpopup/XPopup$Builder;
.super Ljava/lang/Object;
.source "XPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lxj/xpopup/XPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final popupInfo:Lcom/lxj/xpopup/core/PopupInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance p1, Lcom/lxj/xpopup/core/PopupInfo;

    invoke-direct {p1}, Lcom/lxj/xpopup/core/PopupInfo;-><init>()V

    iput-object p1, p0, Lcom/lxj/xpopup/XPopup$Builder;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    return-void
.end method


# virtual methods
.method public asCustom(Lcom/lxj/xpopup/core/BasePopupView;)Lcom/lxj/xpopup/core/BasePopupView;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "popupView"
        }
    .end annotation

    .line 995
    iget-object v0, p0, Lcom/lxj/xpopup/XPopup$Builder;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iput-object v0, p1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    return-object p1
.end method

.method public autoOpenSoftInput(Ljava/lang/Boolean;)Lcom/lxj/xpopup/XPopup$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoOpenSoftInput"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/lxj/xpopup/XPopup$Builder;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iput-object p1, v0, Lcom/lxj/xpopup/core/PopupInfo;->autoOpenSoftInput:Ljava/lang/Boolean;

    return-object p0
.end method

.method public moveUpToKeyboard(Ljava/lang/Boolean;)Lcom/lxj/xpopup/XPopup$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isMoveUpToKeyboard"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/lxj/xpopup/XPopup$Builder;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iput-object p1, v0, Lcom/lxj/xpopup/core/PopupInfo;->isMoveUpToKeyboard:Ljava/lang/Boolean;

    return-object p0
.end method

.method public popupAnimation(Lcom/lxj/xpopup/enums/PopupAnimation;)Lcom/lxj/xpopup/XPopup$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "popupAnimation"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/lxj/xpopup/XPopup$Builder;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iput-object p1, v0, Lcom/lxj/xpopup/core/PopupInfo;->popupAnimation:Lcom/lxj/xpopup/enums/PopupAnimation;

    return-object p0
.end method
