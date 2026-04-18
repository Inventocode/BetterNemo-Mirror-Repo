.class Lcom/lxj/xpopup/widget/PopupDrawerLayout$2;
.super Ljava/lang/Object;
.source "PopupDrawerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/widget/PopupDrawerLayout;->open()V
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

    .line 304
    iput-object p1, p0, Lcom/lxj/xpopup/widget/PopupDrawerLayout$2;->this$0:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 307
    iget-object v0, p0, Lcom/lxj/xpopup/widget/PopupDrawerLayout$2;->this$0:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    iget-object v1, v0, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    iget-object v2, v0, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    iget-object v0, v0, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->position:Lcom/lxj/xpopup/enums/PopupPosition;

    sget-object v3, Lcom/lxj/xpopup/enums/PopupPosition;->Left:Lcom/lxj/xpopup/enums/PopupPosition;

    const/4 v4, 0x0

    if-ne v0, v3, :cond_f

    const/4 v0, 0x0

    goto :goto_1c

    :cond_f
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v3, p0, Lcom/lxj/xpopup/widget/PopupDrawerLayout$2;->this$0:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    iget-object v3, v3, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v0, v3

    :goto_1c
    invoke-virtual {v1, v2, v0, v4}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 308
    iget-object v0, p0, Lcom/lxj/xpopup/widget/PopupDrawerLayout$2;->this$0:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method
