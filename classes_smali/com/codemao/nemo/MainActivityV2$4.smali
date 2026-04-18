.class Lcom/codemao/nemo/MainActivityV2$4;
.super Ljava/lang/Object;
.source "MainActivityV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/MainActivityV2;->afterCheckPolicy(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/MainActivityV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/MainActivityV2;)V
    .registers 2

    .line 476
    iput-object p1, p0, Lcom/codemao/nemo/MainActivityV2$4;->this$0:Lcom/codemao/nemo/MainActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 479
    new-instance v0, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    iget-object v1, p0, Lcom/codemao/nemo/MainActivityV2$4;->this$0:Lcom/codemao/nemo/MainActivityV2;

    invoke-direct {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->NoAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    .line 480
    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 481
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    new-instance v2, Lcom/codemao/nemo/MainActivityV2$4$1;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/MainActivityV2$4$1;-><init>(Lcom/codemao/nemo/MainActivityV2$4;)V

    .line 482
    invoke-virtual {v0, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->setPopupCallback(Lcom/nemo/commonui/xpopup/interfaces/XPopupCallback;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 489
    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/dialog/pop/UserAgreementDialog;

    iget-object v2, p0, Lcom/codemao/nemo/MainActivityV2$4;->this$0:Lcom/codemao/nemo/MainActivityV2;

    invoke-direct {v1, v2}, Lcom/codemao/nemo/dialog/pop/UserAgreementDialog;-><init>(Landroid/content/Context;)V

    .line 490
    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    .line 491
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method
