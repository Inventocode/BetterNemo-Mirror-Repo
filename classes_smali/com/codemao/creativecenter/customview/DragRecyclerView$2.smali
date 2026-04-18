.class Lcom/codemao/creativecenter/customview/DragRecyclerView$2;
.super Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;
.source "DragRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/DragRecyclerView;->dismissFollowView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/DragRecyclerView;

.field final synthetic val$animate:Landroidx/core/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/DragRecyclerView;Landroidx/core/view/ViewPropertyAnimatorCompat;)V
    .registers 3

    .line 169
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView$2;->this$0:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    iput-object p2, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView$2;->val$animate:Landroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-direct {p0}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .registers 4

    .line 178
    invoke-super {p0, p1}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;->onAnimationEnd(Landroid/view/View;)V

    .line 179
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView$2;->val$animate:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 180
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView$2;->this$0:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/DragRecyclerView;->access$800(Lcom/codemao/creativecenter/customview/DragRecyclerView;)Landroid/view/View;

    move-result-object p1

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 181
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView$2;->this$0:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/DragRecyclerView;->access$900(Lcom/codemao/creativecenter/customview/DragRecyclerView;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 182
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView$2;->this$0:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/DragRecyclerView;->access$1000(Lcom/codemao/creativecenter/customview/DragRecyclerView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 183
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView$2;->this$0:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/DragRecyclerView;->access$900(Lcom/codemao/creativecenter/customview/DragRecyclerView;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 184
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView$2;->this$0:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/DragRecyclerView;->access$1100(Lcom/codemao/creativecenter/customview/DragRecyclerView;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_47

    .line 185
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView$2;->this$0:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/DragRecyclerView;->access$1100(Lcom/codemao/creativecenter/customview/DragRecyclerView;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 186
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView$2;->this$0:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/customview/DragRecyclerView;->access$1102(Lcom/codemao/creativecenter/customview/DragRecyclerView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 188
    :cond_47
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView$2;->this$0:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/DragRecyclerView;->access$800(Lcom/codemao/creativecenter/customview/DragRecyclerView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 189
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView$2;->this$0:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/DragRecyclerView;->access$800(Lcom/codemao/creativecenter/customview/DragRecyclerView;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 191
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView$2;->this$0:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/DragRecyclerView;->access$100(Lcom/codemao/creativecenter/customview/DragRecyclerView;)Lcom/codemao/creativecenter/callback/OnItemChangeListener;

    move-result-object p1

    if-eqz p1, :cond_6b

    .line 192
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView$2;->this$0:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/DragRecyclerView;->access$100(Lcom/codemao/creativecenter/customview/DragRecyclerView;)Lcom/codemao/creativecenter/callback/OnItemChangeListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/creativecenter/callback/OnItemChangeListener;->onFinishDrag()V

    .line 195
    :cond_6b
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView$2;->this$0:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView$2;->this$0:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getAddDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 196
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView$2;->this$0:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView$2;->this$0:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getAddDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 2

    .line 173
    invoke-super {p0, p1}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;->onAnimationStart(Landroid/view/View;)V

    return-void
.end method
