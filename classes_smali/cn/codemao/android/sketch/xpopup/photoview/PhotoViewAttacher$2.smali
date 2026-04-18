.class Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PhotoViewAttacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V
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

    .line 178
    iput-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$2;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8

    .line 190
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$2;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$1600(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Lcn/codemao/android/sketch/xpopup/photoview/OnSingleFlingListener;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 191
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$2;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    invoke-static {}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$1700()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_18

    return v1

    .line 194
    :cond_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    invoke-static {}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$1800()I

    move-result v2

    if-gt v0, v2, :cond_38

    .line 195
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    invoke-static {}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$1800()I

    move-result v2

    if-le v0, v2, :cond_2d

    goto :goto_38

    .line 198
    :cond_2d
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$2;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$1600(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Lcn/codemao/android/sketch/xpopup/photoview/OnSingleFlingListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcn/codemao/android/sketch/xpopup/photoview/OnSingleFlingListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1

    :cond_38
    :goto_38
    return v1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 3

    .line 182
    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$2;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-static {p1}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$1500(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 183
    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$2;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-static {p1}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$1500(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$2;->this$0:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->access$600(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_17
    return-void
.end method
