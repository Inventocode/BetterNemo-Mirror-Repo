.class Lcom/lxj/xpopup/core/DrawerPopupView$3;
.super Ljava/lang/Object;
.source "DrawerPopupView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/core/DrawerPopupView;->doStatusBarColorTransform(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lxj/xpopup/core/DrawerPopupView;


# direct methods
.method constructor <init>(Lcom/lxj/xpopup/core/DrawerPopupView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcom/lxj/xpopup/core/DrawerPopupView$3;->this$0:Lcom/lxj/xpopup/core/DrawerPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/lxj/xpopup/core/DrawerPopupView$3;->this$0:Lcom/lxj/xpopup/core/DrawerPopupView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/lxj/xpopup/core/DrawerPopupView;->currColor:I

    .line 142
    iget-object p1, p0, Lcom/lxj/xpopup/core/DrawerPopupView$3;->this$0:Lcom/lxj/xpopup/core/DrawerPopupView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->postInvalidate()V

    return-void
.end method
