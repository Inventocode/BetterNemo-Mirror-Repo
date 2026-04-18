.class Lcom/codemao/toolssdk/audiocache/Pinger$PingCallable;
.super Ljava/lang/Object;
.source "Pinger.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/audiocache/Pinger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PingCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/audiocache/Pinger;


# direct methods
.method private constructor <init>(Lcom/codemao/toolssdk/audiocache/Pinger;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/codemao/toolssdk/audiocache/Pinger$PingCallable;->this$0:Lcom/codemao/toolssdk/audiocache/Pinger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/codemao/toolssdk/audiocache/Pinger;Lcom/codemao/toolssdk/audiocache/Pinger$1;)V
    .registers 3

    .line 119
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/audiocache/Pinger$PingCallable;-><init>(Lcom/codemao/toolssdk/audiocache/Pinger;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/Pinger$PingCallable;->this$0:Lcom/codemao/toolssdk/audiocache/Pinger;

    invoke-static {v0}, Lcom/codemao/toolssdk/audiocache/Pinger;->access$100(Lcom/codemao/toolssdk/audiocache/Pinger;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lcom/codemao/toolssdk/audiocache/Pinger$PingCallable;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
