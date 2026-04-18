.class Lcom/lxj/xpopup/impl/PartShadowPopupView$3;
.super Ljava/lang/Object;
.source "PartShadowPopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/impl/PartShadowPopupView;->doAttach()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lxj/xpopup/impl/PartShadowPopupView;


# direct methods
.method constructor <init>(Lcom/lxj/xpopup/impl/PartShadowPopupView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/lxj/xpopup/impl/PartShadowPopupView$3;->this$0:Lcom/lxj/xpopup/impl/PartShadowPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/lxj/xpopup/impl/PartShadowPopupView$3;->this$0:Lcom/lxj/xpopup/impl/PartShadowPopupView;

    invoke-static {v0}, Lcom/lxj/xpopup/impl/PartShadowPopupView;->access$000(Lcom/lxj/xpopup/impl/PartShadowPopupView;)V

    .line 125
    iget-object v0, p0, Lcom/lxj/xpopup/impl/PartShadowPopupView$3;->this$0:Lcom/lxj/xpopup/impl/PartShadowPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
