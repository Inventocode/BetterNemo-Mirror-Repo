.class Lcom/lxj/xpopup/widget/PopupDrawerLayout$1;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "PopupDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lxj/xpopup/widget/PopupDrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lxj/xpopup/widget/PopupDrawerLayout;


# direct methods
.method constructor <init>(Lcom/lxj/xpopup/widget/PopupDrawerLayout;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lcom/lxj/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method private calcFraction(II)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "dx"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/lxj/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    iget-object v1, v0, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->position:Lcom/lxj/xpopup/enums/PopupPosition;

    sget-object v2, Lcom/lxj/xpopup/enums/PopupPosition;->Left:Lcom/lxj/xpopup/enums/PopupPosition;

    const/high16 v3, 0x3f800000  # 1.0f

    if-ne v1, v2, :cond_45

    .line 216
    iget-object v1, v0, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p1

    int-to-float v1, v1

    mul-float v1, v1, v3

    iget-object v2, p0, Lcom/lxj/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    iget-object v2, v2, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->fraction:F

    .line 217
    iget-object v0, p0, Lcom/lxj/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    iget-object v0, v0, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    neg-int v0, v0

    if-ne p1, v0, :cond_7e

    iget-object v0, p0, Lcom/lxj/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    invoke-static {v0}, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->access$100(Lcom/lxj/xpopup/widget/PopupDrawerLayout;)Lcom/lxj/xpopup/widget/PopupDrawerLayout$OnCloseListener;

    move-result-object v0

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/lxj/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    iget-object v1, v0, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->status:Lcom/lxj/xpopup/enums/LayoutStatus;

    sget-object v2, Lcom/lxj/xpopup/enums/LayoutStatus;->Close:Lcom/lxj/xpopup/enums/LayoutStatus;

    if-eq v1, v2, :cond_7e

    .line 218
    iput-object v2, v0, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->status:Lcom/lxj/xpopup/enums/LayoutStatus;

    .line 219
    invoke-static {v0}, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->access$100(Lcom/lxj/xpopup/widget/PopupDrawerLayout;)Lcom/lxj/xpopup/widget/PopupDrawerLayout$OnCloseListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lxj/xpopup/widget/PopupDrawerLayout$OnCloseListener;->onClose()V

    goto :goto_7e

    .line 221
    :cond_45
    sget-object v2, Lcom/lxj/xpopup/enums/PopupPosition;->Right:Lcom/lxj/xpopup/enums/PopupPosition;

    if-ne v1, v2, :cond_7e

    .line 222
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, p1

    int-to-float v1, v1

    mul-float v1, v1, v3

    iget-object v2, p0, Lcom/lxj/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    iget-object v2, v2, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->fraction:F

    .line 223
    iget-object v0, p0, Lcom/lxj/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    if-ne p1, v0, :cond_7e

    iget-object v0, p0, Lcom/lxj/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    invoke-static {v0}, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->access$100(Lcom/lxj/xpopup/widget/PopupDrawerLayout;)Lcom/lxj/xpopup/widget/PopupDrawerLayout$OnCloseListener;

    move-result-object v0

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/lxj/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    iget-object v1, v0, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->status:Lcom/lxj/xpopup/enums/LayoutStatus;

    sget-object v2, Lcom/lxj/xpopup/enums/LayoutStatus;->Close:Lcom/lxj/xpopup/enums/LayoutStatus;

    if-eq v1, v2, :cond_7e

    .line 224
    iput-object v2, v0, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->status:Lcom/lxj/xpopup/enums/LayoutStatus;

    .line 225
    invoke-static {v0}, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->access$100(Lcom/lxj/xpopup/widget/PopupDrawerLayout;)Lcom/lxj/xpopup/widget/PopupDrawerLayout$OnCloseListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lxj/xpopup/widget/PopupDrawerLayout$OnCloseListener;->onClose()V

    .line 228
    :cond_7e
    :goto_7e
    iget-object v0, p0, Lcom/lxj/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    invoke-static {v0}, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->access$100(Lcom/lxj/xpopup/widget/PopupDrawerLayout;)Lcom/lxj/xpopup/widget/PopupDrawerLayout$OnCloseListener;

    move-result-object v0

    if-eqz v0, :cond_af

    .line 229
    iget-object v0, p0, Lcom/lxj/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    invoke-static {v0}, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->access$100(Lcom/lxj/xpopup/widget/PopupDrawerLayout;)Lcom/lxj/xpopup/widget/PopupDrawerLayout$OnCloseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    iget v1, v1, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->fraction:F

    if-gez p2, :cond_94

    const/4 p2, 0x1

    goto :goto_95

    :cond_94
    const/4 p2, 0x0

    :goto_95
    invoke-interface {v0, p1, v1, p2}, Lcom/lxj/xpopup/widget/PopupDrawerLayout$OnCloseListener;->onDrag(IFZ)V

    .line 230
    iget-object p1, p0, Lcom/lxj/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    iget p2, p1, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->fraction:F

    cmpl-float p2, p2, v3

    if-nez p2, :cond_af

    iget-object p2, p1, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->status:Lcom/lxj/xpopup/enums/LayoutStatus;

    sget-object v0, Lcom/lxj/xpopup/enums/LayoutStatus;->Open:Lcom/lxj/xpopup/enums/LayoutStatus;

    if-eq p2, v0, :cond_af

    .line 231
    iput-object v0, p1, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->status:Lcom/lxj/xpopup/enums/LayoutStatus;

    .line 232
    invoke-static {p1}, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->access$100(Lcom/lxj/xpopup/widget/PopupDrawerLayout;)Lcom/lxj/xpopup/widget/PopupDrawerLayout$OnCloseListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/lxj/xpopup/widget/PopupDrawerLayout$OnCloseListener;->onOpen()V

    :cond_af
    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 5
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

    .line 196
    iget-object p3, p0, Lcom/lxj/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    iget-object v0, p3, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->placeHolder:Landroid/view/View;

    if-ne p1, v0, :cond_7

    return p2

    .line 197
    :cond_7
    invoke-static {p3, p2}, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->access$000(Lcom/lxj/xpopup/widget/PopupDrawerLayout;I)I

    move-result p1

    return p1
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 7
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

    .line 202
    invoke-super/range {p0 .. p5}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 203
    iget-object p3, p0, Lcom/lxj/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    iget-object p3, p3, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->placeHolder:Landroid/view/View;

    if-ne p1, p3, :cond_46

    .line 204
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcom/lxj/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    iget-object p2, p2, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->placeHolder:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    const/4 p5, 0x0

    invoke-virtual {p3, p5, p5, p1, p2}, Landroid/view/View;->layout(IIII)V

    .line 205
    iget-object p1, p0, Lcom/lxj/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    iget-object p2, p1, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    add-int/2addr p2, p4

    invoke-static {p1, p2}, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->access$000(Lcom/lxj/xpopup/widget/PopupDrawerLayout;I)I

    move-result p1

    .line 206
    iget-object p2, p0, Lcom/lxj/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    iget-object p2, p2, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    iget-object p5, p0, Lcom/lxj/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    iget-object p5, p5, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p5, p1

    iget-object v0, p0, Lcom/lxj/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    iget-object v0, v0, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p2, p1, p3, p5, v0}, Landroid/view/View;->layout(IIII)V

    .line 207
    invoke-direct {p0, p1, p4}, Lcom/lxj/xpopup/widget/PopupDrawerLayout$1;->calcFraction(II)V

    goto :goto_49

    .line 209
    :cond_46
    invoke-direct {p0, p2, p4}, Lcom/lxj/xpopup/widget/PopupDrawerLayout$1;->calcFraction(II)V

    :goto_49
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 7
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

    .line 239
    invoke-super {p0, p1, p2, p3}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    .line 240
    iget-object p3, p0, Lcom/lxj/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    iget-object v0, p3, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->placeHolder:Landroid/view/View;

    if-ne p1, v0, :cond_16

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_16

    .line 241
    iget-boolean p1, p3, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->isDismissOnTouchOutside:Z

    if-eqz p1, :cond_15

    invoke-virtual {p3}, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->close()V

    :cond_15
    return-void

    .line 244
    :cond_16
    iget-object v0, p3, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    if-ne p1, v0, :cond_2c

    iget-boolean v1, p3, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->isToLeft:Z

    if-eqz v1, :cond_2c

    iget-boolean v1, p3, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->canChildScrollLeft:Z

    if-nez v1, :cond_2c

    const/high16 v1, -0x3c060000  # -500.0f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_2c

    .line 245
    invoke-virtual {p3}, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->close()V

    return-void

    .line 251
    :cond_2c
    iget-object v1, p3, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->position:Lcom/lxj/xpopup/enums/PopupPosition;

    sget-object v2, Lcom/lxj/xpopup/enums/PopupPosition;->Left:Lcom/lxj/xpopup/enums/PopupPosition;

    if-ne v1, v2, :cond_5a

    const/high16 p3, -0x3b860000  # -1000.0f

    cmpg-float p2, p2, p3

    if-gez p2, :cond_3e

    .line 253
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    :goto_3c
    neg-int p2, p2

    goto :goto_90

    .line 255
    :cond_3e
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    neg-int p2, p2

    div-int/lit8 p2, p2, 0x2

    .line 256
    iget-object p3, p0, Lcom/lxj/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    iget-object p3, p3, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result p3

    if-ge p3, p2, :cond_58

    iget-object p2, p0, Lcom/lxj/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    iget-object p2, p2, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    goto :goto_3c

    :cond_58
    const/4 p2, 0x0

    goto :goto_90

    :cond_5a
    const/high16 v0, 0x447a0000  # 1000.0f

    cmpl-float p2, p2, v0

    if-lez p2, :cond_65

    .line 260
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    goto :goto_90

    .line 262
    :cond_65
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    iget-object p3, p0, Lcom/lxj/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    iget-object p3, p3, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, p3

    .line 263
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p3

    if-ge p3, p2, :cond_8a

    iget-object p2, p0, Lcom/lxj/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    iget-object p3, p0, Lcom/lxj/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    iget-object p3, p3, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p2, p3

    goto :goto_90

    :cond_8a
    iget-object p2, p0, Lcom/lxj/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    .line 266
    :goto_90
    iget-object p3, p0, Lcom/lxj/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    iget-object v0, p3, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    iget-object p3, p3, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {v0, p3, p2, p1}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 267
    iget-object p1, p0, Lcom/lxj/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

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

    .line 187
    iget-object p1, p0, Lcom/lxj/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    iget-boolean p2, p1, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->enableDrag:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_18

    iget-object p1, p1, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p1, v0}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result p1

    if-nez p1, :cond_18

    iget-object p1, p0, Lcom/lxj/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    iget-object p1, p1, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->status:Lcom/lxj/xpopup/enums/LayoutStatus;

    sget-object p2, Lcom/lxj/xpopup/enums/LayoutStatus;->Close:Lcom/lxj/xpopup/enums/LayoutStatus;

    if-eq p1, p2, :cond_18

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method
