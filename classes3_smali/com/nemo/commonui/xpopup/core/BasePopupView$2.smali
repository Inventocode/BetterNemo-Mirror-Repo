.class Lcom/nemo/commonui/xpopup/core/BasePopupView$2;
.super Ljava/lang/Object;
.source "BasePopupView.java"

# interfaces
.implements Lcom/nemo/commonui/xpopup/util/KeyboardUtils$OnSoftInputChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;
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

    .line 189
    iput-object p1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView$2;->this$0:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSoftInputChanged(I)V
    .registers 3

    if-nez p1, :cond_e

    .line 193
    iget-object p1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView$2;->this$0:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    invoke-static {p1}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->moveDown(Lcom/nemo/commonui/xpopup/core/BasePopupView;)V

    .line 194
    iget-object p1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView$2;->this$0:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->access$102(Lcom/nemo/commonui/xpopup/core/BasePopupView;Z)Z

    goto :goto_19

    .line 197
    :cond_e
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView$2;->this$0:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    invoke-static {p1, v0}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->moveUpToKeyboard(ILcom/nemo/commonui/xpopup/core/BasePopupView;)V

    .line 198
    iget-object p1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView$2;->this$0:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->access$102(Lcom/nemo/commonui/xpopup/core/BasePopupView;Z)Z

    :goto_19
    return-void
.end method
