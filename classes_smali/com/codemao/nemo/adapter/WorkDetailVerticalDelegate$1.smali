.class Lcom/codemao/nemo/adapter/WorkDetailVerticalDelegate$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "WorkDetailVerticalDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/WorkDetailVerticalDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/WorkDetailVerticalDelegate;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/WorkDetailVerticalDelegate;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/codemao/nemo/adapter/WorkDetailVerticalDelegate$1;->this$0:Lcom/codemao/nemo/adapter/WorkDetailVerticalDelegate;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 10

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 86
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p3

    if-nez p3, :cond_a

    return-void

    .line 90
    :cond_a
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p3

    .line 91
    iget-object p4, p0, Lcom/codemao/nemo/adapter/WorkDetailVerticalDelegate$1;->this$0:Lcom/codemao/nemo/adapter/WorkDetailVerticalDelegate;

    invoke-static {p4}, Lcom/codemao/nemo/adapter/WorkDetailVerticalDelegate;->access$000(Lcom/codemao/nemo/adapter/WorkDetailVerticalDelegate;)Z

    move-result p4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x41c80000  # 25.0f

    if-eqz p4, :cond_79

    .line 93
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    const/4 v3, 0x4

    if-ge p3, v3, :cond_22

    goto :goto_24

    :cond_22
    const/high16 v1, 0x41c80000  # 25.0f

    :goto_24
    invoke-static {p4, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p4

    iput p4, p1, Landroid/graphics/Rect;->top:I

    .line 95
    rem-int/2addr p3, v3

    const/high16 p4, 0x41700000  # 15.0f

    if-eqz p3, :cond_6e

    const/high16 v1, 0x40a00000  # 5.0f

    const/high16 v2, 0x41200000  # 10.0f

    if-eq p3, v0, :cond_59

    const/4 v0, 0x2

    if-eq p3, v0, :cond_44

    .line 108
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p4}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_c4

    .line 104
    :cond_44
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p3

    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 105
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_c4

    .line 100
    :cond_59
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p3

    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 101
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_c4

    .line 97
    :cond_6e
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p4}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_c4

    .line 112
    :cond_79
    rem-int/lit8 p4, p3, 0x2

    const/high16 v3, 0x41a00000  # 20.0f

    const/high16 v4, 0x40f00000  # 7.5f

    if-nez p4, :cond_96

    .line 113
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, v3}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p4

    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 114
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, v4}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p4

    iput p4, p1, Landroid/graphics/Rect;->right:I

    goto :goto_aa

    .line 116
    :cond_96
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, v4}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p4

    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 117
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, v3}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p4

    iput p4, p1, Landroid/graphics/Rect;->right:I

    :goto_aa
    if-eqz p3, :cond_ba

    if-ne p3, v0, :cond_af

    goto :goto_ba

    .line 122
    :cond_af
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_c4

    .line 120
    :cond_ba
    :goto_ba
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :goto_c4
    return-void
.end method
