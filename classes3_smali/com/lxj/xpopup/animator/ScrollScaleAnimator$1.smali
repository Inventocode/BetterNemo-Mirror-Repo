.class Lcom/lxj/xpopup/animator/ScrollScaleAnimator$1;
.super Ljava/lang/Object;
.source "ScrollScaleAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->initAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lxj/xpopup/animator/ScrollScaleAnimator;


# direct methods
.method constructor <init>(Lcom/lxj/xpopup/animator/ScrollScaleAnimator;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator$1;->this$0:Lcom/lxj/xpopup/animator/ScrollScaleAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 32
    iget-object v0, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator$1;->this$0:Lcom/lxj/xpopup/animator/ScrollScaleAnimator;

    invoke-static {v0}, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->access$000(Lcom/lxj/xpopup/animator/ScrollScaleAnimator;)V

    .line 33
    iget-object v0, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator$1;->this$0:Lcom/lxj/xpopup/animator/ScrollScaleAnimator;

    iget-object v1, v0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-static {v0}, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->access$100(Lcom/lxj/xpopup/animator/ScrollScaleAnimator;)I

    move-result v0

    iget-object v2, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator$1;->this$0:Lcom/lxj/xpopup/animator/ScrollScaleAnimator;

    invoke-static {v2}, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->access$200(Lcom/lxj/xpopup/animator/ScrollScaleAnimator;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method
