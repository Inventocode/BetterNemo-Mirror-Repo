.class Lcom/codemao/nemo/util/MovePathUtils$SimpleScaleListenerImpl;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "MovePathUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/util/MovePathUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleScaleListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/util/MovePathUtils;


# direct methods
.method private constructor <init>(Lcom/codemao/nemo/util/MovePathUtils;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/codemao/nemo/util/MovePathUtils$SimpleScaleListenerImpl;->this$0:Lcom/codemao/nemo/util/MovePathUtils;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/codemao/nemo/util/MovePathUtils;Lcom/codemao/nemo/util/MovePathUtils$1;)V
    .registers 3

    .line 104
    invoke-direct {p0, p1}, Lcom/codemao/nemo/util/MovePathUtils$SimpleScaleListenerImpl;-><init>(Lcom/codemao/nemo/util/MovePathUtils;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 5

    .line 109
    iget-object v0, p0, Lcom/codemao/nemo/util/MovePathUtils$SimpleScaleListenerImpl;->this$0:Lcom/codemao/nemo/util/MovePathUtils;

    invoke-static {v0}, Lcom/codemao/nemo/util/MovePathUtils;->access$200(Lcom/codemao/nemo/util/MovePathUtils;)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    mul-float v1, v1, v2

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/MovePathUtils;->access$202(Lcom/codemao/nemo/util/MovePathUtils;F)F

    .line 110
    iget-object v0, p0, Lcom/codemao/nemo/util/MovePathUtils$SimpleScaleListenerImpl;->this$0:Lcom/codemao/nemo/util/MovePathUtils;

    invoke-static {v0}, Lcom/codemao/nemo/util/MovePathUtils;->access$300(Lcom/codemao/nemo/util/MovePathUtils;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/codemao/nemo/view/CircleEditView;

    if-eqz v0, :cond_29

    .line 111
    iget-object v0, p0, Lcom/codemao/nemo/util/MovePathUtils$SimpleScaleListenerImpl;->this$0:Lcom/codemao/nemo/util/MovePathUtils;

    invoke-static {v0}, Lcom/codemao/nemo/util/MovePathUtils;->access$300(Lcom/codemao/nemo/util/MovePathUtils;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/CircleEditView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/view/CircleEditView;->setScale(F)V

    goto :goto_5c

    .line 112
    :cond_29
    iget-object v0, p0, Lcom/codemao/nemo/util/MovePathUtils$SimpleScaleListenerImpl;->this$0:Lcom/codemao/nemo/util/MovePathUtils;

    invoke-static {v0}, Lcom/codemao/nemo/util/MovePathUtils;->access$300(Lcom/codemao/nemo/util/MovePathUtils;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/codemao/nemo/view/CoverEditView;

    if-eqz v0, :cond_43

    .line 113
    iget-object v0, p0, Lcom/codemao/nemo/util/MovePathUtils$SimpleScaleListenerImpl;->this$0:Lcom/codemao/nemo/util/MovePathUtils;

    invoke-static {v0}, Lcom/codemao/nemo/util/MovePathUtils;->access$300(Lcom/codemao/nemo/util/MovePathUtils;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/CoverEditView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/view/CoverEditView;->setScale(F)V

    goto :goto_5c

    .line 114
    :cond_43
    iget-object v0, p0, Lcom/codemao/nemo/util/MovePathUtils$SimpleScaleListenerImpl;->this$0:Lcom/codemao/nemo/util/MovePathUtils;

    invoke-static {v0}, Lcom/codemao/nemo/util/MovePathUtils;->access$300(Lcom/codemao/nemo/util/MovePathUtils;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/codemao/nemo/view/ShareCardEditView;

    if-eqz v0, :cond_5c

    .line 115
    iget-object v0, p0, Lcom/codemao/nemo/util/MovePathUtils$SimpleScaleListenerImpl;->this$0:Lcom/codemao/nemo/util/MovePathUtils;

    invoke-static {v0}, Lcom/codemao/nemo/util/MovePathUtils;->access$300(Lcom/codemao/nemo/util/MovePathUtils;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/ShareCardEditView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/view/ShareCardEditView;->setScale(F)V

    :cond_5c
    :goto_5c
    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 2

    .line 122
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result p1

    return p1
.end method
