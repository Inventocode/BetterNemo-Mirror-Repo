.class public abstract Lcom/ljwx/baseapp/vm/model/BaseDataRepository$QuickObserver;
.super Ljava/lang/Object;
.source "BaseDataRepository.kt"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ljwx/baseapp/vm/model/BaseDataRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "QuickObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ljwx/baseapp/vm/model/BaseDataRepository;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ljwx/baseapp/vm/model/BaseDataRepository<",
            "TServer;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ljwx/baseapp/vm/model/BaseDataRepository;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/ljwx/baseapp/vm/model/BaseDataRepository$QuickObserver;->this$0:Lcom/ljwx/baseapp/vm/model/BaseDataRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponseError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7

    .line 229
    sget-object p2, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    iget-object v0, p0, Lcom/ljwx/baseapp/vm/model/BaseDataRepository$QuickObserver;->this$0:Lcom/ljwx/baseapp/vm/model/BaseDataRepository;

    invoke-virtual {v0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "请求错误,code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0, p1, p3}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository$QuickObserver;->onResponseErrorGlobal(Ljava/lang/Integer;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponseErrorGlobal(Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .registers 4

    .line 234
    invoke-static {}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->access$getGlobalObserverOnError$cp()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-void
.end method

.method public onResponseFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    .line 220
    sget-object p3, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    iget-object v0, p0, Lcom/ljwx/baseapp/vm/model/BaseDataRepository$QuickObserver;->this$0:Lcom/ljwx/baseapp/vm/model/BaseDataRepository;

    invoke-virtual {v0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "请求失败,code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0, p1, p2}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository$QuickObserver;->onResponseFailGlobal(Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public onResponseFailCompat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    .line 211
    invoke-static {p1, v0}, Lcom/ljwx/baseapp/extensions/StringKt;->toIntSafe(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository$QuickObserver;->onResponseFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onResponseFailGlobal(Ljava/lang/Integer;Ljava/lang/String;)V
    .registers 4

    .line 225
    invoke-static {}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->access$getGlobalResponseFail$cp()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-void
.end method

.method public abstract onResponseSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/ljwx/baseapp/vm/model/BaseDataRepository$QuickObserver;->this$0:Lcom/ljwx/baseapp/vm/model/BaseDataRepository;

    invoke-virtual {v0, p1}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->autoClear(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
