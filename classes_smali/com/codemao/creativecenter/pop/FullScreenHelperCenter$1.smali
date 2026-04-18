.class Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "FullScreenHelperCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->initPopupContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;)V
    .registers 2

    .line 116
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5

    const/4 p2, 0x1

    .line 119
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
