.class Lcom/lxj/xpopup/impl/FullScreenPopupView$1;
.super Ljava/lang/Object;
.source "FullScreenPopupView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/impl/FullScreenPopupView;->doStatusBarColorTransform(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lxj/xpopup/impl/FullScreenPopupView;


# direct methods
.method constructor <init>(Lcom/lxj/xpopup/impl/FullScreenPopupView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/lxj/xpopup/impl/FullScreenPopupView$1;->this$0:Lcom/lxj/xpopup/impl/FullScreenPopupView;

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

    .line 85
    iget-object v0, p0, Lcom/lxj/xpopup/impl/FullScreenPopupView$1;->this$0:Lcom/lxj/xpopup/impl/FullScreenPopupView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/lxj/xpopup/impl/FullScreenPopupView;->currColor:I

    .line 86
    iget-object p1, p0, Lcom/lxj/xpopup/impl/FullScreenPopupView$1;->this$0:Lcom/lxj/xpopup/impl/FullScreenPopupView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->postInvalidate()V

    return-void
.end method
