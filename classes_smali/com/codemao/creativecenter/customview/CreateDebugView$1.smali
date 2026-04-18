.class Lcom/codemao/creativecenter/customview/CreateDebugView$1;
.super Ljava/lang/Object;
.source "CreateDebugView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/CreateDebugView;->setBlur(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

.field final synthetic val$isVisible:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/CreateDebugView;Landroid/view/View;Z)V
    .registers 4

    .line 151
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$1;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    iput-object p2, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$1;->val$view:Landroid/view/View;

    iput-boolean p3, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$1;->val$isVisible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 154
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$1;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$000(Lcom/codemao/creativecenter/customview/CreateDebugView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d2

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$1;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$000(Lcom/codemao/creativecenter/customview/CreateDebugView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_d2

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$1;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$000(Lcom/codemao/creativecenter/customview/CreateDebugView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_d2

    .line 158
    :cond_22
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$1;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 159
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$1;->val$view:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 160
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    .line 161
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_d1

    .line 162
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_4b

    goto/16 :goto_d1

    .line 165
    :cond_4b
    iget-boolean v2, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$1;->val$isVisible:Z

    if-nez v2, :cond_58

    .line 166
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$1;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {v2}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$100(Lcom/codemao/creativecenter/customview/CreateDebugView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v2}, Lcom/codemao/creativecenter/utils/CreativeImageUtils;->recycleImageBitmap(Landroid/widget/ImageView;)V

    .line 172
    :cond_58
    :try_start_58
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$1;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {v2}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$000(Lcom/codemao/creativecenter/customview/CreateDebugView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$1;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {v3}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$000(Lcom/codemao/creativecenter/customview/CreateDebugView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v0, v1, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eq v2, v0, :cond_75

    .line 174
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 176
    :cond_75
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 177
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$1;->val$isVisible:Z

    if-eqz v0, :cond_88

    .line 178
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$1;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$100(Lcom/codemao/creativecenter/customview/CreateDebugView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 179
    :cond_88
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_8f

    return-void

    :cond_8f
    const/16 v0, 0x19

    .line 182
    iget-object v3, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$1;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {v3}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$100(Lcom/codemao/creativecenter/customview/CreateDebugView;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$1;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v0, v3, v4}, Lcom/codemao/creativecenter/utils/CreativeImageUtils;->blurByRenderScript(Landroid/graphics/Bitmap;ILandroid/widget/ImageView;Landroid/content/Context;)V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_a0} :catch_a1

    goto :goto_a5

    :catch_a1
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 188
    :goto_a5
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 190
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$1;->val$isVisible:Z

    if-nez v0, :cond_af

    return-void

    .line 192
    :cond_af
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$1;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$100(Lcom/codemao/creativecenter/customview/CreateDebugView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    .line 193
    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    const-wide/16 v2, 0x96

    .line 194
    invoke-virtual {v1, v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    new-instance v2, Lcom/codemao/creativecenter/customview/CreateDebugView$1$1;

    invoke-direct {v2, p0, v0}, Lcom/codemao/creativecenter/customview/CreateDebugView$1$1;-><init>(Lcom/codemao/creativecenter/customview/CreateDebugView$1;Landroidx/core/view/ViewPropertyAnimatorCompat;)V

    .line 195
    invoke-virtual {v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    :cond_d1
    :goto_d1
    return-void

    .line 155
    :cond_d2
    :goto_d2
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$1;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$100(Lcom/codemao/creativecenter/customview/CreateDebugView;)Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "#FF221D4E"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    return-void
.end method
