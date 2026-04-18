.class public Lcn/codemao/android/account/cookiejar/cache/SetCookieCache;
.super Ljava/lang/Object;
.source "SetCookieCache.java"

# interfaces
.implements Lcn/codemao/android/account/cookiejar/cache/CookieCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/account/cookiejar/cache/SetCookieCache$SetCookieCacheIterator;
    }
.end annotation


# instance fields
.field private cookies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcn/codemao/android/account/cookiejar/cache/IdentifiableCookie;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/account/cookiejar/cache/SetCookieCache;->cookies:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcn/codemao/android/account/cookiejar/cache/SetCookieCache;)Ljava/util/Set;
    .registers 1

    .line 27
    iget-object p0, p0, Lcn/codemao/android/account/cookiejar/cache/SetCookieCache;->cookies:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public addAll(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lokhttp3/Cookie;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-static {p1}, Lcn/codemao/android/account/cookiejar/cache/IdentifiableCookie;->decorateAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/account/cookiejar/cache/IdentifiableCookie;

    .line 38
    iget-object v1, p0, Lcn/codemao/android/account/cookiejar/cache/SetCookieCache;->cookies:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 39
    iget-object v1, p0, Lcn/codemao/android/account/cookiejar/cache/SetCookieCache;->cookies:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_1f
    return-void
.end method

.method public clear()V
    .registers 2

    .line 45
    iget-object v0, p0, Lcn/codemao/android/account/cookiejar/cache/SetCookieCache;->cookies:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Lcn/codemao/android/account/cookiejar/cache/SetCookieCache$SetCookieCacheIterator;

    invoke-direct {v0, p0}, Lcn/codemao/android/account/cookiejar/cache/SetCookieCache$SetCookieCacheIterator;-><init>(Lcn/codemao/android/account/cookiejar/cache/SetCookieCache;)V

    return-object v0
.end method
