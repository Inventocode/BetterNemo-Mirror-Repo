.class public final Lokhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$tryExecute$1;
.super Ljava/lang/Object;
.source "Util.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/Http2Connection;->writeSynResetLater$okhttp(ILokhttp3/internal/http2/ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Util.kt\nokhttp3/internal/Util$execute$1\n+ 2 Util.kt\nokhttp3/internal/Util\n+ 3 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection\n*L\n1#1,569:1\n377#2,9:570\n332#3,6:579\n*E\n"
.end annotation


# instance fields
.field final synthetic $errorCode$inlined:Lokhttp3/internal/http2/ErrorCode;

.field final synthetic $name:Ljava/lang/String;

.field final synthetic $streamId$inlined:I

.field final synthetic this$0:Lokhttp3/internal/http2/Http2Connection;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lokhttp3/internal/http2/Http2Connection;ILokhttp3/internal/http2/ErrorCode;)V
    .registers 5

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$tryExecute$1;->$name:Ljava/lang/String;

    iput-object p2, p0, Lokhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$tryExecute$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iput p3, p0, Lokhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$tryExecute$1;->$streamId$inlined:I

    iput-object p4, p0, Lokhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$tryExecute$1;->$errorCode$inlined:Lokhttp3/internal/http2/ErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 390
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$tryExecute$1;->$name:Ljava/lang/String;

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

    .line 580
    :try_start_12
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$tryExecute$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iget v3, p0, Lokhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$tryExecute$1;->$streamId$inlined:I

    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$tryExecute$1;->$errorCode$inlined:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v3, v4}, Lokhttp3/internal/http2/Http2Connection;->writeSynReset$okhttp(ILokhttp3/internal/http2/ErrorCode;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1b} :catch_1e
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1c

    goto :goto_24

    :catchall_1c
    move-exception v0

    goto :goto_28

    :catch_1e
    move-exception v0

    .line 582
    :try_start_1f
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$tryExecute$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-static {v3, v0}, Lokhttp3/internal/http2/Http2Connection;->access$failConnection(Lokhttp3/internal/http2/Http2Connection;Ljava/io/IOException;)V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_1c

    .line 383
    :goto_24
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void

    :goto_28
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v0
.end method
