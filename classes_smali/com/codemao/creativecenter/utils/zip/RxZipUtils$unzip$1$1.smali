.class public final Lcom/codemao/creativecenter/utils/zip/RxZipUtils$unzip$1$1;
.super Ljava/lang/Object;
.source "RxZipUtils.kt"

# interfaces
.implements Lcom/duode/ziplibrary/OnZipStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/zip/RxZipUtils$unzip$1;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $it:Lio/reactivex/ObservableEmitter;

.field final synthetic this$0:Lcom/codemao/creativecenter/utils/zip/RxZipUtils$unzip$1;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/utils/zip/RxZipUtils$unzip$1;Lio/reactivex/ObservableEmitter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter;",
            ")V"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/zip/RxZipUtils$unzip$1$1;->this$0:Lcom/codemao/creativecenter/utils/zip/RxZipUtils$unzip$1;

    iput-object p2, p0, Lcom/codemao/creativecenter/utils/zip/RxZipUtils$unzip$1$1;->$it:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/String;)V
    .registers 3

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/zip/RxZipUtils$unzip$1$1;->$it:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .registers 3

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/zip/RxZipUtils$unzip$1$1;->$it:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onProgress(I)V
    .registers 3

    .line 24
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/zip/RxZipUtils$unzip$1$1;->this$0:Lcom/codemao/creativecenter/utils/zip/RxZipUtils$unzip$1;

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/zip/RxZipUtils$unzip$1;->$unzipInfo:Lcom/codemao/creativecenter/utils/zip/UnzipInfo;

    iput p1, v0, Lcom/codemao/creativecenter/utils/zip/UnzipInfo;->progress:I

    .line 25
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/zip/RxZipUtils$unzip$1$1;->$it:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method
