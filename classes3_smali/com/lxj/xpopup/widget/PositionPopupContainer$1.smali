.class Lcom/lxj/xpopup/widget/PositionPopupContainer$1;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "PositionPopupContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lxj/xpopup/widget/PositionPopupContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lxj/xpopup/widget/PositionPopupContainer;


# direct methods
.method constructor <init>(Lcom/lxj/xpopup/widget/PositionPopupContainer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer$1;->this$0:Lcom/lxj/xpopup/widget/PositionPopupContainer;

    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "left",
            "dx"
        }
    .end annotation

    .line 119
    iget-object p1, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer$1;->this$0:Lcom/lxj/xpopup/widget/PositionPopupContainer;

    iget-object p1, p1, Lcom/lxj/xpopup/widget/PositionPopupContainer;->dragOrientation:Lcom/lxj/xpopup/enums/DragOrientation;

    sget-object v0, Lcom/lxj/xpopup/enums/DragOrientation;->DragToLeft:Lcom/lxj/xpopup/enums/DragOrientation;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_e

    if-gez p3, :cond_c

    goto :goto_d

    :cond_c
    const/4 p2, 0x0

    :goto_d
    return p2

    .line 122
    :cond_e
    sget-object v0, Lcom/lxj/xpopup/enums/DragOrientation;->DragToRight:Lcom/lxj/xpopup/enums/DragOrientation;

    if-ne p1, v0, :cond_15

    if-lez p3, :cond_15

    goto :goto_16

    :cond_15
    const/4 p2, 0x0

    :goto_16
    return p2
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "top",
            "dy"
        }
    .end annotation

    .line 111
    iget-object p1, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer$1;->this$0:Lcom/lxj/xpopup/widget/PositionPopupContainer;

    iget-object p1, p1, Lcom/lxj/xpopup/widget/PositionPopupContainer;->dragOrientation:Lcom/lxj/xpopup/enums/DragOrientation;

    sget-object v0, Lcom/lxj/xpopup/enums/DragOrientation;->DragToUp:Lcom/lxj/xpopup/enums/DragOrientation;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_e

    if-gez p3, :cond_c

    goto :goto_d

    :cond_c
    const/4 p2, 0x0

    :goto_d
    return p2

    .line 114
    :cond_e
    sget-object v0, Lcom/lxj/xpopup/enums/DragOrientation;->DragToBottom:Lcom/lxj/xpopup/enums/DragOrientation;

    if-ne p1, v0, :cond_15

    if-lez p3, :cond_15

    goto :goto_16

    :cond_15
    const/4 p2, 0x0

    :goto_16
    return p2
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    .line 106
    iget-object p1, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer$1;->this$0:Lcom/lxj/xpopup/widget/PositionPopupContainer;

    iget-object p1, p1, Lcom/lxj/xpopup/widget/PositionPopupContainer;->dragOrientation:Lcom/lxj/xpopup/enums/DragOrientation;

    sget-object v0, Lcom/lxj/xpopup/enums/DragOrientation;->DragToLeft:Lcom/lxj/xpopup/enums/DragOrientation;

    if-eq p1, v0, :cond_f

    sget-object v0, Lcom/lxj/xpopup/enums/DragOrientation;->DragToRight:Lcom/lxj/xpopup/enums/DragOrientation;

    if-ne p1, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    .line 101
    iget-object p1, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer$1;->this$0:Lcom/lxj/xpopup/widget/PositionPopupContainer;

    iget-object p1, p1, Lcom/lxj/xpopup/widget/PositionPopupContainer;->dragOrientation:Lcom/lxj/xpopup/enums/DragOrientation;

    sget-object v0, Lcom/lxj/xpopup/enums/DragOrientation;->DragToUp:Lcom/lxj/xpopup/enums/DragOrientation;

    if-eq p1, v0, :cond_f

    sget-object v0, Lcom/lxj/xpopup/enums/DragOrientation;->DragToBottom:Lcom/lxj/xpopup/enums/DragOrientation;

    if-ne p1, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "changedView",
            "left",
            "top",
            "dx",
            "dy"
        }
    .end annotation

    .line 127
    invoke-super/range {p0 .. p5}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "releasedChild",
            "xvel",
            "yvel"
        }
    .end annotation

    .line 132
    invoke-super {p0, p1, p2, p3}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer$1;->this$0:Lcom/lxj/xpopup/widget/PositionPopupContainer;

    iget p3, p3, Lcom/lxj/xpopup/widget/PositionPopupContainer;->dragRatio:F

    mul-float p2, p2, p3

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    int-to-float p3, p3

    iget-object v0, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer$1;->this$0:Lcom/lxj/xpopup/widget/PositionPopupContainer;

    iget v1, v0, Lcom/lxj/xpopup/widget/PositionPopupContainer;->dragRatio:F

    mul-float p3, p3, v1

    .line 135
    iget-object v0, v0, Lcom/lxj/xpopup/widget/PositionPopupContainer;->dragOrientation:Lcom/lxj/xpopup/enums/DragOrientation;

    sget-object v1, Lcom/lxj/xpopup/enums/DragOrientation;->DragToLeft:Lcom/lxj/xpopup/enums/DragOrientation;

    if-ne v0, v1, :cond_29

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    neg-float v1, p2

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_69

    :cond_29
    iget-object v0, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer$1;->this$0:Lcom/lxj/xpopup/widget/PositionPopupContainer;

    iget-object v0, v0, Lcom/lxj/xpopup/widget/PositionPopupContainer;->dragOrientation:Lcom/lxj/xpopup/enums/DragOrientation;

    sget-object v1, Lcom/lxj/xpopup/enums/DragOrientation;->DragToRight:Lcom/lxj/xpopup/enums/DragOrientation;

    if-ne v0, v1, :cond_40

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p2

    cmpl-float p2, v0, v1

    if-gtz p2, :cond_69

    :cond_40
    iget-object p2, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer$1;->this$0:Lcom/lxj/xpopup/widget/PositionPopupContainer;

    iget-object p2, p2, Lcom/lxj/xpopup/widget/PositionPopupContainer;->dragOrientation:Lcom/lxj/xpopup/enums/DragOrientation;

    sget-object v0, Lcom/lxj/xpopup/enums/DragOrientation;->DragToUp:Lcom/lxj/xpopup/enums/DragOrientation;

    if-ne p2, v0, :cond_52

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    int-to-float p2, p2

    neg-float v0, p3

    cmpg-float p2, p2, v0

    if-ltz p2, :cond_69

    :cond_52
    iget-object p2, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer$1;->this$0:Lcom/lxj/xpopup/widget/PositionPopupContainer;

    iget-object p2, p2, Lcom/lxj/xpopup/widget/PositionPopupContainer;->dragOrientation:Lcom/lxj/xpopup/enums/DragOrientation;

    sget-object v0, Lcom/lxj/xpopup/enums/DragOrientation;->DragToBottom:Lcom/lxj/xpopup/enums/DragOrientation;

    if-ne p2, v0, :cond_73

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpl-float p2, p2, v0

    if-lez p2, :cond_73

    .line 139
    :cond_69
    iget-object p1, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer$1;->this$0:Lcom/lxj/xpopup/widget/PositionPopupContainer;

    invoke-static {p1}, Lcom/lxj/xpopup/widget/PositionPopupContainer;->access$000(Lcom/lxj/xpopup/widget/PositionPopupContainer;)Lcom/lxj/xpopup/widget/PositionPopupContainer$OnPositionDragListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/lxj/xpopup/widget/PositionPopupContainer$OnPositionDragListener;->onDismiss()V

    goto :goto_82

    .line 141
    :cond_73
    iget-object p2, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer$1;->this$0:Lcom/lxj/xpopup/widget/PositionPopupContainer;

    invoke-static {p2}, Lcom/lxj/xpopup/widget/PositionPopupContainer;->access$100(Lcom/lxj/xpopup/widget/PositionPopupContainer;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p3}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 142
    iget-object p1, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer$1;->this$0:Lcom/lxj/xpopup/widget/PositionPopupContainer;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :goto_82
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "i"
        }
    .end annotation

    .line 96
    iget-object p2, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer$1;->this$0:Lcom/lxj/xpopup/widget/PositionPopupContainer;

    iget-object v0, p2, Lcom/lxj/xpopup/widget/PositionPopupContainer;->child:Landroid/view/View;

    if-ne p1, v0, :cond_c

    iget-boolean p1, p2, Lcom/lxj/xpopup/widget/PositionPopupContainer;->enableDrag:Z

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method
