.class Lcn/codemao/android/sketch/adapter/StrokeAdapter$1;
.super Ljava/lang/Object;
.source "StrokeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/adapter/StrokeAdapter;->onBindViewHolder(Lcn/codemao/android/sketch/adapter/StrokeAdapter$Holder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/adapter/StrokeAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/adapter/StrokeAdapter;I)V
    .registers 3

    .line 49
    iput-object p1, p0, Lcn/codemao/android/sketch/adapter/StrokeAdapter$1;->this$0:Lcn/codemao/android/sketch/adapter/StrokeAdapter;

    iput p2, p0, Lcn/codemao/android/sketch/adapter/StrokeAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    const-wide/16 v0, 0x1f4

    .line 52
    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick(J)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 55
    :cond_9
    iget-object p1, p0, Lcn/codemao/android/sketch/adapter/StrokeAdapter$1;->this$0:Lcn/codemao/android/sketch/adapter/StrokeAdapter;

    invoke-static {p1}, Lcn/codemao/android/sketch/adapter/StrokeAdapter;->access$000(Lcn/codemao/android/sketch/adapter/StrokeAdapter;)I

    move-result p1

    iget v0, p0, Lcn/codemao/android/sketch/adapter/StrokeAdapter$1;->val$position:I

    if-ne p1, v0, :cond_14

    return-void

    .line 57
    :cond_14
    iget-object p1, p0, Lcn/codemao/android/sketch/adapter/StrokeAdapter$1;->this$0:Lcn/codemao/android/sketch/adapter/StrokeAdapter;

    invoke-static {p1}, Lcn/codemao/android/sketch/adapter/StrokeAdapter;->access$100(Lcn/codemao/android/sketch/adapter/StrokeAdapter;)Landroid/util/SparseArray;

    move-result-object p1

    iget v0, p0, Lcn/codemao/android/sketch/adapter/StrokeAdapter$1;->val$position:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/codemao/android/sketch/view/strokes/IStroke;

    .line 58
    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/strokes/IStroke;->getScrawlPaint()Lcn/codemao/android/sketch/view/paint/ScrawlPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->changeStroke(Lcn/codemao/android/sketch/view/strokes/IStroke;)V

    .line 59
    iget-object p1, p0, Lcn/codemao/android/sketch/adapter/StrokeAdapter$1;->this$0:Lcn/codemao/android/sketch/adapter/StrokeAdapter;

    iget v0, p0, Lcn/codemao/android/sketch/adapter/StrokeAdapter$1;->val$position:I

    invoke-static {p1, v0}, Lcn/codemao/android/sketch/adapter/StrokeAdapter;->access$002(Lcn/codemao/android/sketch/adapter/StrokeAdapter;I)I

    .line 60
    iget-object p1, p0, Lcn/codemao/android/sketch/adapter/StrokeAdapter$1;->this$0:Lcn/codemao/android/sketch/adapter/StrokeAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
