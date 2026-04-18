.class public final Lcom/codemao/nemo/biz/knworklist/WorkListNemoFragment;
.super Lcom/codemao/toolssdk/fragment/WorkListFragment;
.source "WorkListNemoFragment.kt"


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

    .line 10
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/biz/knworklist/WorkListNemoFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/WorkListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/biz/knworklist/WorkListNemoFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 13
    invoke-super {p0, p1}, Lcom/codemao/toolssdk/fragment/WorkListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 14
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 41
    invoke-super {p0}, Lcom/codemao/toolssdk/fragment/WorkListFragment;->onDestroy()V

    .line 42
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic onDestroyView()V
    .registers 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/codemao/nemo/biz/knworklist/WorkListNemoFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onWorkPublishSuccess(Lcom/codemao/nemo/event/CreatePublishSuccessKnEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/WorkListFragment;->refreshPage()V

    return-void
.end method

.method public openCreateBcmActivity(Landroid/app/Activity;JLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 16

    const-string v0, "toolType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolMode"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v1, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity;->Companion:Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity$Companion;

    .line 27
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v2, p1

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    .line 25
    invoke-virtual/range {v1 .. v7}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity$Companion;->startActivity(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
