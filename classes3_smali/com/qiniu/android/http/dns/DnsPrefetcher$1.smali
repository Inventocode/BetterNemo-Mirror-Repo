.class Lcom/qiniu/android/http/dns/DnsPrefetcher$1;
.super Ljava/lang/Object;
.source "DnsPrefetcher.java"

# interfaces
.implements Lcom/qiniu/android/http/dns/HappyDns$DnsQueryErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/dns/DnsPrefetcher;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/http/dns/DnsPrefetcher;


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/dns/DnsPrefetcher;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/qiniu/android/http/dns/DnsPrefetcher$1;->this$0:Lcom/qiniu/android/http/dns/DnsPrefetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queryError(Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 3

    .line 41
    iget-object p2, p0, Lcom/qiniu/android/http/dns/DnsPrefetcher$1;->this$0:Lcom/qiniu/android/http/dns/DnsPrefetcher;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/qiniu/android/http/dns/DnsPrefetcher;->lastPrefetchErrorMessage:Ljava/lang/String;

    return-void
.end method
