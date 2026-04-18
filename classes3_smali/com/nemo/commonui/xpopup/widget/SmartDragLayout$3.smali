.class Lcom/nemo/commonui/xpopup/widget/SmartDragLayout$3;
.super Ljava/lang/Object;
.source "SmartDragLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->smoothScroll(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;

.field final synthetic val$dy:I


# direct methods
.method constructor <init>(Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;I)V
    .registers 3

    .line 235
    iput-object p1, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout$3;->this$0:Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;

    iput p2, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout$3;->val$dy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 238
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout$3;->this$0:Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;

    iget-object v1, v0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v2

    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout$3;->this$0:Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v3

    iget v5, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout$3;->val$dy:I

    invoke-static {}, Lcom/nemo/commonui/xpopup/XPopup;->getAnimationDuration()I

    move-result v6

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 239
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout$3;->this$0:Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method
