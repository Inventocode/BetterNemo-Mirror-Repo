.class Lcn/codemao/android/sketch/view/menu/ToolsMenu$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ToolsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/view/menu/ToolsMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dp4:I


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/view/menu/ToolsMenu;I)V
    .registers 3

    .line 148
    iput p2, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu$1;->val$dp4:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5

    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 152
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-eqz p2, :cond_d

    .line 153
    iget p2, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu$1;->val$dp4:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 154
    :cond_d
    iget p2, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu$1;->val$dp4:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
