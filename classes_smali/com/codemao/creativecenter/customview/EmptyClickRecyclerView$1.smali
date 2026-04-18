.class Lcom/codemao/creativecenter/customview/EmptyClickRecyclerView$1;
.super Ljava/lang/Object;
.source "EmptyClickRecyclerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/EmptyClickRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field scrollX:F

.field scrollY:F

.field final synthetic this$0:Lcom/codemao/creativecenter/customview/EmptyClickRecyclerView;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/EmptyClickRecyclerView;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/EmptyClickRecyclerView$1;->this$0:Lcom/codemao/creativecenter/customview/EmptyClickRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .line 39
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/EmptyClickRecyclerView$1;->this$0:Lcom/codemao/creativecenter/customview/EmptyClickRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/codemao/creativecenter/callback/EmptyInterface;

    if-eqz v0, :cond_6e

    .line 41
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1c

    .line 42
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/codemao/creativecenter/customview/EmptyClickRecyclerView$1;->scrollX:F

    .line 43
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/codemao/creativecenter/customview/EmptyClickRecyclerView$1;->scrollY:F

    .line 45
    :cond_1c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6e

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-eqz p1, :cond_6e

    iget p1, p0, Lcom/codemao/creativecenter/customview/EmptyClickRecyclerView$1;->scrollX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x40a00000  # 5.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_6e

    iget p1, p0, Lcom/codemao/creativecenter/customview/EmptyClickRecyclerView$1;->scrollY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_6e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/EmptyClickRecyclerView$1;->this$0:Lcom/codemao/creativecenter/customview/EmptyClickRecyclerView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/EmptyClickRecyclerView;->access$000(Lcom/codemao/creativecenter/customview/EmptyClickRecyclerView;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    cmp-long v2, p1, v0

    if-lez v2, :cond_6e

    .line 47
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/EmptyClickRecyclerView$1;->this$0:Lcom/codemao/creativecenter/customview/EmptyClickRecyclerView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/codemao/creativecenter/customview/EmptyClickRecyclerView;->access$002(Lcom/codemao/creativecenter/customview/EmptyClickRecyclerView;J)J

    .line 48
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/EmptyClickRecyclerView$1;->this$0:Lcom/codemao/creativecenter/customview/EmptyClickRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/callback/EmptyInterface;

    invoke-interface {p1}, Lcom/codemao/creativecenter/callback/EmptyInterface;->quite()V

    :cond_6e
    const/4 p1, 0x0

    return p1
.end method
