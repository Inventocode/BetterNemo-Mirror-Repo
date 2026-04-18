.class Lcn/codemao/android/sketch/xpopup/core/BasePopupView$2;
.super Ljava/lang/Object;
.source "BasePopupView.java"

# interfaces
.implements Lcn/codemao/android/sketch/xpopup/util/KeyboardUtils$OnSoftInputChangedListener;


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

    .line 186
    iput-object p1, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$2;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSoftInputChanged(I)V
    .registers 3

    if-nez p1, :cond_e

    .line 190
    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$2;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    invoke-static {p1}, Lcn/codemao/android/sketch/xpopup/util/XPopupUtils;->moveDown(Lcn/codemao/android/sketch/xpopup/core/BasePopupView;)V

    .line 191
    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$2;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->access$102(Lcn/codemao/android/sketch/xpopup/core/BasePopupView;Z)Z

    goto :goto_19

    .line 194
    :cond_e
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$2;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    invoke-static {p1, v0}, Lcn/codemao/android/sketch/xpopup/util/XPopupUtils;->moveUpToKeyboard(ILcn/codemao/android/sketch/xpopup/core/BasePopupView;)V

    .line 195
    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$2;->this$0:Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->access$102(Lcn/codemao/android/sketch/xpopup/core/BasePopupView;Z)Z

    :goto_19
    return-void
.end method
