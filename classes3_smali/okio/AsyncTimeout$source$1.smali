.class public final Lokio/AsyncTimeout$source$1;
.super Ljava/lang/Object;
.source "AsyncTimeout.kt"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/AsyncTimeout;->source(Lokio/Source;)Lokio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $source:Lokio/Source;

.field final synthetic this$0:Lokio/AsyncTimeout;


# direct methods
.method constructor <init>(Lokio/AsyncTimeout;Lokio/Source;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Source;",
            ")V"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lokio/AsyncTimeout$source$1;->this$0:Lokio/AsyncTimeout;

    iput-object p2, p0, Lokio/AsyncTimeout$source$1;->$source:Lokio/Source;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    .line 171
    iget-object v0, p0, Lokio/AsyncTimeout$source$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    .line 173
    :try_start_5
    iget-object v0, p0, Lokio/AsyncTimeout$source$1;->$source:Lokio/Source;

    invoke-interface {v0}, Lokio/Source;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_13
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    const/4 v0, 0x1

    .line 178
    iget-object v1, p0, Lokio/AsyncTimeout$source$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lokio/AsyncTimeout;->exit$jvm(Z)V

    return-void

    :catchall_11
    move-exception v0

    goto :goto_1b

    :catch_13
    move-exception v0

    .line 176
    :try_start_14
    iget-object v1, p0, Lokio/AsyncTimeout$source$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lokio/AsyncTimeout;->exit$jvm(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_11

    .line 178
    :goto_1b
    iget-object v1, p0, Lokio/AsyncTimeout$source$1;->this$0:Lokio/AsyncTimeout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lokio/AsyncTimeout;->exit$jvm(Z)V

    throw v0
.end method

.method public read(Lokio/Buffer;J)J
    .registers 5

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lokio/AsyncTimeout$source$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    .line 159
    :try_start_a
    iget-object v0, p0, Lokio/AsyncTimeout$source$1;->$source:Lokio/Source;

    invoke-interface {v0, p1, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide p1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_10} :catch_19
    .catchall {:try_start_a .. :try_end_10} :catchall_17

    const/4 p3, 0x1

    .line 165
    iget-object v0, p0, Lokio/AsyncTimeout$source$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v0, p3}, Lokio/AsyncTimeout;->exit$jvm(Z)V

    return-wide p1

    :catchall_17
    move-exception p1

    goto :goto_21

    :catch_19
    move-exception p1

    .line 163
    :try_start_1a
    iget-object p2, p0, Lokio/AsyncTimeout$source$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {p2, p1}, Lokio/AsyncTimeout;->exit$jvm(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_17

    .line 165
    :goto_21
    iget-object p2, p0, Lokio/AsyncTimeout$source$1;->this$0:Lokio/AsyncTimeout;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lokio/AsyncTimeout;->exit$jvm(Z)V

    throw p1
.end method

.method public timeout()Lokio/AsyncTimeout;
    .registers 2

    .line 182
    iget-object v0, p0, Lokio/AsyncTimeout$source$1;->this$0:Lokio/AsyncTimeout;

    return-object v0
.end method

.method public bridge synthetic timeout()Lokio/Timeout;
    .registers 2

    .line 154
    invoke-virtual {p0}, Lokio/AsyncTimeout$source$1;->timeout()Lokio/AsyncTimeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokio/AsyncTimeout$source$1;->$source:Lokio/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
