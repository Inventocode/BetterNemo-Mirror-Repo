.class public final Lokhttp3/internal/connection/Transmitter$timeout$1;
.super Lokio/AsyncTimeout;
.source "Transmitter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/connection/Transmitter;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Call;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/connection/Transmitter;


# direct methods
.method constructor <init>(Lokhttp3/internal/connection/Transmitter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lokhttp3/internal/connection/Transmitter$timeout$1;->this$0:Lokhttp3/internal/connection/Transmitter;

    invoke-direct {p0}, Lokio/AsyncTimeout;-><init>()V

    return-void
.end method


# virtual methods
.method protected timedOut()V
    .registers 2

    .line 57
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter$timeout$1;->this$0:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v0}, Lokhttp3/internal/connection/Transmitter;->cancel()V

    return-void
.end method
