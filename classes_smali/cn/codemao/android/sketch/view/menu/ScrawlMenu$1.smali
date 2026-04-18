.class Lcn/codemao/android/sketch/view/menu/ScrawlMenu$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ScrawlMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/view/menu/ScrawlMenu;->registerStrokes(Landroid/util/SparseArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/view/menu/ScrawlMenu;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/view/menu/ScrawlMenu;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcn/codemao/android/sketch/view/menu/ScrawlMenu$1;->this$0:Lcn/codemao/android/sketch/view/menu/ScrawlMenu;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5

    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 66
    iget-object p2, p0, Lcn/codemao/android/sketch/view/menu/ScrawlMenu$1;->this$0:Lcn/codemao/android/sketch/view/menu/ScrawlMenu;

    invoke-static {p2}, Lcn/codemao/android/sketch/view/menu/ScrawlMenu;->access$000(Lcn/codemao/android/sketch/view/menu/ScrawlMenu;)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
