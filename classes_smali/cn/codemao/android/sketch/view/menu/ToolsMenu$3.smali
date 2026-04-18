.class Lcn/codemao/android/sketch/view/menu/ToolsMenu$3;
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
.field final synthetic this$0:Lcn/codemao/android/sketch/view/menu/ToolsMenu;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)V
    .registers 2

    .line 188
    iput-object p1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu$3;->this$0:Lcn/codemao/android/sketch/view/menu/ToolsMenu;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5

    .line 191
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    const/4 p4, 0x0

    .line 192
    iput p4, p1, Landroid/graphics/Rect;->top:I

    .line 193
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-eqz p2, :cond_21

    const/4 p3, 0x1

    if-eq p2, p3, :cond_18

    .line 203
    iget-object p2, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu$3;->this$0:Lcn/codemao/android/sketch/view/menu/ToolsMenu;

    invoke-static {p2}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->access$500(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_29

    .line 200
    :cond_18
    iget-object p2, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu$3;->this$0:Lcn/codemao/android/sketch/view/menu/ToolsMenu;

    invoke-static {p2}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->access$400(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_29

    .line 196
    :cond_21
    iget-object p2, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu$3;->this$0:Lcn/codemao/android/sketch/view/menu/ToolsMenu;

    invoke-static {p2}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->access$300(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :goto_29
    return-void
.end method
