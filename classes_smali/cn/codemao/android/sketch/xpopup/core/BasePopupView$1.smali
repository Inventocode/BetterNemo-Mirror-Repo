.class Lcn/codemao/android/sketch/xpopup/core/BasePopupView$1;
.super Ljava/lang/Object;
.source "BasePopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->init()V
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

    .line 98
    iput-object p1, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$1;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 102
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$1;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->applySize(Z)V

    .line 103
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$1;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 106
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$1;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    invoke-static {v0}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->access$000(Lcn/codemao/android/sketch/xpopup/core/BasePopupView;)V

    .line 108
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$1;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    iget-object v0, v0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->popupInfo:Lcn/codemao/android/sketch/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcn/codemao/android/sketch/xpopup/core/PopupInfo;->xPopupCallback:Lcn/codemao/android/sketch/xpopup/interfaces/XPopupCallback;

    if-eqz v0, :cond_21

    invoke-interface {v0}, Lcn/codemao/android/sketch/xpopup/interfaces/XPopupCallback;->beforeShow()V

    .line 111
    :cond_21
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$1;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->doShowAnimation()V

    .line 113
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$1;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->doAfterShow()V

    .line 116
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$1;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    instance-of v1, v0, Lcn/codemao/android/sketch/xpopup/impl/FullScreenPopupView;

    if-nez v1, :cond_34

    .line 117
    invoke-virtual {v0}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->focusAndProcessBackPress()V

    :cond_34
    return-void
.end method
