.class Lcn/codemao/android/sketch/utils/MovePathUtils$SimpleGestureListenerImpl;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MovePathUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/sketch/utils/MovePathUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleGestureListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/utils/MovePathUtils;


# direct methods
.method private constructor <init>(Lcn/codemao/android/sketch/utils/MovePathUtils;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lcn/codemao/android/sketch/utils/MovePathUtils$SimpleGestureListenerImpl;->this$0:Lcn/codemao/android/sketch/utils/MovePathUtils;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/codemao/android/sketch/utils/MovePathUtils;Lcn/codemao/android/sketch/utils/MovePathUtils$1;)V
    .registers 3

    .line 116
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/utils/MovePathUtils$SimpleGestureListenerImpl;-><init>(Lcn/codemao/android/sketch/utils/MovePathUtils;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    .line 120
    iget-object p1, p0, Lcn/codemao/android/sketch/utils/MovePathUtils$SimpleGestureListenerImpl;->this$0:Lcn/codemao/android/sketch/utils/MovePathUtils;

    invoke-static {p1, p3}, Lcn/codemao/android/sketch/utils/MovePathUtils;->access$224(Lcn/codemao/android/sketch/utils/MovePathUtils;F)F

    .line 121
    iget-object p1, p0, Lcn/codemao/android/sketch/utils/MovePathUtils$SimpleGestureListenerImpl;->this$0:Lcn/codemao/android/sketch/utils/MovePathUtils;

    invoke-static {p1, p4}, Lcn/codemao/android/sketch/utils/MovePathUtils;->access$324(Lcn/codemao/android/sketch/utils/MovePathUtils;F)F

    .line 122
    iget-object p1, p0, Lcn/codemao/android/sketch/utils/MovePathUtils$SimpleGestureListenerImpl;->this$0:Lcn/codemao/android/sketch/utils/MovePathUtils;

    invoke-static {p1}, Lcn/codemao/android/sketch/utils/MovePathUtils;->access$400(Lcn/codemao/android/sketch/utils/MovePathUtils;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcn/codemao/android/sketch/view/SketchViewV4;

    if-eqz p1, :cond_20

    .line 123
    iget-object p1, p0, Lcn/codemao/android/sketch/utils/MovePathUtils$SimpleGestureListenerImpl;->this$0:Lcn/codemao/android/sketch/utils/MovePathUtils;

    invoke-static {p1}, Lcn/codemao/android/sketch/utils/MovePathUtils;->access$400(Lcn/codemao/android/sketch/utils/MovePathUtils;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1, p3, p4}, Lcn/codemao/android/sketch/view/SketchViewV4;->setOffset(FF)V

    goto :goto_4b

    .line 124
    :cond_20
    iget-object p1, p0, Lcn/codemao/android/sketch/utils/MovePathUtils$SimpleGestureListenerImpl;->this$0:Lcn/codemao/android/sketch/utils/MovePathUtils;

    invoke-static {p1}, Lcn/codemao/android/sketch/utils/MovePathUtils;->access$400(Lcn/codemao/android/sketch/utils/MovePathUtils;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcn/codemao/android/sketch/view/ShareEditView;

    if-eqz p1, :cond_36

    .line 125
    iget-object p1, p0, Lcn/codemao/android/sketch/utils/MovePathUtils$SimpleGestureListenerImpl;->this$0:Lcn/codemao/android/sketch/utils/MovePathUtils;

    invoke-static {p1}, Lcn/codemao/android/sketch/utils/MovePathUtils;->access$400(Lcn/codemao/android/sketch/utils/MovePathUtils;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/codemao/android/sketch/view/ShareEditView;

    invoke-virtual {p1, p3, p4}, Lcn/codemao/android/sketch/view/ShareEditView;->setOffset(FF)V

    goto :goto_4b

    .line 126
    :cond_36
    iget-object p1, p0, Lcn/codemao/android/sketch/utils/MovePathUtils$SimpleGestureListenerImpl;->this$0:Lcn/codemao/android/sketch/utils/MovePathUtils;

    invoke-static {p1}, Lcn/codemao/android/sketch/utils/MovePathUtils;->access$400(Lcn/codemao/android/sketch/utils/MovePathUtils;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcn/codemao/android/sketch/view/paint/SketchControll;

    if-eqz p1, :cond_4b

    .line 127
    iget-object p1, p0, Lcn/codemao/android/sketch/utils/MovePathUtils$SimpleGestureListenerImpl;->this$0:Lcn/codemao/android/sketch/utils/MovePathUtils;

    invoke-static {p1}, Lcn/codemao/android/sketch/utils/MovePathUtils;->access$400(Lcn/codemao/android/sketch/utils/MovePathUtils;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {p1, p3, p4}, Lcn/codemao/android/sketch/view/paint/SketchControll;->setOffset(FF)V

    :cond_4b
    :goto_4b
    const/4 p1, 0x1

    return p1
.end method
