.class Lcom/lxj/xpopup/core/BasePopupView$2$1;
.super Ljava/lang/Object;
.source "BasePopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/core/BasePopupView$2;->onSoftInputChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lxj/xpopup/core/BasePopupView$2;


# direct methods
.method constructor <init>(Lcom/lxj/xpopup/core/BasePopupView$2;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/lxj/xpopup/core/BasePopupView$2$1;->this$1:Lcom/lxj/xpopup/core/BasePopupView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView$2$1;->this$1:Lcom/lxj/xpopup/core/BasePopupView$2;

    iget-object v0, v0, Lcom/lxj/xpopup/core/BasePopupView$2;->this$0:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-static {v0}, Lcom/lxj/xpopup/util/XPopupUtils;->moveDown(Lcom/lxj/xpopup/core/BasePopupView;)V

    return-void
.end method
