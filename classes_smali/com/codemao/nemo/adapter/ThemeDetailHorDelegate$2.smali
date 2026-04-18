.class Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate$2;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ThemeDetailHorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;

.field final synthetic val$cmHorLayout:Lcom/codemao/nemo/view/CmHorLayoutWithFooter;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;Lcom/codemao/nemo/view/CmHorLayoutWithFooter;)V
    .registers 3

    .line 95
    iput-object p1, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate$2;->this$0:Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate$2;->val$cmHorLayout:Lcom/codemao/nemo/view/CmHorLayoutWithFooter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 8

    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 99
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p3

    if-nez p3, :cond_a

    return-void

    .line 103
    :cond_a
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p3

    const/high16 p4, 0x41800000  # 16.0f

    const/high16 v0, 0x41400000  # 12.0f

    if-nez p3, :cond_2c

    .line 105
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate$2;->this$0:Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;

    invoke-static {v2}, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;->access$100(Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;)Z

    move-result v2

    if-eqz v2, :cond_23

    const/high16 v2, 0x41f00000  # 30.0f

    goto :goto_25

    :cond_23
    const/high16 v2, 0x41a00000  # 20.0f

    :goto_25
    invoke-static {v1, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    goto :goto_43

    .line 107
    :cond_2c
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate$2;->this$0:Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;

    invoke-static {v2}, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;->access$100(Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;)Z

    move-result v2

    if-eqz v2, :cond_3b

    const/high16 v2, 0x41800000  # 16.0f

    goto :goto_3d

    :cond_3b
    const/high16 v2, 0x41400000  # 12.0f

    :goto_3d
    invoke-static {v1, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 109
    :goto_43
    iget-object v1, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate$2;->val$cmHorLayout:Lcom/codemao/nemo/view/CmHorLayoutWithFooter;

    invoke-virtual {v1}, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->getDatas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p3, v1, :cond_67

    .line 110
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate$2;->this$0:Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;

    invoke-static {p3}, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;->access$100(Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;)Z

    move-result p3

    if-eqz p3, :cond_5e

    goto :goto_60

    :cond_5e
    const/high16 p4, 0x41400000  # 12.0f

    :goto_60
    invoke-static {p2, p4}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_6a

    :cond_67
    const/4 p2, 0x0

    .line 112
    iput p2, p1, Landroid/graphics/Rect;->right:I

    :goto_6a
    return-void
.end method
