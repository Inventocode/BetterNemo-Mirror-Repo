.class public final Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView$showStateLoading$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LoadMoreView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;->showStateLoading(Ljava/lang/Integer;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoadMoreView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadMoreView.kt\ncom/ljwx/recyclerview/loadmore/view/LoadMoreView$showStateLoading$1\n*L\n1#1,135:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $layout:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;


# direct methods
.method public constructor <init>(Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;Ljava/lang/Integer;)V
    .registers 3

    iput-object p1, p0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView$showStateLoading$1;->this$0:Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;

    iput-object p2, p0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView$showStateLoading$1;->$layout:Ljava/lang/Integer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/View;
    .registers 5

    .line 70
    iget-object v0, p0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView$showStateLoading$1;->this$0:Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView$showStateLoading$1;->$layout:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView$showStateLoading$1;->this$0:Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v1, "from(context).inflate(layout, this, false)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 69
    invoke-virtual {p0}, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView$showStateLoading$1;->invoke()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
