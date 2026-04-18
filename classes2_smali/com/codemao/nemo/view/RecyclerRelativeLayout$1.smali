.class Lcom/codemao/nemo/view/RecyclerRelativeLayout$1;
.super Ljava/lang/Object;
.source "RecyclerRelativeLayout.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/RecyclerRelativeLayout;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$1;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 124
    iget-object p1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$1;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {p1}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$000(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Lcom/codemao/nemo/view/MyRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_4b

    .line 125
    iget-object p1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$1;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {p1}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$100(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Lcom/codemao/nemo/view/CarouselLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/view/CarouselLayoutManager;->isExpanding()Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 126
    iget-object p1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$1;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    const-wide/16 v0, 0x1f4

    invoke-static {p1, v0, v1}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$200(Lcom/codemao/nemo/view/RecyclerRelativeLayout;J)V

    .line 127
    iget-object p1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$1;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {p1}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$100(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Lcom/codemao/nemo/view/CarouselLayoutManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/CarouselLayoutManager;->setNeedShrink(Z)V

    .line 128
    iget-object p1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$1;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {p1}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$100(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Lcom/codemao/nemo/view/CarouselLayoutManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/CarouselLayoutManager;->setShrink(Z)V

    .line 129
    iget-object p1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$1;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {p1}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$300(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Lcom/codemao/nemo/view/RVAdapter;

    move-result-object p1

    iget-object v1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$1;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {v1}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$100(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Lcom/codemao/nemo/view/CarouselLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/view/CarouselLayoutManager;->getCenterItemPosition()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lcom/codemao/nemo/view/RVAdapter;->setI(IZ)V

    .line 130
    iget-object p1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$1;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->requestLayout()V

    :cond_4b
    return v0
.end method
