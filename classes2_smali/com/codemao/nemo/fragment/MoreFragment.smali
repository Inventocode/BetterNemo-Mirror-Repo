.class public final Lcom/codemao/nemo/fragment/MoreFragment;
.super Lcom/giu/xzz/LazyLoadFragment;
.source "MoreFragment.kt"


# instance fields
.field public _$_findViewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/MoreFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/giu/xzz/LazyLoadFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/fragment/MoreFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d0161

    return v0
.end method

.method protected getData()V
    .registers 1

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public synthetic onDestroyView()V
    .registers 1

    invoke-super {p0}, Lcom/giu/xzz/LazyLoadFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/MoreFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method protected showError()V
    .registers 1

    return-void
.end method
