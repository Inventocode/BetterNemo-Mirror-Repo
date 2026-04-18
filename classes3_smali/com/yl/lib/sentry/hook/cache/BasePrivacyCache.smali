.class public abstract Lcom/yl/lib/sentry/hook/cache/BasePrivacyCache;
.super Ljava/lang/Object;
.source "BasePrivacyCache.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;)V
    .registers 3

    const-string v0, "cacheType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object p1, Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;->MEMORY:Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;

    return-void
.end method
