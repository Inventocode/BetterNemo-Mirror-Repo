.class Lcom/nemo/commonui/xpopup/core/BasePopupView$4;
.super Ljava/lang/Object;
.source "BasePopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemo/commonui/xpopup/core/BasePopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemo/commonui/xpopup/core/BasePopupView;


# direct methods
.method constructor <init>(Lcom/nemo/commonui/xpopup/core/BasePopupView;)V
    .registers 2

    .line 235
    iput-object p1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView$4;->this$0:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 238
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView$4;->this$0:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupStatus;->Show:Lcom/nemo/commonui/xpopup/enums/PopupStatus;

    iput-object v1, v0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupStatus:Lcom/nemo/commonui/xpopup/enums/PopupStatus;

    .line 239
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onShow()V

    .line 240
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView$4;->this$0:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    instance-of v1, v0, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->focusAndProcessBackPress()V

    .line 241
    :cond_12
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView$4;->this$0:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    if-eqz v0, :cond_1f

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->xPopupCallback:Lcom/nemo/commonui/xpopup/interfaces/XPopupCallback;

    if-eqz v0, :cond_1f

    .line 242
    invoke-interface {v0}, Lcom/nemo/commonui/xpopup/interfaces/XPopupCallback;->onShow()V

    .line 243
    :cond_1f
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView$4;->this$0:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->getDecorViewInvisibleHeight(Landroid/app/Activity;)I

    move-result v0

    if-lez v0, :cond_46

    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView$4;->this$0:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    invoke-static {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->access$100(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 244
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView$4;->this$0:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->getDecorViewInvisibleHeight(Landroid/app/Activity;)I

    move-result v0

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView$4;->this$0:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    invoke-static {v0, v1}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->moveUpToKeyboard(ILcom/nemo/commonui/xpopup/core/BasePopupView;)V

    :cond_46
    return-void
.end method
