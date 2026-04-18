.class Lcom/lxj/xpopup/animator/ScaleAlphaAnimator$1;
.super Ljava/lang/Object;
.source "ScaleAlphaAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/animator/ScaleAlphaAnimator;->initAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lxj/xpopup/animator/ScaleAlphaAnimator;


# direct methods
.method constructor <init>(Lcom/lxj/xpopup/animator/ScaleAlphaAnimator;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/lxj/xpopup/animator/ScaleAlphaAnimator$1;->this$0:Lcom/lxj/xpopup/animator/ScaleAlphaAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/lxj/xpopup/animator/ScaleAlphaAnimator$1;->this$0:Lcom/lxj/xpopup/animator/ScaleAlphaAnimator;

    invoke-static {v0}, Lcom/lxj/xpopup/animator/ScaleAlphaAnimator;->access$000(Lcom/lxj/xpopup/animator/ScaleAlphaAnimator;)V

    return-void
.end method
