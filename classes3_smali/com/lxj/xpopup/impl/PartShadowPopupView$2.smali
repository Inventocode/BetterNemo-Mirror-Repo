.class Lcom/lxj/xpopup/impl/PartShadowPopupView$2;
.super Ljava/lang/Object;
.source "PartShadowPopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/impl/PartShadowPopupView;->doMeasure()V
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

    .line 66
    iput-object p1, p0, Lcom/lxj/xpopup/impl/PartShadowPopupView$2;->this$0:Lcom/lxj/xpopup/impl/PartShadowPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/lxj/xpopup/impl/PartShadowPopupView$2;->this$0:Lcom/lxj/xpopup/impl/PartShadowPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/impl/PartShadowPopupView;->doAttach()V

    return-void
.end method
