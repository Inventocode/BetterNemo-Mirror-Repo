.class Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Lcn/codemao/android/sketch/xpopup/photoview/OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(FF)V
    .registers 9

    .line 103
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$000(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Lcn/codemao/android/sketch/xpopup/photoview/CustomGestureDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/xpopup/photoview/CustomGestureDetector;->isScaling()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 106
    :cond_d
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$100(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Lcn/codemao/android/sketch/xpopup/photoview/OnViewDragListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 107
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$100(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Lcn/codemao/android/sketch/xpopup/photoview/OnViewDragListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/codemao/android/sketch/xpopup/photoview/OnViewDragListener;->onDrag(FF)V

    .line 109
    :cond_1e
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$200(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 110
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$300(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)V

    .line 111
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$400(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)I

    move-result v1

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_44

    iget-object v1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->getScale()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_44

    const/4 v1, 0x1

    goto :goto_45

    :cond_44
    const/4 v1, 0x0

    :goto_45
    iput-boolean v1, v0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->isTopEnd:Z

    .line 112
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$400(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)I

    move-result v1

    if-ne v1, v4, :cond_5b

    iget-object v1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->getScale()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5b

    const/4 v1, 0x1

    goto :goto_5c

    :cond_5b
    const/4 v1, 0x0

    :goto_5c
    iput-boolean v1, v0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->isBottomEnd:Z

    .line 113
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$500(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)I

    move-result v1

    if-nez v1, :cond_72

    iget-object v1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->getScale()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_72

    const/4 v1, 0x1

    goto :goto_73

    :cond_72
    const/4 v1, 0x0

    :goto_73
    iput-boolean v1, v0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->isLeftEnd:Z

    .line 114
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$500(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)I

    move-result v1

    if-ne v1, v4, :cond_89

    iget-object v1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->getScale()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_89

    const/4 v1, 0x1

    goto :goto_8a

    :cond_89
    const/4 v1, 0x0

    :goto_8a
    iput-boolean v1, v0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->isRightEnd:Z

    .line 116
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$600(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_99

    return-void

    .line 118
    :cond_99
    iget-object v1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v1}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$700(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_14c

    iget-object v1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v1}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$000(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Lcn/codemao/android/sketch/xpopup/photoview/CustomGestureDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcn/codemao/android/sketch/xpopup/photoview/CustomGestureDetector;->isScaling()Z

    move-result v1

    if-nez v1, :cond_14c

    iget-object v1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v1}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$800(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Z

    move-result v1

    if-nez v1, :cond_14c

    .line 119
    iget-object v1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v1}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$500(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)I

    move-result v1

    if-ne v1, v2, :cond_c6

    iget-object v1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v1}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$900(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Z

    move-result v1

    if-eqz v1, :cond_ed

    :cond_c6
    iget-object v1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    .line 120
    invoke-static {v1}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$500(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)I

    move-result v1

    const/4 v5, 0x0

    if-nez v1, :cond_d9

    cmpl-float v1, p1, v5

    if-ltz v1, :cond_d9

    iget-object v1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    iget-boolean v1, v1, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->isHorizontal:Z

    if-nez v1, :cond_ed

    :cond_d9
    iget-object v1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    .line 121
    invoke-static {v1}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$500(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)I

    move-result v1

    if-ne v1, v4, :cond_f2

    const/high16 v1, -0x80000000

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_f2

    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    iget-boolean p1, p1, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->isHorizontal:Z

    if-eqz p1, :cond_f2

    .line 125
    :cond_ed
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_169

    .line 126
    :cond_f2
    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-static {p1}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$400(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)I

    move-result p1

    if-ne p1, v2, :cond_100

    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    iget-boolean p1, p1, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->isVertical:Z

    if-nez p1, :cond_11a

    :cond_100
    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    iget-boolean v1, p1, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->isTopEnd:Z

    if-eqz v1, :cond_10e

    cmpl-float v1, p2, v5

    if-lez v1, :cond_10e

    iget-boolean v1, p1, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->isVertical:Z

    if-nez v1, :cond_11a

    :cond_10e
    iget-boolean v1, p1, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->isBottomEnd:Z

    if-eqz v1, :cond_11e

    cmpg-float v1, p2, v5

    if-gez v1, :cond_11e

    iget-boolean v1, p1, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->isVertical:Z

    if-eqz v1, :cond_11e

    .line 129
    :cond_11a
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_169

    .line 130
    :cond_11e
    invoke-static {p1}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$900(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Z

    move-result p1

    if-eqz p1, :cond_169

    .line 132
    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-static {p1}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$400(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)I

    move-result p1

    if-nez p1, :cond_136

    cmpl-float p1, p2, v5

    if-lez p1, :cond_136

    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    iget-boolean p1, p1, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->isVertical:Z

    if-nez p1, :cond_148

    :cond_136
    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    .line 133
    invoke-static {p1}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$400(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)I

    move-result p1

    if-ne p1, v4, :cond_169

    cmpg-float p1, p2, v5

    if-gez p1, :cond_169

    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    iget-boolean p1, p1, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->isVertical:Z

    if-eqz p1, :cond_169

    .line 134
    :cond_148
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_169

    .line 139
    :cond_14c
    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-static {p1}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$500(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)I

    move-result p1

    if-ne p1, v2, :cond_166

    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-static {p1}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$900(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Z

    move-result p1

    if-eqz p1, :cond_166

    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    iget-boolean p1, p1, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->isHorizontal:Z

    if-eqz p1, :cond_166

    .line 141
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_169

    .line 143
    :cond_166
    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_169
    :goto_169
    return-void
.end method

.method public onFling(FFFF)V
    .registers 7

    .line 150
    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    new-instance p2, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-static {p1}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$600(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$FlingRunnable;-><init>(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;Landroid/content/Context;)V

    invoke-static {p1, p2}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$1002(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$FlingRunnable;)Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$FlingRunnable;

    .line 151
    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-static {p1}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$1000(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$FlingRunnable;

    move-result-object p1

    iget-object p2, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-static {p2}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$600(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p2, v0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$1100(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;Landroid/widget/ImageView;)I

    move-result p2

    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    .line 152
    invoke-static {v0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$600(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$1200(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;Landroid/widget/ImageView;)I

    move-result v0

    float-to-int p3, p3

    float-to-int p4, p4

    .line 151
    invoke-virtual {p1, p2, v0, p3, p4}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$FlingRunnable;->fling(IIII)V

    .line 153
    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-static {p1}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$600(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-static {p2}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$1000(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$FlingRunnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onScale(FFF)V
    .registers 6

    .line 158
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    iget-object v1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v1}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$1300(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_16

    const/high16 v0, 0x3f800000  # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_35

    .line 159
    :cond_16
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$1400(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Lcn/codemao/android/sketch/xpopup/photoview/OnScaleChangedListener;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 160
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$1400(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Lcn/codemao/android/sketch/xpopup/photoview/OnScaleChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcn/codemao/android/sketch/xpopup/photoview/OnScaleChangedListener;->onScaleChange(FFF)V

    .line 162
    :cond_27
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$200(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 163
    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-static {p1}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$300(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)V

    :cond_35
    return-void
.end method
