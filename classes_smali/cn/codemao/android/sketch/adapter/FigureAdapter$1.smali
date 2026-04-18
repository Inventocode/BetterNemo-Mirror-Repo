.class Lcn/codemao/android/sketch/adapter/FigureAdapter$1;
.super Ljava/lang/Object;
.source "FigureAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/adapter/FigureAdapter;->onBindViewHolder(Lcn/codemao/android/sketch/adapter/FigureAdapter$Holder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/adapter/FigureAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/adapter/FigureAdapter;I)V
    .registers 3

    .line 54
    iput-object p1, p0, Lcn/codemao/android/sketch/adapter/FigureAdapter$1;->this$0:Lcn/codemao/android/sketch/adapter/FigureAdapter;

    iput p2, p0, Lcn/codemao/android/sketch/adapter/FigureAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    const-wide/16 v0, 0x1f4

    .line 57
    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick(J)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 61
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget v1, p0, Lcn/codemao/android/sketch/adapter/FigureAdapter$1;->val$position:I

    if-nez v1, :cond_19

    const/4 v0, 0x1

    :cond_19
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 63
    iget-object p1, p0, Lcn/codemao/android/sketch/adapter/FigureAdapter$1;->this$0:Lcn/codemao/android/sketch/adapter/FigureAdapter;

    invoke-static {p1}, Lcn/codemao/android/sketch/adapter/FigureAdapter;->access$000(Lcn/codemao/android/sketch/adapter/FigureAdapter;)Landroid/util/SparseArray;

    move-result-object p1

    iget v0, p0, Lcn/codemao/android/sketch/adapter/FigureAdapter$1;->val$position:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/codemao/android/sketch/view/figure/IFigure;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/figure/IFigure;->addFigure()V

    return-void
.end method
