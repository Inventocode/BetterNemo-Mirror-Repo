.class Lcom/codemao/creativecenter/customview/StyleDragRecyclerView$2;
.super Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;
.source "StyleDragRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->dismissFollowView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

.field final synthetic val$animate:Landroidx/core/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;Landroidx/core/view/ViewPropertyAnimatorCompat;)V
    .registers 3

    .line 192
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView$2;->this$0:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    iput-object p2, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView$2;->val$animate:Landroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-direct {p0}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .registers 4

    .line 201
    invoke-super {p0, p1}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;->onAnimationEnd(Landroid/view/View;)V

    .line 202
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView$2;->val$animate:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 203
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView$2;->this$0:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->access$500(Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;)Landroid/view/View;

    move-result-object p1

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 204
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView$2;->this$0:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->access$600(Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 205
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView$2;->this$0:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->access$600(Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 206
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView$2;->this$0:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->access$600(Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 207
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView$2;->this$0:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->access$600(Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView$2;->this$0:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->access$700(Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_50

    .line 209
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView$2;->this$0:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->access$700(Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 210
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView$2;->this$0:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->access$702(Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 212
    :cond_50
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView$2;->this$0:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->access$500(Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 213
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView$2;->this$0:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->access$500(Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 215
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView$2;->this$0:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->access$100(Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;)Lcom/codemao/creativecenter/callback/OnItemChangeListener;

    move-result-object p1

    if-eqz p1, :cond_74

    .line 216
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView$2;->this$0:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->access$100(Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;)Lcom/codemao/creativecenter/callback/OnItemChangeListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/creativecenter/callback/OnItemChangeListener;->onFinishDrag()V

    .line 219
    :cond_74
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView$2;->this$0:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView$2;->this$0:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getAddDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 220
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView$2;->this$0:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView$2;->this$0:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getAddDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 2

    .line 196
    invoke-super {p0, p1}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;->onAnimationStart(Landroid/view/View;)V

    return-void
.end method
