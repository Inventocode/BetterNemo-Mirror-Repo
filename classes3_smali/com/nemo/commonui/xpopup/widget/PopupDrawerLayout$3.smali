.class Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$3;
.super Ljava/lang/Object;
.source "PopupDrawerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->close()V
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

    .line 307
    iput-object p1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$3;->this$0:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 310
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$3;->this$0:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    iget-object v1, v0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    iget-object v2, v0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    iget-object v3, v0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->position:Lcom/nemo/commonui/xpopup/enums/PopupPosition;

    sget-object v4, Lcom/nemo/commonui/xpopup/enums/PopupPosition;->Left:Lcom/nemo/commonui/xpopup/enums/PopupPosition;

    if-ne v3, v4, :cond_12

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    neg-int v0, v0

    goto :goto_16

    :cond_12
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    :goto_16
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 311
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$3;->this$0:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method
