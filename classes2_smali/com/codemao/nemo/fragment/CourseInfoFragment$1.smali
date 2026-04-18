.class Lcom/codemao/nemo/fragment/CourseInfoFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "CourseInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CourseInfoFragment;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/CourseInfoFragment;

.field final synthetic val$i6:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CourseInfoFragment;I)V
    .registers 3

    .line 67
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CourseInfoFragment$1;->this$0:Lcom/codemao/nemo/fragment/CourseInfoFragment;

    iput p2, p0, Lcom/codemao/nemo/fragment/CourseInfoFragment$1;->val$i6:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 71
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-nez p2, :cond_a

    return-void

    .line 75
    :cond_a
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    if-nez p2, :cond_18

    .line 77
    iget p2, p0, Lcom/codemao/nemo/fragment/CourseInfoFragment$1;->val$i6:I

    mul-int/lit8 p3, p2, 0x2

    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 78
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 80
    :cond_18
    iget-object p2, p0, Lcom/codemao/nemo/fragment/CourseInfoFragment$1;->this$0:Lcom/codemao/nemo/fragment/CourseInfoFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x41a00000  # 20.0f

    invoke-static {p2, p3}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 81
    iget-object p2, p0, Lcom/codemao/nemo/fragment/CourseInfoFragment$1;->this$0:Lcom/codemao/nemo/fragment/CourseInfoFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method
