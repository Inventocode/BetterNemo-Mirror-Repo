.class Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$1;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "PopupDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;


# direct methods
.method constructor <init>(Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;)V
    .registers 2

    .line 157
    iput-object p1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method private calcFraction(I)V
    .registers 6

    .line 186
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    iget-object v1, v0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->position:Lcom/nemo/commonui/xpopup/enums/PopupPosition;

    sget-object v2, Lcom/nemo/commonui/xpopup/enums/PopupPosition;->Left:Lcom/nemo/commonui/xpopup/enums/PopupPosition;

    const/high16 v3, 0x3f800000  # 1.0f

    if-ne v1, v2, :cond_45

    .line 187
    iget-object v1, v0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p1

    int-to-float v1, v1

    mul-float v1, v1, v3

    iget-object v2, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    iget-object v2, v2, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->fraction:F

    .line 188
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    neg-int v0, v0

    if-ne p1, v0, :cond_7e

    iget-object p1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    invoke-static {p1}, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->access$100(Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;)Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$OnCloseListener;

    move-result-object p1

    if-eqz p1, :cond_7e

    iget-object p1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    iget-object v0, p1, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->status:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    sget-object v1, Lcom/nemo/commonui/xpopup/enums/LayoutStatus;->Close:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    if-eq v0, v1, :cond_7e

    .line 189
    iput-object v1, p1, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->status:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    .line 190
    invoke-static {p1}, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->access$100(Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;)Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$OnCloseListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$OnCloseListener;->onClose()V

    goto :goto_7e

    .line 192
    :cond_45
    sget-object v2, Lcom/nemo/commonui/xpopup/enums/PopupPosition;->Right:Lcom/nemo/commonui/xpopup/enums/PopupPosition;

    if-ne v1, v2, :cond_7e

    .line 193
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, p1

    int-to-float v1, v1

    mul-float v1, v1, v3

    iget-object v2, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    iget-object v2, v2, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->fraction:F

    .line 194
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    if-ne p1, v0, :cond_7e

    iget-object p1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    invoke-static {p1}, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->access$100(Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;)Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$OnCloseListener;

    move-result-object p1

    if-eqz p1, :cond_7e

    iget-object p1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    iget-object v0, p1, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->status:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    sget-object v1, Lcom/nemo/commonui/xpopup/enums/LayoutStatus;->Close:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    if-eq v0, v1, :cond_7e

    .line 195
    iput-object v1, p1, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->status:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    .line 196
    invoke-static {p1}, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->access$100(Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;)Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$OnCloseListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$OnCloseListener;->onClose()V

    .line 199
    :cond_7e
    :goto_7e
    iget-object p1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    iget-boolean v0, p1, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->enableShadow:Z

    if-eqz v0, :cond_8f

    iget-object v0, p1, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->bgAnimator:Lcom/nemo/commonui/xpopup/animator/ShadowBgAnimator;

    iget v1, p1, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->fraction:F

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/animator/ShadowBgAnimator;->calculateBgColor(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 200
    :cond_8f
    iget-object p1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    invoke-static {p1}, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->access$100(Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;)Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$OnCloseListener;

    move-result-object p1

    if-eqz p1, :cond_bb

    .line 201
    iget-object p1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    invoke-static {p1}, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->access$100(Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;)Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$OnCloseListener;

    move-result-object p1

    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    iget v0, v0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->fraction:F

    invoke-interface {p1, v0}, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$OnCloseListener;->onDismissing(F)V

    .line 202
    iget-object p1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    iget v0, p1, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->fraction:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_bb

    iget-object v0, p1, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->status:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    sget-object v1, Lcom/nemo/commonui/xpopup/enums/LayoutStatus;->Open:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    if-eq v0, v1, :cond_bb

    .line 203
    iput-object v1, p1, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->status:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    .line 204
    invoke-static {p1}, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->access$100(Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;)Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$OnCloseListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$OnCloseListener;->onOpen()V

    :cond_bb
    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 5

    .line 168
    iget-object p3, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    iget-object v0, p3, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->placeHolder:Landroid/view/View;

    if-ne p1, v0, :cond_7

    return p2

    .line 169
    :cond_7
    invoke-static {p3, p2}, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->access$000(Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;I)I

    move-result p1

    return p1
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 6

    .line 173
    invoke-super/range {p0 .. p5}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 174
    iget-object p3, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    iget-object p3, p3, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->placeHolder:Landroid/view/View;

    if-ne p1, p3, :cond_46

    .line 175
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    iget-object p2, p2, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->placeHolder:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    const/4 p5, 0x0

    invoke-virtual {p3, p5, p5, p1, p2}, Landroid/view/View;->layout(IIII)V

    .line 176
    iget-object p1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    iget-object p2, p1, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    add-int/2addr p2, p4

    invoke-static {p1, p2}, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->access$000(Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;I)I

    move-result p1

    .line 177
    iget-object p2, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    iget-object p2, p2, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    iget-object p4, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    iget-object p4, p4, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p1

    iget-object p5, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    iget-object p5, p5, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getBottom()I

    move-result p5

    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 178
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$1;->calcFraction(I)V

    goto :goto_49

    .line 180
    :cond_46
    invoke-direct {p0, p2}, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$1;->calcFraction(I)V

    :goto_49
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 7

    .line 211
    invoke-super {p0, p1, p2, p3}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    .line 212
    iget-object p3, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    iget-object v0, p3, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->placeHolder:Landroid/view/View;

    if-ne p1, v0, :cond_12

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_12

    .line 213
    invoke-virtual {p3}, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->close()V

    return-void

    .line 216
    :cond_12
    iget-object v0, p3, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    if-ne p1, v0, :cond_28

    iget-boolean v1, p3, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->isToLeft:Z

    if-eqz v1, :cond_28

    iget-boolean v1, p3, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->canChildScrollLeft:Z

    if-nez v1, :cond_28

    const/high16 v1, -0x3c060000  # -500.0f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_28

    .line 217
    invoke-virtual {p3}, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->close()V

    return-void

    .line 223
    :cond_28
    iget-object v1, p3, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->position:Lcom/nemo/commonui/xpopup/enums/PopupPosition;

    sget-object v2, Lcom/nemo/commonui/xpopup/enums/PopupPosition;->Left:Lcom/nemo/commonui/xpopup/enums/PopupPosition;

    if-ne v1, v2, :cond_56

    const/high16 p3, -0x3b860000  # -1000.0f

    cmpg-float p2, p2, p3

    if-gez p2, :cond_3a

    .line 225
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    :goto_38
    neg-int p2, p2

    goto :goto_8c

    .line 227
    :cond_3a
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    neg-int p2, p2

    div-int/lit8 p2, p2, 0x2

    .line 228
    iget-object p3, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    iget-object p3, p3, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result p3

    if-ge p3, p2, :cond_54

    iget-object p2, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    iget-object p2, p2, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    goto :goto_38

    :cond_54
    const/4 p2, 0x0

    goto :goto_8c

    :cond_56
    const/high16 v0, 0x447a0000  # 1000.0f

    cmpl-float p2, p2, v0

    if-lez p2, :cond_61

    .line 232
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    goto :goto_8c

    .line 234
    :cond_61
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    iget-object p3, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    iget-object p3, p3, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, p3

    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p3

    if-ge p3, p2, :cond_86

    iget-object p2, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    iget-object p3, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    iget-object p3, p3, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p2, p3

    goto :goto_8c

    :cond_86
    iget-object p2, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    .line 238
    :goto_8c
    iget-object p3, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    iget-object v0, p3, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    iget-object p3, p3, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {v0, p3, p2, p1}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 239
    iget-object p1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .registers 3

    .line 160
    iget-object p1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$1;->this$0:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    iget-object p1, p1, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result p1

    xor-int/2addr p1, p2

    return p1
.end method
