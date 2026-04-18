.class public final Lokhttp3/internal/http2/Http2Connection$pushHeadersLater$$inlined$tryExecute$1;
.super Ljava/lang/Object;
.source "Util.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/Http2Connection;->pushHeadersLater$okhttp(ILjava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Util.kt\nokhttp3/internal/Util$execute$1\n+ 2 Util.kt\nokhttp3/internal/Util\n+ 3 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection\n*L\n1#1,569:1\n377#2,9:570\n370#2,2:581\n372#2,3:590\n837#3,2:579\n839#3,7:583\n846#3:593\n*E\n"
.end annotation


# instance fields
.field final synthetic $inFinished$inlined:Z

.field final synthetic $name:Ljava/lang/String;

.field final synthetic $requestHeaders$inlined:Ljava/util/List;

.field final synthetic $streamId$inlined:I

.field final synthetic this$0:Lokhttp3/internal/http2/Http2Connection;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lokhttp3/internal/http2/Http2Connection;ILjava/util/List;Z)V
    .registers 6

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$pushHeadersLater$$inlined$tryExecute$1;->$name:Ljava/lang/String;

    iput-object p2, p0, Lokhttp3/internal/http2/Http2Connection$pushHeadersLater$$inlined$tryExecute$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iput p3, p0, Lokhttp3/internal/http2/Http2Connection$pushHeadersLater$$inlined$tryExecute$1;->$streamId$inlined:I

    iput-object p4, p0, Lokhttp3/internal/http2/Http2Connection$pushHeadersLater$$inlined$tryExecute$1;->$requestHeaders$inlined:Ljava/util/List;

    iput-boolean p5, p0, Lokhttp3/internal/http2/Http2Connection$pushHeadersLater$$inlined$tryExecute$1;->$inFinished$inlined:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 390
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$pushHeadersLater$$inlined$tryExecute$1;->$name:Ljava/lang/String;

    .line 377
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "currentThread"

    .line 378
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 379
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 579
    :try_start_12
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$pushHeadersLater$$inlined$tryExecute$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-static {v0}, Lokhttp3/internal/http2/Http2Connection;->access$getPushObserver$p(Lokhttp3/internal/http2/Http2Connection;)Lokhttp3/internal/http2/PushObserver;

    move-result-object v0

    iget v3, p0, Lokhttp3/internal/http2/Http2Connection$pushHeadersLater$$inlined$tryExecute$1;->$streamId$inlined:I

    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection$pushHeadersLater$$inlined$tryExecute$1;->$requestHeaders$inlined:Ljava/util/List;

    iget-boolean v5, p0, Lokhttp3/internal/http2/Http2Connection$pushHeadersLater$$inlined$tryExecute$1;->$inFinished$inlined:Z

    invoke-interface {v0, v3, v4, v5}, Lokhttp3/internal/http2/PushObserver;->onHeaders(ILjava/util/List;Z)Z

    move-result v0
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_52

    if-eqz v0, :cond_31

    .line 583
    :try_start_24
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$pushHeadersLater$$inlined$tryExecute$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v3}, Lokhttp3/internal/http2/Http2Connection;->getWriter()Lokhttp3/internal/http2/Http2Writer;

    move-result-object v3

    iget v4, p0, Lokhttp3/internal/http2/Http2Connection$pushHeadersLater$$inlined$tryExecute$1;->$streamId$inlined:I

    sget-object v5, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v3, v4, v5}, Lokhttp3/internal/http2/Http2Writer;->rstStream(ILokhttp3/internal/http2/ErrorCode;)V

    :cond_31
    if-nez v0, :cond_37

    .line 584
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection$pushHeadersLater$$inlined$tryExecute$1;->$inFinished$inlined:Z

    if-eqz v0, :cond_4e

    .line 585
    :cond_37
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$pushHeadersLater$$inlined$tryExecute$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v0
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_3a} :catch_4e
    .catchall {:try_start_24 .. :try_end_3a} :catchall_52

    .line 586
    :try_start_3a
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$pushHeadersLater$$inlined$tryExecute$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-static {v3}, Lokhttp3/internal/http2/Http2Connection;->access$getCurrentPushRequests$p(Lokhttp3/internal/http2/Http2Connection;)Ljava/util/Set;

    move-result-object v3

    iget v4, p0, Lokhttp3/internal/http2/Http2Connection$pushHeadersLater$$inlined$tryExecute$1;->$streamId$inlined:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_49
    .catchall {:try_start_3a .. :try_end_49} :catchall_4b

    .line 585
    :try_start_49
    monitor-exit v0

    goto :goto_4e

    :catchall_4b
    move-exception v3

    monitor-exit v0

    throw v3
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4e} :catch_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_52

    .line 383
    :catch_4e
    :cond_4e
    :goto_4e
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void

    :catchall_52
    move-exception v0

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v0
.end method
