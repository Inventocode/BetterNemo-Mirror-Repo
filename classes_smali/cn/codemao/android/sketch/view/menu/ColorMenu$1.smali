.class Lcn/codemao/android/sketch/view/menu/ColorMenu$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
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
.field final synthetic val$dp:I


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/view/menu/ColorMenu;I)V
    .registers 3

    .line 102
    iput p2, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu$1;->val$dp:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5

    .line 105
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 106
    iget p2, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu$1;->val$dp:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
