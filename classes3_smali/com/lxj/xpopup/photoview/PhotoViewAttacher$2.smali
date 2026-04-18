.class Lcom/lxj/xpopup/photoview/PhotoViewAttacher$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PhotoViewAttacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V
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

    .line 182
    iput-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$2;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "e1",
            "e2",
            "velocityX",
            "velocityY"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$2;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$1600(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Lcom/lxj/xpopup/photoview/OnSingleFlingListener;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 195
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$2;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    invoke-static {}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$1700()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_18

    return v1

    .line 198
    :cond_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    invoke-static {}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$1800()I

    move-result v2

    if-gt v0, v2, :cond_38

    .line 199
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    invoke-static {}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$1800()I

    move-result v2

    if-le v0, v2, :cond_2d

    goto :goto_38

    .line 202
    :cond_2d
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$2;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$1600(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Lcom/lxj/xpopup/photoview/OnSingleFlingListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/lxj/xpopup/photoview/OnSingleFlingListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1

    :cond_38
    :goto_38
    return v1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 186
    iget-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$2;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-static {p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$1500(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 187
    iget-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$2;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-static {p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$1500(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$2;->this$0:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->access$600(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_17
    return-void
.end method
