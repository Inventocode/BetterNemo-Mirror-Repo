.class Lcn/codemao/android/sketch/utils/MovePathUtils$SimpleScaleListenerImpl;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "MovePathUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/sketch/utils/MovePathUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleScaleListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/utils/MovePathUtils;


# direct methods
.method private constructor <init>(Lcn/codemao/android/sketch/utils/MovePathUtils;)V
    .registers 2

    .line 134
    iput-object p1, p0, Lcn/codemao/android/sketch/utils/MovePathUtils$SimpleScaleListenerImpl;->this$0:Lcn/codemao/android/sketch/utils/MovePathUtils;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/codemao/android/sketch/utils/MovePathUtils;Lcn/codemao/android/sketch/utils/MovePathUtils$1;)V
    .registers 3

    .line 134
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/utils/MovePathUtils$SimpleScaleListenerImpl;-><init>(Lcn/codemao/android/sketch/utils/MovePathUtils;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 4

    .line 137
    iget-object v0, p0, Lcn/codemao/android/sketch/utils/MovePathUtils$SimpleScaleListenerImpl;->this$0:Lcn/codemao/android/sketch/utils/MovePathUtils;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/MovePathUtils;->access$532(Lcn/codemao/android/sketch/utils/MovePathUtils;F)F

    .line 138
    iget-object v0, p0, Lcn/codemao/android/sketch/utils/MovePathUtils$SimpleScaleListenerImpl;->this$0:Lcn/codemao/android/sketch/utils/MovePathUtils;

    invoke-static {v0}, Lcn/codemao/android/sketch/utils/MovePathUtils;->access$400(Lcn/codemao/android/sketch/utils/MovePathUtils;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcn/codemao/android/sketch/view/SketchViewV4;

    if-eqz v0, :cond_23

    .line 139
    iget-object v0, p0, Lcn/codemao/android/sketch/utils/MovePathUtils$SimpleScaleListenerImpl;->this$0:Lcn/codemao/android/sketch/utils/MovePathUtils;

    invoke-static {v0}, Lcn/codemao/android/sketch/utils/MovePathUtils;->access$400(Lcn/codemao/android/sketch/utils/MovePathUtils;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/view/SketchViewV4;->setScale(F)V

    goto :goto_70

    .line 140
    :cond_23
    iget-object v0, p0, Lcn/codemao/android/sketch/utils/MovePathUtils$SimpleScaleListenerImpl;->this$0:Lcn/codemao/android/sketch/utils/MovePathUtils;

    invoke-static {v0}, Lcn/codemao/android/sketch/utils/MovePathUtils;->access$400(Lcn/codemao/android/sketch/utils/MovePathUtils;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcn/codemao/android/sketch/view/ShareEditView;

    if-eqz v0, :cond_3d

    .line 141
    iget-object v0, p0, Lcn/codemao/android/sketch/utils/MovePathUtils$SimpleScaleListenerImpl;->this$0:Lcn/codemao/android/sketch/utils/MovePathUtils;

    invoke-static {v0}, Lcn/codemao/android/sketch/utils/MovePathUtils;->access$400(Lcn/codemao/android/sketch/utils/MovePathUtils;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/ShareEditView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/view/ShareEditView;->setScale(F)V

    goto :goto_70

    .line 142
    :cond_3d
    iget-object v0, p0, Lcn/codemao/android/sketch/utils/MovePathUtils$SimpleScaleListenerImpl;->this$0:Lcn/codemao/android/sketch/utils/MovePathUtils;

    invoke-static {v0}, Lcn/codemao/android/sketch/utils/MovePathUtils;->access$400(Lcn/codemao/android/sketch/utils/MovePathUtils;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcn/codemao/android/sketch/view/paint/SketchControll;

    if-eqz v0, :cond_57

    .line 143
    iget-object v0, p0, Lcn/codemao/android/sketch/utils/MovePathUtils$SimpleScaleListenerImpl;->this$0:Lcn/codemao/android/sketch/utils/MovePathUtils;

    invoke-static {v0}, Lcn/codemao/android/sketch/utils/MovePathUtils;->access$400(Lcn/codemao/android/sketch/utils/MovePathUtils;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    invoke-interface {v0, p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->setScale(F)V

    goto :goto_70

    .line 144
    :cond_57
    iget-object v0, p0, Lcn/codemao/android/sketch/utils/MovePathUtils$SimpleScaleListenerImpl;->this$0:Lcn/codemao/android/sketch/utils/MovePathUtils;

    invoke-static {v0}, Lcn/codemao/android/sketch/utils/MovePathUtils;->access$400(Lcn/codemao/android/sketch/utils/MovePathUtils;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcn/codemao/android/sketch/view/paint/ScaleControll;

    if-eqz v0, :cond_70

    .line 145
    iget-object v0, p0, Lcn/codemao/android/sketch/utils/MovePathUtils$SimpleScaleListenerImpl;->this$0:Lcn/codemao/android/sketch/utils/MovePathUtils;

    invoke-static {v0}, Lcn/codemao/android/sketch/utils/MovePathUtils;->access$400(Lcn/codemao/android/sketch/utils/MovePathUtils;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/paint/ScaleControll;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    invoke-interface {v0, p1}, Lcn/codemao/android/sketch/view/paint/ScaleControll;->setScale(F)V

    :cond_70
    :goto_70
    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 2

    .line 152
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result p1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 2

    .line 158
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    return-void
.end method
