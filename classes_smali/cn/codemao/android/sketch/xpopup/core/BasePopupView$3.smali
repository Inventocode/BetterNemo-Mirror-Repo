.class Lcn/codemao/android/sketch/xpopup/core/BasePopupView$3;
.super Ljava/lang/Object;
.source "BasePopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->show()Lcn/codemao/android/sketch/xpopup/core/BasePopupView;
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

    .line 200
    iput-object p1, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$3;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 203
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$3;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 204
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$3;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$3;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 206
    :cond_15
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$3;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    iget-object v1, v0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->popupInfo:Lcn/codemao/android/sketch/xpopup/core/PopupInfo;

    iget-object v1, v1, Lcn/codemao/android/sketch/xpopup/core/PopupInfo;->decorView:Landroid/view/ViewGroup;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$3;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->init()V

    return-void
.end method
