.class Lcn/codemao/android/sketch/view/menu/ColorMenu$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ColorMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/view/menu/ColorMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/view/menu/ColorMenu;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/view/menu/ColorMenu;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu$2;->this$0:Lcn/codemao/android/sketch/view/menu/ColorMenu;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    .line 112
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 114
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 115
    iget-object p2, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu$2;->this$0:Lcn/codemao/android/sketch/view/menu/ColorMenu;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p3

    invoke-static {p2, p3}, Lcn/codemao/android/sketch/view/menu/ColorMenu;->access$002(Lcn/codemao/android/sketch/view/menu/ColorMenu;I)I

    .line 117
    iget-object p2, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu$2;->this$0:Lcn/codemao/android/sketch/view/menu/ColorMenu;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    invoke-static {p2, p1}, Lcn/codemao/android/sketch/view/menu/ColorMenu;->access$102(Lcn/codemao/android/sketch/view/menu/ColorMenu;I)I

    .line 119
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu$2;->this$0:Lcn/codemao/android/sketch/view/menu/ColorMenu;

    invoke-static {p1}, Lcn/codemao/android/sketch/view/menu/ColorMenu;->access$200(Lcn/codemao/android/sketch/view/menu/ColorMenu;)V

    return-void
.end method
