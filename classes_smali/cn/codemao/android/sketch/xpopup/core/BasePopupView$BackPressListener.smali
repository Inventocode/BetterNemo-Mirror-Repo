.class Lcn/codemao/android/sketch/xpopup/core/BasePopupView$BackPressListener;
.super Ljava/lang/Object;
.source "BasePopupView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/sketch/xpopup/core/BasePopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackPressListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/xpopup/core/BasePopupView;)V
    .registers 2

    .line 297
    iput-object p1, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$BackPressListener;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p1, 0x4

    if-ne p2, p1, :cond_2a

    .line 300
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2a

    .line 301
    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$BackPressListener;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    iget-object p1, p1, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->popupInfo:Lcn/codemao/android/sketch/xpopup/core/PopupInfo;

    iget-object p1, p1, Lcn/codemao/android/sketch/xpopup/core/PopupInfo;->isDismissOnBackPressed:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$BackPressListener;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    iget-object p1, p1, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->popupInfo:Lcn/codemao/android/sketch/xpopup/core/PopupInfo;

    iget-object p1, p1, Lcn/codemao/android/sketch/xpopup/core/PopupInfo;->xPopupCallback:Lcn/codemao/android/sketch/xpopup/interfaces/XPopupCallback;

    if-eqz p1, :cond_24

    .line 302
    invoke-interface {p1}, Lcn/codemao/android/sketch/xpopup/interfaces/XPopupCallback;->onBackPressed()Z

    move-result p1

    if-nez p1, :cond_29

    .line 303
    :cond_24
    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$BackPressListener;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->dismissOrHideSoftInput()V

    :cond_29
    return p2

    :cond_2a
    const/4 p1, 0x0

    return p1
.end method
