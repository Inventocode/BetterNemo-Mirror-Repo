.class Lcn/codemao/android/sketch/xpopup/core/BasePopupView$ShowSoftInputTask;
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
    name = "ShowSoftInputTask"
.end annotation


# instance fields
.field focusView:Landroid/view/View;

.field isDone:Z


# direct methods
.method public constructor <init>(Lcn/codemao/android/sketch/xpopup/core/BasePopupView;Landroid/view/View;)V
    .registers 3

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 282
    iput-boolean p1, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$ShowSoftInputTask;->isDone:Z

    .line 285
    iput-object p2, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$ShowSoftInputTask;->focusView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 290
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$ShowSoftInputTask;->focusView:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-boolean v1, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$ShowSoftInputTask;->isDone:Z

    if-nez v1, :cond_e

    const/4 v1, 0x1

    .line 291
    iput-boolean v1, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView$ShowSoftInputTask;->isDone:Z

    .line 292
    invoke-static {v0}, Lcn/codemao/android/sketch/xpopup/util/KeyboardUtils;->showSoftInput(Landroid/view/View;)V

    :cond_e
    return-void
.end method
