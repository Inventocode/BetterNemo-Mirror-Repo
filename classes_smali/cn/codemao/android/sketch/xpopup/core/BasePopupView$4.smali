.class Lcn/codemao/android/sketch/xpopup/core/BasePopupView$4;
.super Ljava/lang/Object;
.source "BasePopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/sketch/xpopup/core/BasePopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/xpopup/core/BasePopupView;)V
    .registers 2

    .line 221
    iput-object p1, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$4;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 224
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$4;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    sget-object v1, Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;->Show:Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;

    iput-object v1, v0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->popupStatus:Lcn/codemao/android/sketch/xpopup/enums/PopupStatus;

    .line 225
    invoke-virtual {v0}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->onShow()V

    .line 226
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$4;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    instance-of v1, v0, Lcn/codemao/android/sketch/xpopup/impl/FullScreenPopupView;

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->focusAndProcessBackPress()V

    .line 227
    :cond_12
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$4;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    iget-object v0, v0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->popupInfo:Lcn/codemao/android/sketch/xpopup/core/PopupInfo;

    if-eqz v0, :cond_1f

    iget-object v0, v0, Lcn/codemao/android/sketch/xpopup/core/PopupInfo;->xPopupCallback:Lcn/codemao/android/sketch/xpopup/interfaces/XPopupCallback;

    if-eqz v0, :cond_1f

    .line 228
    invoke-interface {v0}, Lcn/codemao/android/sketch/xpopup/interfaces/XPopupCallback;->onShow()V

    .line 229
    :cond_1f
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$4;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcn/codemao/android/sketch/xpopup/util/XPopupUtils;->getDecorViewInvisibleHeight(Landroid/app/Activity;)I

    move-result v0

    if-lez v0, :cond_46

    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$4;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    invoke-static {v0}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->access$100(Lcn/codemao/android/sketch/xpopup/core/BasePopupView;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 230
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$4;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcn/codemao/android/sketch/xpopup/util/XPopupUtils;->getDecorViewInvisibleHeight(Landroid/app/Activity;)I

    move-result v0

    iget-object v1, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$4;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/xpopup/util/XPopupUtils;->moveUpToKeyboard(ILcn/codemao/android/sketch/xpopup/core/BasePopupView;)V

    :cond_46
    return-void
.end method
