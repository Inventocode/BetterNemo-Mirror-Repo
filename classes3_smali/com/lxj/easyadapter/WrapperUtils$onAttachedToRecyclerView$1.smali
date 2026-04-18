.class public final Lcom/lxj/easyadapter/WrapperUtils$onAttachedToRecyclerView$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "WrapperUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/easyadapter/WrapperUtils;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Lkotlin/jvm/functions/Function3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $fn:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/recyclerview/widget/GridLayoutManager;",
            "Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field final synthetic $spanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function3;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/recyclerview/widget/GridLayoutManager;",
            "-",
            "Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
            "Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lxj/easyadapter/WrapperUtils$onAttachedToRecyclerView$1;->$fn:Lkotlin/jvm/functions/Function3;

    iput-object p2, p0, Lcom/lxj/easyadapter/WrapperUtils$onAttachedToRecyclerView$1;->$layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iput-object p3, p0, Lcom/lxj/easyadapter/WrapperUtils$onAttachedToRecyclerView$1;->$spanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 18
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 6

    .line 20
    iget-object v0, p0, Lcom/lxj/easyadapter/WrapperUtils$onAttachedToRecyclerView$1;->$fn:Lkotlin/jvm/functions/Function3;

    iget-object v1, p0, Lcom/lxj/easyadapter/WrapperUtils$onAttachedToRecyclerView$1;->$layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/lxj/easyadapter/WrapperUtils$onAttachedToRecyclerView$1;->$spanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    const-string v3, "spanSizeLookup"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method
