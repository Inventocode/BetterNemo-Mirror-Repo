.class final Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$4;
.super Lkotlin/jvm/internal/Lambda;
.source "RxBlueClientUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->connect(Lcom/codemao/toolssdk/model/dsbridge/ConnectData;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/reactivex/disposables/Disposable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/utils/RxBlueClientUtils;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/utils/RxBlueClientUtils;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$4;->this$0:Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 233
    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$4;->invoke(Lio/reactivex/disposables/Disposable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 238
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$4;->this$0:Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

    invoke-static {v0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->access$getCompositeDisposable$p(Lcom/codemao/toolssdk/utils/RxBlueClientUtils;)Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
