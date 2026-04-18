.class public final Lcom/codemao/toolssdk/common/LazyDelegateKt;
.super Ljava/lang/Object;
.source "LazyDelegate.kt"


# direct methods
.method public static final lazyDelegate(Lkotlin/jvm/functions/Function0;)Lcom/codemao/toolssdk/common/LazyDelegate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)",
            "Lcom/codemao/toolssdk/common/LazyDelegate<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/codemao/toolssdk/common/LazyDelegate;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/common/LazyDelegate;-><init>(Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method
