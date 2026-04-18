.class public Lcn/codemao/android/sketch/xpopup/XPopup$Builder;
.super Ljava/lang/Object;
.source "XPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/sketch/xpopup/XPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final popupInfo:Lcn/codemao/android/sketch/xpopup/core/PopupInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance p1, Lcn/codemao/android/sketch/xpopup/core/PopupInfo;

    invoke-direct {p1}, Lcn/codemao/android/sketch/xpopup/core/PopupInfo;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/xpopup/XPopup$Builder;->popupInfo:Lcn/codemao/android/sketch/xpopup/core/PopupInfo;

    return-void
.end method


# virtual methods
.method public asCustom(Lcn/codemao/android/sketch/xpopup/core/BasePopupView;)Lcn/codemao/android/sketch/xpopup/core/BasePopupView;
    .registers 3

    .line 356
    instance-of v0, p1, Lcn/codemao/android/sketch/xpopup/core/CenterPopupView;

    if-eqz v0, :cond_9

    .line 357
    sget-object v0, Lcn/codemao/android/sketch/xpopup/enums/PopupType;->Center:Lcn/codemao/android/sketch/xpopup/enums/PopupType;

    invoke-virtual {p0, v0}, Lcn/codemao/android/sketch/xpopup/XPopup$Builder;->popupType(Lcn/codemao/android/sketch/xpopup/enums/PopupType;)Lcn/codemao/android/sketch/xpopup/XPopup$Builder;

    .line 359
    :cond_9
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/XPopup$Builder;->popupInfo:Lcn/codemao/android/sketch/xpopup/core/PopupInfo;

    iput-object v0, p1, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->popupInfo:Lcn/codemao/android/sketch/xpopup/core/PopupInfo;

    return-object p1
.end method

.method public autoOpenSoftInput(Ljava/lang/Boolean;)Lcn/codemao/android/sketch/xpopup/XPopup$Builder;
    .registers 3

    .line 206
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/XPopup$Builder;->popupInfo:Lcn/codemao/android/sketch/xpopup/core/PopupInfo;

    iput-object p1, v0, Lcn/codemao/android/sketch/xpopup/core/PopupInfo;->autoOpenSoftInput:Ljava/lang/Boolean;

    return-object p0
.end method

.method public customAnimator(Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;)Lcn/codemao/android/sketch/xpopup/XPopup$Builder;
    .registers 3

    .line 173
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/XPopup$Builder;->popupInfo:Lcn/codemao/android/sketch/xpopup/core/PopupInfo;

    iput-object p1, v0, Lcn/codemao/android/sketch/xpopup/core/PopupInfo;->customAnimator:Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;

    return-object p0
.end method

.method public dismissOnBackPressed(Ljava/lang/Boolean;)Lcn/codemao/android/sketch/xpopup/XPopup$Builder;
    .registers 3

    .line 88
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/XPopup$Builder;->popupInfo:Lcn/codemao/android/sketch/xpopup/core/PopupInfo;

    iput-object p1, v0, Lcn/codemao/android/sketch/xpopup/core/PopupInfo;->isDismissOnBackPressed:Ljava/lang/Boolean;

    return-object p0
.end method

.method public dismissOnTouchOutside(Ljava/lang/Boolean;)Lcn/codemao/android/sketch/xpopup/XPopup$Builder;
    .registers 3

    .line 99
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/XPopup$Builder;->popupInfo:Lcn/codemao/android/sketch/xpopup/core/PopupInfo;

    iput-object p1, v0, Lcn/codemao/android/sketch/xpopup/core/PopupInfo;->isDismissOnTouchOutside:Ljava/lang/Boolean;

    return-object p0
.end method

.method public popupAnimation(Lcn/codemao/android/sketch/xpopup/enums/PopupAnimation;)Lcn/codemao/android/sketch/xpopup/XPopup$Builder;
    .registers 3

    .line 162
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/XPopup$Builder;->popupInfo:Lcn/codemao/android/sketch/xpopup/core/PopupInfo;

    iput-object p1, v0, Lcn/codemao/android/sketch/xpopup/core/PopupInfo;->popupAnimation:Lcn/codemao/android/sketch/xpopup/enums/PopupAnimation;

    return-object p0
.end method

.method public popupType(Lcn/codemao/android/sketch/xpopup/enums/PopupType;)Lcn/codemao/android/sketch/xpopup/XPopup$Builder;
    .registers 3

    .line 77
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/XPopup$Builder;->popupInfo:Lcn/codemao/android/sketch/xpopup/core/PopupInfo;

    iput-object p1, v0, Lcn/codemao/android/sketch/xpopup/core/PopupInfo;->popupType:Lcn/codemao/android/sketch/xpopup/enums/PopupType;

    return-object p0
.end method
