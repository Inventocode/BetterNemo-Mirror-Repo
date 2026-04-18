.class public final Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView$reboundDstBitmapRectAnimate$2;
.super Ljava/lang/Object;
.source "ManualCutOutView.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->reboundDstBitmapRectAnimate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $offsetX:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $offsetY:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $preDstBitmapRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;Landroid/graphics/Rect;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V
    .registers 5

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView$reboundDstBitmapRectAnimate$2;->this$0:Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;

    iput-object p2, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView$reboundDstBitmapRectAnimate$2;->$preDstBitmapRect:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView$reboundDstBitmapRectAnimate$2;->$offsetX:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p4, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView$reboundDstBitmapRectAnimate$2;->$offsetY:Lkotlin/jvm/internal/Ref$IntRef;

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView$reboundDstBitmapRectAnimate$2;->this$0:Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->access$getDstBitmapRect$p(Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView$reboundDstBitmapRectAnimate$2;->$preDstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 314
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView$reboundDstBitmapRectAnimate$2;->this$0:Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->access$getDstBitmapRect$p(Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView$reboundDstBitmapRectAnimate$2;->$offsetX:Lkotlin/jvm/internal/Ref$IntRef;

    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView$reboundDstBitmapRectAnimate$2;->$offsetY:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 315
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView$reboundDstBitmapRectAnimate$2;->this$0:Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView$reboundDstBitmapRectAnimate$2;->this$0:Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->access$getDstBitmapRect$p(Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView$reboundDstBitmapRectAnimate$2;->$preDstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 308
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView$reboundDstBitmapRectAnimate$2;->this$0:Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;

    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->access$getDstBitmapRect$p(Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView$reboundDstBitmapRectAnimate$2;->$offsetX:Lkotlin/jvm/internal/Ref$IntRef;

    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView$reboundDstBitmapRectAnimate$2;->$offsetY:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 309
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView$reboundDstBitmapRectAnimate$2;->this$0:Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
