.class Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Lcom/lxj/xpopup/photoview/OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lxj/xpopup/photoview/PhotoViewAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;


# direct methods
.method constructor <init>(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(FF)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$000(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Lcom/lxj/xpopup/photoview/CustomGestureDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lxj/xpopup/photoview/CustomGestureDetector;->isScaling()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 107
    :cond_d
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$100(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Lcom/lxj/xpopup/photoview/OnViewDragListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 108
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$100(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Lcom/lxj/xpopup/photoview/OnViewDragListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lxj/xpopup/photoview/OnViewDragListener;->onDrag(FF)V

    .line 110
    :cond_1e
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$200(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 111
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$300(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)V

    .line 112
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$400(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)I

    move-result v1

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_44

    iget-object v1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->getScale()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_44

    const/4 v1, 0x1

    goto :goto_45

    :cond_44
    const/4 v1, 0x0

    :goto_45
    iput-boolean v1, v0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->isTopEnd:Z

    .line 113
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$400(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)I

    move-result v1

    if-ne v1, v4, :cond_5b

    iget-object v1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->getScale()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5b

    const/4 v1, 0x1

    goto :goto_5c

    :cond_5b
    const/4 v1, 0x0

    :goto_5c
    iput-boolean v1, v0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->isBottomEnd:Z

    .line 114
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$500(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)I

    move-result v1

    if-nez v1, :cond_72

    iget-object v1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->getScale()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_72

    const/4 v1, 0x1

    goto :goto_73

    :cond_72
    const/4 v1, 0x0

    :goto_73
    iput-boolean v1, v0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->isLeftEnd:Z

    .line 115
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$500(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)I

    move-result v1

    if-ne v1, v4, :cond_89

    iget-object v1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->getScale()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_89

    const/4 v1, 0x1

    goto :goto_8a

    :cond_89
    const/4 v1, 0x0

    :goto_8a
    iput-boolean v1, v0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->isRightEnd:Z

    .line 117
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$600(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_99

    return-void

    .line 119
    :cond_99
    iget-object v1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$700(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_14d

    iget-object v1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$000(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Lcom/lxj/xpopup/photoview/CustomGestureDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lxj/xpopup/photoview/CustomGestureDetector;->isScaling()Z

    move-result v1

    if-nez v1, :cond_14d

    iget-object v1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$800(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Z

    move-result v1

    if-nez v1, :cond_14d

    .line 120
    iget-object v1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$500(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)I

    move-result v1

    if-ne v1, v2, :cond_c6

    iget-object v1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$900(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Z

    move-result v1

    if-eqz v1, :cond_ed

    :cond_c6
    iget-object v1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    .line 121
    invoke-static {v1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$500(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)I

    move-result v1

    const/4 v5, 0x0

    if-nez v1, :cond_d9

    cmpl-float v1, p1, v5

    if-ltz v1, :cond_d9

    iget-object v1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    iget-boolean v1, v1, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->isHorizontal:Z

    if-nez v1, :cond_ed

    :cond_d9
    iget-object v1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    .line 122
    invoke-static {v1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$500(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)I

    move-result v1

    if-ne v1, v4, :cond_f2

    const/high16 v1, -0x80000000

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_f2

    iget-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    iget-boolean p1, p1, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->isHorizontal:Z

    if-eqz p1, :cond_f2

    .line 126
    :cond_ed
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_18c

    .line 127
    :cond_f2
    iget-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-static {p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$400(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)I

    move-result p1

    if-ne p1, v2, :cond_100

    iget-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    iget-boolean p1, p1, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->isVertical:Z

    if-nez p1, :cond_11a

    :cond_100
    iget-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    iget-boolean v1, p1, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->isTopEnd:Z

    if-eqz v1, :cond_10e

    cmpl-float v1, p2, v5

    if-lez v1, :cond_10e

    iget-boolean v1, p1, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->isVertical:Z

    if-nez v1, :cond_11a

    :cond_10e
    iget-boolean v1, p1, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->isBottomEnd:Z

    if-eqz v1, :cond_11f

    cmpg-float v1, p2, v5

    if-gez v1, :cond_11f

    iget-boolean v1, p1, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->isVertical:Z

    if-eqz v1, :cond_11f

    .line 130
    :cond_11a
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_18c

    .line 131
    :cond_11f
    invoke-static {p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$900(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Z

    move-result p1

    if-eqz p1, :cond_18c

    .line 133
    iget-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-static {p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$400(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)I

    move-result p1

    if-nez p1, :cond_137

    cmpl-float p1, p2, v5

    if-lez p1, :cond_137

    iget-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    iget-boolean p1, p1, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->isVertical:Z

    if-nez p1, :cond_149

    :cond_137
    iget-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    .line 134
    invoke-static {p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$400(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)I

    move-result p1

    if-ne p1, v4, :cond_18c

    cmpg-float p1, p2, v5

    if-gez p1, :cond_18c

    iget-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    iget-boolean p1, p1, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->isVertical:Z

    if-eqz p1, :cond_18c

    .line 135
    :cond_149
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_18c

    .line 140
    :cond_14d
    iget-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-static {p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$500(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)I

    move-result p1

    if-ne p1, v2, :cond_167

    iget-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-static {p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$900(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Z

    move-result p1

    if-eqz p1, :cond_167

    iget-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    iget-boolean p1, p1, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->isHorizontal:Z

    if-eqz p1, :cond_167

    .line 142
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_18c

    .line 143
    :cond_167
    iget-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-static {p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$500(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)I

    move-result p1

    if-eq p1, v4, :cond_177

    iget-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    .line 144
    invoke-static {p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$500(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)I

    move-result p1

    if-nez p1, :cond_189

    :cond_177
    iget-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-static {p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$900(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Z

    move-result p1

    if-nez p1, :cond_189

    iget-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    iget-boolean p1, p1, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->isHorizontal:Z

    if-nez p1, :cond_189

    .line 145
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_18c

    .line 147
    :cond_189
    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_18c
    :goto_18c
    return-void
.end method

.method public onFling(FFFF)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startX",
            "startY",
            "velocityX",
            "velocityY"
        }
    .end annotation

    .line 154
    iget-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    new-instance p2, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-static {p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$600(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$FlingRunnable;-><init>(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;Landroid/content/Context;)V

    invoke-static {p1, p2}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$1002(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;Lcom/lxj/xpopup/photoview/PhotoViewAttacher$FlingRunnable;)Lcom/lxj/xpopup/photoview/PhotoViewAttacher$FlingRunnable;

    .line 155
    iget-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-static {p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$1000(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Lcom/lxj/xpopup/photoview/PhotoViewAttacher$FlingRunnable;

    move-result-object p1

    iget-object p2, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-static {p2}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$600(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$1100(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;Landroid/widget/ImageView;)I

    move-result p2

    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    .line 156
    invoke-static {v0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$600(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$1200(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;Landroid/widget/ImageView;)I

    move-result v0

    float-to-int p3, p3

    float-to-int p4, p4

    .line 155
    invoke-virtual {p1, p2, v0, p3, p4}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$FlingRunnable;->fling(IIII)V

    .line 157
    iget-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-static {p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$600(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-static {p2}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$1000(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Lcom/lxj/xpopup/photoview/PhotoViewAttacher$FlingRunnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onScale(FFF)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "scaleFactor",
            "focusX",
            "focusY"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    iget-object v1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$1300(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_16

    const/high16 v0, 0x3f800000  # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_35

    .line 163
    :cond_16
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$1400(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Lcom/lxj/xpopup/photoview/OnScaleChangedListener;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 164
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$1400(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Lcom/lxj/xpopup/photoview/OnScaleChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lxj/xpopup/photoview/OnScaleChangedListener;->onScaleChange(FFF)V

    .line 166
    :cond_27
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$200(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 167
    iget-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-static {p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$300(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)V

    :cond_35
    return-void
.end method
