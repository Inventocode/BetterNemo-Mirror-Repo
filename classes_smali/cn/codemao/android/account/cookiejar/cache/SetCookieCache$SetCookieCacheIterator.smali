.class Lcn/codemao/android/account/cookiejar/cache/SetCookieCache$SetCookieCacheIterator;
.super Ljava/lang/Object;
.source "SetCookieCache.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/account/cookiejar/cache/SetCookieCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetCookieCacheIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lokhttp3/Cookie;",
        ">;"
    }
.end annotation


# instance fields
.field private iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcn/codemao/android/account/cookiejar/cache/IdentifiableCookie;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/codemao/android/account/cookiejar/cache/SetCookieCache;


# direct methods
.method constructor <init>(Lcn/codemao/android/account/cookiejar/cache/SetCookieCache;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcn/codemao/android/account/cookiejar/cache/SetCookieCache$SetCookieCacheIterator;->this$0:Lcn/codemao/android/account/cookiejar/cache/SetCookieCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Lcn/codemao/android/account/cookiejar/cache/SetCookieCache;->access$000(Lcn/codemao/android/account/cookiejar/cache/SetCookieCache;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/account/cookiejar/cache/SetCookieCache$SetCookieCacheIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 63
    iget-object v0, p0, Lcn/codemao/android/account/cookiejar/cache/SetCookieCache$SetCookieCacheIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 53
    invoke-virtual {p0}, Lcn/codemao/android/account/cookiejar/cache/SetCookieCache$SetCookieCacheIterator;->next()Lokhttp3/Cookie;

    move-result-object v0

    return-object v0
.end method

.method public next()Lokhttp3/Cookie;
    .registers 2

    .line 68
    iget-object v0, p0, Lcn/codemao/android/account/cookiejar/cache/SetCookieCache$SetCookieCacheIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/account/cookiejar/cache/IdentifiableCookie;

    invoke-virtual {v0}, Lcn/codemao/android/account/cookiejar/cache/IdentifiableCookie;->getCookie()Lokhttp3/Cookie;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .line 73
    iget-object v0, p0, Lcn/codemao/android/account/cookiejar/cache/SetCookieCache$SetCookieCacheIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
