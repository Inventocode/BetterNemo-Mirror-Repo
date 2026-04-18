.class Lcn/codemao/android/sketch/view/PickColorView$2;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "PickColorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/view/PickColorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dp11:I


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/view/PickColorView;I)V
    .registers 3

    .line 107
    iput p2, p0, Lcn/codemao/android/sketch/view/PickColorView$2;->val$dp11:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5

    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    const/4 p2, 0x0

    .line 111
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 112
    iget p2, p0, Lcn/codemao/android/sketch/view/PickColorView$2;->val$dp11:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method
