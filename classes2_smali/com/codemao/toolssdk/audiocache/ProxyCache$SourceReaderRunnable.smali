.class Lcom/codemao/toolssdk/audiocache/ProxyCache$SourceReaderRunnable;
.super Ljava/lang/Object;
.source "ProxyCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/audiocache/ProxyCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SourceReaderRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/audiocache/ProxyCache;


# direct methods
.method private constructor <init>(Lcom/codemao/toolssdk/audiocache/ProxyCache;)V
    .registers 2

    .line 184
    iput-object p1, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache$SourceReaderRunnable;->this$0:Lcom/codemao/toolssdk/audiocache/ProxyCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/codemao/toolssdk/audiocache/ProxyCache;Lcom/codemao/toolssdk/audiocache/ProxyCache$1;)V
    .registers 3

    .line 184
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/audiocache/ProxyCache$SourceReaderRunnable;-><init>(Lcom/codemao/toolssdk/audiocache/ProxyCache;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache$SourceReaderRunnable;->this$0:Lcom/codemao/toolssdk/audiocache/ProxyCache;

    invoke-static {v0}, Lcom/codemao/toolssdk/audiocache/ProxyCache;->access$100(Lcom/codemao/toolssdk/audiocache/ProxyCache;)V

    return-void
.end method
