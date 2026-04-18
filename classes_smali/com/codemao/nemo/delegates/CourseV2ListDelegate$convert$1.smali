.class public final Lcom/codemao/nemo/delegates/CourseV2ListDelegate$convert$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "CourseV2TopDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/delegates/CourseV2ListDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $cmHorLayout:Lcom/codemao/nemo/view/CourseListSlipeLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/codemao/nemo/view/CourseListSlipeLayout<",
            "Lcom/codemao/nemo/bean/viewmodel/SubjectItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/codemao/nemo/delegates/CourseV2ListDelegate;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/delegates/CourseV2ListDelegate;Lcom/codemao/nemo/view/CourseListSlipeLayout;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/delegates/CourseV2ListDelegate;",
            "Lcom/codemao/nemo/view/CourseListSlipeLayout<",
            "Lcom/codemao/nemo/bean/viewmodel/SubjectItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/nemo/delegates/CourseV2ListDelegate$convert$1;->this$0:Lcom/codemao/nemo/delegates/CourseV2ListDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/delegates/CourseV2ListDelegate$convert$1;->$cmHorLayout:Lcom/codemao/nemo/view/CourseListSlipeLayout;

    .line 197
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 7

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 200
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p3

    if-nez p3, :cond_1e

    return-void

    .line 201
    :cond_1e
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p3

    const/high16 p4, 0x41400000  # 12.0f

    if-nez p3, :cond_3e

    .line 203
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/delegates/CourseV2ListDelegate$convert$1;->this$0:Lcom/codemao/nemo/delegates/CourseV2ListDelegate;

    invoke-static {v1}, Lcom/codemao/nemo/delegates/CourseV2ListDelegate;->access$isPad$p(Lcom/codemao/nemo/delegates/CourseV2ListDelegate;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/high16 v1, 0x41f00000  # 30.0f

    goto :goto_37

    :cond_35
    const/high16 v1, 0x41a00000  # 20.0f

    :goto_37
    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_55

    .line 205
    :cond_3e
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/delegates/CourseV2ListDelegate$convert$1;->this$0:Lcom/codemao/nemo/delegates/CourseV2ListDelegate;

    invoke-static {v1}, Lcom/codemao/nemo/delegates/CourseV2ListDelegate;->access$isPad$p(Lcom/codemao/nemo/delegates/CourseV2ListDelegate;)Z

    move-result v1

    if-eqz v1, :cond_4d

    const/high16 v1, 0x41400000  # 12.0f

    goto :goto_4f

    :cond_4d
    const/high16 v1, 0x41200000  # 10.0f

    :goto_4f
    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 207
    :goto_55
    iget-object v0, p0, Lcom/codemao/nemo/delegates/CourseV2ListDelegate$convert$1;->$cmHorLayout:Lcom/codemao/nemo/view/CourseListSlipeLayout;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/CourseListSlipeLayout;->getDatas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_79

    .line 208
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/codemao/nemo/delegates/CourseV2ListDelegate$convert$1;->this$0:Lcom/codemao/nemo/delegates/CourseV2ListDelegate;

    invoke-static {p3}, Lcom/codemao/nemo/delegates/CourseV2ListDelegate;->access$isPad$p(Lcom/codemao/nemo/delegates/CourseV2ListDelegate;)Z

    move-result p3

    if-eqz p3, :cond_70

    goto :goto_72

    :cond_70
    const/high16 p4, 0x41000000  # 8.0f

    :goto_72
    invoke-static {p2, p4}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_7c

    :cond_79
    const/4 p2, 0x0

    .line 210
    iput p2, p1, Landroid/graphics/Rect;->right:I

    :goto_7c
    return-void
.end method
