.class Lcom/nemo/commonui/xpopup/photoview/CustomGestureDetector$1;
.super Ljava/lang/Object;
.source "CustomGestureDetector.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemo/commonui/xpopup/photoview/CustomGestureDetector;-><init>(Landroid/content/Context;Lcom/nemo/commonui/xpopup/photoview/OnGestureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemo/commonui/xpopup/photoview/CustomGestureDetector;


# direct methods
.method constructor <init>(Lcom/nemo/commonui/xpopup/photoview/CustomGestureDetector;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/nemo/commonui/xpopup/photoview/CustomGestureDetector$1;->this$0:Lcom/nemo/commonui/xpopup/photoview/CustomGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 5

    .line 54
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 55
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_29

    :cond_11
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_27

    .line 58
    iget-object v1, p0, Lcom/nemo/commonui/xpopup/photoview/CustomGestureDetector$1;->this$0:Lcom/nemo/commonui/xpopup/photoview/CustomGestureDetector;

    invoke-static {v1}, Lcom/nemo/commonui/xpopup/photoview/CustomGestureDetector;->access$000(Lcom/nemo/commonui/xpopup/photoview/CustomGestureDetector;)Lcom/nemo/commonui/xpopup/photoview/OnGestureListener;

    move-result-object v1

    .line 59
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    .line 58
    invoke-interface {v1, v0, v2, p1}, Lcom/nemo/commonui/xpopup/photoview/OnGestureListener;->onScale(FFF)V

    :cond_27
    const/4 p1, 0x1

    return p1

    :cond_29
    :goto_29
    const/4 p1, 0x0

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 2

    return-void
.end method
