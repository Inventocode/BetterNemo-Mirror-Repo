.class Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->initGestureDetector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;)V
    .registers 2

    .line 383
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$2;->this$0:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 16

    .line 387
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$2;->this$0:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->access$500(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 388
    :cond_a
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 389
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 390
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    .line 391
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr p2, v4

    .line 392
    iget-object v4, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$2;->this$0:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 393
    iget-object v5, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$2;->this$0:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 394
    iget-object v6, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$2;->this$0:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    invoke-static {v6}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->access$600(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;)Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$SwipeTracker;

    move-result-object v6

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$SwipeTracker;->computeCurrentVelocity(I)V

    .line 395
    iget-object v6, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$2;->this$0:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    invoke-static {v6}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->access$600(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;)Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$SwipeTracker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$SwipeTracker;->getXVelocity()F

    move-result v6

    .line 396
    iget-object v7, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$2;->this$0:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    invoke-static {v7}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->access$600(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;)Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$SwipeTracker;

    move-result-object v7

    invoke-virtual {v7}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$SwipeTracker;->getYVelocity()F

    move-result v7

    .line 398
    iget-object v8, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$2;->this$0:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    invoke-static {v8}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->access$700(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40800000  # 4.0f

    const/4 v10, 0x1

    cmpl-float v8, p3, v8

    if-lez v8, :cond_7f

    cmpg-float v8, v2, v0

    if-gez v8, :cond_7f

    int-to-float v8, v4

    cmpl-float v8, v3, v8

    if-lez v8, :cond_7f

    .line 399
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$2;->this$0:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    invoke-static {p2}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->access$800(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;)Z

    move-result p2

    if-eqz p2, :cond_79

    div-float/2addr p3, v9

    cmpg-float p2, v6, p3

    if-gez p2, :cond_79

    goto/16 :goto_ff

    .line 402
    :cond_79
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$2;->this$0:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->swipeRight()V

    return v10

    .line 405
    :cond_7f
    iget-object v8, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$2;->this$0:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    invoke-static {v8}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->access$700(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;)I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    cmpg-float v8, p3, v8

    if-gez v8, :cond_a9

    cmpg-float v8, v2, v0

    if-gez v8, :cond_a9

    neg-int v4, v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_a9

    .line 406
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$2;->this$0:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    invoke-static {p2}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->access$800(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;)Z

    move-result p2

    if-eqz p2, :cond_a3

    div-float/2addr p3, v9

    cmpl-float p2, v6, p3

    if-lez p2, :cond_a3

    goto :goto_ff

    .line 409
    :cond_a3
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$2;->this$0:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->swipeLeft()V

    return v10

    .line 412
    :cond_a9
    iget-object p3, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$2;->this$0:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    invoke-static {p3}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->access$700(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;)I

    move-result p3

    neg-int p3, p3

    int-to-float p3, p3

    cmpg-float p3, p4, p3

    if-gez p3, :cond_d3

    cmpg-float p3, v0, v2

    if-gez p3, :cond_d3

    neg-int p3, v5

    int-to-float p3, p3

    cmpg-float p3, p2, p3

    if-gez p3, :cond_d3

    .line 413
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$2;->this$0:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    invoke-static {p2}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->access$800(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;)Z

    move-result p2

    if-eqz p2, :cond_cd

    div-float/2addr p4, v9

    cmpl-float p2, v7, p4

    if-lez p2, :cond_cd

    goto :goto_ff

    .line 416
    :cond_cd
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$2;->this$0:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->swipeUp()V

    return v10

    .line 419
    :cond_d3
    iget-object p3, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$2;->this$0:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    invoke-static {p3}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->access$700(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;)I

    move-result p3

    int-to-float p3, p3

    cmpl-float p3, p4, p3

    if-lez p3, :cond_fe

    const/high16 p3, 0x40000000  # 2.0f

    div-float/2addr v2, p3

    cmpg-float p3, v0, v2

    if-gez p3, :cond_fe

    int-to-float p3, v5

    cmpl-float p2, p2, p3

    if-lez p2, :cond_fe

    .line 420
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$2;->this$0:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    invoke-static {p2}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->access$800(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;)Z

    move-result p2

    if-eqz p2, :cond_f8

    div-float/2addr p4, v9

    cmpg-float p2, v7, p4

    if-gez p2, :cond_f8

    goto :goto_ff

    .line 423
    :cond_f8
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$2;->this$0:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->swipeDown()V

    return v10

    :cond_fe
    const/4 v10, 0x0

    :goto_ff
    if-eqz v10, :cond_11a

    .line 429
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$2;->this$0:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    invoke-static {v2}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->access$900(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;)I

    move-result v3

    iget-object p2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$2;->this$0:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    invoke-static {p2}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->access$1000(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;)I

    move-result v4

    iget-object p2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$2;->this$0:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    invoke-static {p2}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->access$1100(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;)I

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->access$1200(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;IIIJ)V

    :cond_11a
    return v1
.end method
