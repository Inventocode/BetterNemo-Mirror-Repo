.class public final Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity$attachTabLayoutViewPager$1;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "QuickTabLayoutActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity;->attachTabLayoutViewPager(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity<",
            "TBinding;TViewModel;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity<",
            "TBinding;TViewModel;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity$attachTabLayoutViewPager$1;->this$0:Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity;

    .line 75
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .registers 4

    .line 81
    iget-object v0, p0, Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity$attachTabLayoutViewPager$1;->this$0:Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity;

    invoke-static {v0}, Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity;->access$getMTabFragments$p(Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "mTabFragments.values"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "mTabFragments.values.toList()[position]"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public getItemCount()I
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity$attachTabLayoutViewPager$1;->this$0:Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity;

    invoke-static {v0}, Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity;->access$getMTabFragments$p(Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method
