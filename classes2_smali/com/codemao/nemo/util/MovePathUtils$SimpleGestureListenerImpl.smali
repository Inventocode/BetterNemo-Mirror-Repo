.class Lcom/codemao/nemo/util/MovePathUtils$SimpleGestureListenerImpl;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MovePathUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/util/MovePathUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleGestureListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/util/MovePathUtils;


# direct methods
.method private constructor <init>(Lcom/codemao/nemo/util/MovePathUtils;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/codemao/nemo/util/MovePathUtils$SimpleGestureListenerImpl;->this$0:Lcom/codemao/nemo/util/MovePathUtils;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/codemao/nemo/util/MovePathUtils;Lcom/codemao/nemo/util/MovePathUtils$1;)V
    .registers 3

    .line 126
    invoke-direct {p0, p1}, Lcom/codemao/nemo/util/MovePathUtils$SimpleGestureListenerImpl;-><init>(Lcom/codemao/nemo/util/MovePathUtils;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    .line 131
    iget-object p1, p0, Lcom/codemao/nemo/util/MovePathUtils$SimpleGestureListenerImpl;->this$0:Lcom/codemao/nemo/util/MovePathUtils;

    invoke-static {p1}, Lcom/codemao/nemo/util/MovePathUtils;->access$400(Lcom/codemao/nemo/util/MovePathUtils;)F

    move-result p2

    sub-float/2addr p2, p3

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/MovePathUtils;->access$402(Lcom/codemao/nemo/util/MovePathUtils;F)F

    .line 132
    iget-object p1, p0, Lcom/codemao/nemo/util/MovePathUtils$SimpleGestureListenerImpl;->this$0:Lcom/codemao/nemo/util/MovePathUtils;

    invoke-static {p1}, Lcom/codemao/nemo/util/MovePathUtils;->access$500(Lcom/codemao/nemo/util/MovePathUtils;)F

    move-result p2

    sub-float/2addr p2, p4

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/MovePathUtils;->access$502(Lcom/codemao/nemo/util/MovePathUtils;F)F

    .line 133
    iget-object p1, p0, Lcom/codemao/nemo/util/MovePathUtils$SimpleGestureListenerImpl;->this$0:Lcom/codemao/nemo/util/MovePathUtils;

    invoke-static {p1}, Lcom/codemao/nemo/util/MovePathUtils;->access$300(Lcom/codemao/nemo/util/MovePathUtils;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/codemao/nemo/view/CircleEditView;

    if-eqz p1, :cond_2a

    .line 134
    iget-object p1, p0, Lcom/codemao/nemo/util/MovePathUtils$SimpleGestureListenerImpl;->this$0:Lcom/codemao/nemo/util/MovePathUtils;

    invoke-static {p1}, Lcom/codemao/nemo/util/MovePathUtils;->access$300(Lcom/codemao/nemo/util/MovePathUtils;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/view/CircleEditView;

    invoke-virtual {p1, p3, p4}, Lcom/codemao/nemo/view/CircleEditView;->setOffset(FF)V

    goto :goto_55

    .line 135
    :cond_2a
    iget-object p1, p0, Lcom/codemao/nemo/util/MovePathUtils$SimpleGestureListenerImpl;->this$0:Lcom/codemao/nemo/util/MovePathUtils;

    invoke-static {p1}, Lcom/codemao/nemo/util/MovePathUtils;->access$300(Lcom/codemao/nemo/util/MovePathUtils;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/codemao/nemo/view/CoverEditView;

    if-eqz p1, :cond_40

    .line 136
    iget-object p1, p0, Lcom/codemao/nemo/util/MovePathUtils$SimpleGestureListenerImpl;->this$0:Lcom/codemao/nemo/util/MovePathUtils;

    invoke-static {p1}, Lcom/codemao/nemo/util/MovePathUtils;->access$300(Lcom/codemao/nemo/util/MovePathUtils;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/view/CoverEditView;

    invoke-virtual {p1, p3, p4}, Lcom/codemao/nemo/view/CoverEditView;->setOffset(FF)V

    goto :goto_55

    .line 137
    :cond_40
    iget-object p1, p0, Lcom/codemao/nemo/util/MovePathUtils$SimpleGestureListenerImpl;->this$0:Lcom/codemao/nemo/util/MovePathUtils;

    invoke-static {p1}, Lcom/codemao/nemo/util/MovePathUtils;->access$300(Lcom/codemao/nemo/util/MovePathUtils;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/codemao/nemo/view/ShareCardEditView;

    if-eqz p1, :cond_55

    .line 138
    iget-object p1, p0, Lcom/codemao/nemo/util/MovePathUtils$SimpleGestureListenerImpl;->this$0:Lcom/codemao/nemo/util/MovePathUtils;

    invoke-static {p1}, Lcom/codemao/nemo/util/MovePathUtils;->access$300(Lcom/codemao/nemo/util/MovePathUtils;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/view/ShareCardEditView;

    invoke-virtual {p1, p3, p4}, Lcom/codemao/nemo/view/ShareCardEditView;->setOffset(FF)V

    :cond_55
    :goto_55
    const/4 p1, 0x1

    return p1
.end method
