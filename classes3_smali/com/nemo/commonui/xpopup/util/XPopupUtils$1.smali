.class Lcom/nemo/commonui/xpopup/util/XPopupUtils$1;
.super Ljava/lang/Object;
.source "XPopupUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemo/commonui/xpopup/util/XPopupUtils;->applyPopupSize(Landroid/view/ViewGroup;IILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$afterApplySize:Ljava/lang/Runnable;

.field final synthetic val$content:Landroid/view/ViewGroup;

.field final synthetic val$maxHeight:I

.field final synthetic val$maxWidth:I


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;IILjava/lang/Runnable;)V
    .registers 5

    .line 104
    iput-object p1, p0, Lcom/nemo/commonui/xpopup/util/XPopupUtils$1;->val$content:Landroid/view/ViewGroup;

    iput p2, p0, Lcom/nemo/commonui/xpopup/util/XPopupUtils$1;->val$maxWidth:I

    iput p3, p0, Lcom/nemo/commonui/xpopup/util/XPopupUtils$1;->val$maxHeight:I

    iput-object p4, p0, Lcom/nemo/commonui/xpopup/util/XPopupUtils$1;->val$afterApplySize:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 107
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/util/XPopupUtils$1;->val$content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/nemo/commonui/xpopup/util/XPopupUtils$1;->val$content:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 111
    iget-object v3, p0, Lcom/nemo/commonui/xpopup/util/XPopupUtils$1;->val$content:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    .line 113
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 116
    iget v4, p0, Lcom/nemo/commonui/xpopup/util/XPopupUtils$1;->val$maxWidth:I

    if-eqz v4, :cond_23

    .line 117
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 120
    :cond_23
    iget-object v3, p0, Lcom/nemo/commonui/xpopup/util/XPopupUtils$1;->val$content:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    .line 122
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3c

    .line 123
    iget-object v3, p0, Lcom/nemo/commonui/xpopup/util/XPopupUtils$1;->val$content:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    .line 124
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 126
    :cond_3c
    iget v4, p0, Lcom/nemo/commonui/xpopup/util/XPopupUtils$1;->val$maxHeight:I

    if-eqz v4, :cond_6e

    .line 128
    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, v5, :cond_5f

    iget-object v5, p0, Lcom/nemo/commonui/xpopup/util/XPopupUtils$1;->val$content:Landroid/view/ViewGroup;

    .line 129
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->getWindowHeight(Landroid/content/Context;)I

    move-result v5

    invoke-static {}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->getStatusBarHeight()I

    move-result v6

    add-int/2addr v5, v6

    if-ne v4, v5, :cond_56

    goto :goto_5f

    .line 133
    :cond_56
    iget v1, p0, Lcom/nemo/commonui/xpopup/util/XPopupUtils$1;->val$maxHeight:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_6e

    .line 130
    :cond_5f
    :goto_5f
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Lcom/nemo/commonui/xpopup/util/XPopupUtils$1;->val$maxHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 131
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    :cond_6e
    :goto_6e
    iget-object v1, p0, Lcom/nemo/commonui/xpopup/util/XPopupUtils$1;->val$content:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/util/XPopupUtils$1;->val$afterApplySize:Ljava/lang/Runnable;

    if-eqz v0, :cond_7a

    .line 139
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_7a
    return-void
.end method
