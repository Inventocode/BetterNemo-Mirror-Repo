.class public final Lokhttp3/internal/http2/Http2Connection$pushDataLater$$inlined$execute$1;
.super Ljava/lang/Object;
.source "Util.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/Http2Connection;->pushDataLater$okhttp(ILokio/BufferedSource;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Util.kt\nokhttp3/internal/Util$execute$1\n+ 2 Util.kt\nokhttp3/internal/Util\n+ 3 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection\n*L\n1#1,569:1\n377#2,9:570\n370#2,2:580\n372#2,3:590\n866#3:579\n867#3,8:582\n875#3:593\n*E\n"
.end annotation


# instance fields
.field final synthetic $buffer$inlined:Lokio/Buffer;

.field final synthetic $byteCount$inlined:I

.field final synthetic $inFinished$inlined:Z

.field final synthetic $name:Ljava/lang/String;

.field final synthetic $streamId$inlined:I

.field final synthetic this$0:Lokhttp3/internal/http2/Http2Connection;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lokhttp3/internal/http2/Http2Connection;ILokio/Buffer;IZ)V
    .registers 7

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$pushDataLater$$inlined$execute$1;->$name:Ljava/lang/String;

    iput-object p2, p0, Lokhttp3/internal/http2/Http2Connection$pushDataLater$$inlined$execute$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iput p3, p0, Lokhttp3/internal/http2/Http2Connection$pushDataLater$$inlined$execute$1;->$streamId$inlined:I

    iput-object p4, p0, Lokhttp3/internal/http2/Http2Connection$pushDataLater$$inlined$execute$1;->$buffer$inlined:Lokio/Buffer;

    iput p5, p0, Lokhttp3/internal/http2/Http2Connection$pushDataLater$$inlined$execute$1;->$byteCount$inlined:I

    iput-boolean p6, p0, Lokhttp3/internal/http2/Http2Connection$pushDataLater$$inlined$execute$1;->$inFinished$inlined:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 390
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$pushDataLater$$inlined$execute$1;->$name:Ljava/lang/String;

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

    .line 582
    :try_start_12
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$pushDataLater$$inlined$execute$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-static {v0}, Lokhttp3/internal/http2/Http2Connection;->access$getPushObserver$p(Lokhttp3/internal/http2/Http2Connection;)Lokhttp3/internal/http2/PushObserver;

    move-result-object v0

    iget v3, p0, Lokhttp3/internal/http2/Http2Connection$pushDataLater$$inlined$execute$1;->$streamId$inlined:I

    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection$pushDataLater$$inlined$execute$1;->$buffer$inlined:Lokio/Buffer;

    iget v5, p0, Lokhttp3/internal/http2/Http2Connection$pushDataLater$$inlined$execute$1;->$byteCount$inlined:I

    iget-boolean v6, p0, Lokhttp3/internal/http2/Http2Connection$pushDataLater$$inlined$execute$1;->$inFinished$inlined:Z

    invoke-interface {v0, v3, v4, v5, v6}, Lokhttp3/internal/http2/PushObserver;->onData(ILokio/BufferedSource;IZ)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 583
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$pushDataLater$$inlined$execute$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v3}, Lokhttp3/internal/http2/Http2Connection;->getWriter()Lokhttp3/internal/http2/Http2Writer;

    move-result-object v3

    iget v4, p0, Lokhttp3/internal/http2/Http2Connection$pushDataLater$$inlined$execute$1;->$streamId$inlined:I

    sget-object v5, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v3, v4, v5}, Lokhttp3/internal/http2/Http2Writer;->rstStream(ILokhttp3/internal/http2/ErrorCode;)V

    :cond_33
    if-nez v0, :cond_39

    .line 584
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection$pushDataLater$$inlined$execute$1;->$inFinished$inlined:Z

    if-eqz v0, :cond_55

    .line 585
    :cond_39
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$pushDataLater$$inlined$execute$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v0
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_3c} :catch_55
    .catchall {:try_start_12 .. :try_end_3c} :catchall_50

    .line 586
    :try_start_3c
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$pushDataLater$$inlined$execute$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-static {v3}, Lokhttp3/internal/http2/Http2Connection;->access$getCurrentPushRequests$p(Lokhttp3/internal/http2/Http2Connection;)Ljava/util/Set;

    move-result-object v3

    iget v4, p0, Lokhttp3/internal/http2/Http2Connection$pushDataLater$$inlined$execute$1;->$streamId$inlined:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_4b
    .catchall {:try_start_3c .. :try_end_4b} :catchall_4d

    .line 585
    :try_start_4b
    monitor-exit v0

    goto :goto_55

    :catchall_4d
    move-exception v3

    monitor-exit v0

    throw v3
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_50} :catch_55
    .catchall {:try_start_4b .. :try_end_50} :catchall_50

    :catchall_50
    move-exception v0

    .line 383
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v0

    :catch_55
    :cond_55
    :goto_55
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method
