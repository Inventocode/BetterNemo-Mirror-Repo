.class public Lcom/cmic/sso/sdk/e/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/cmic/sso/sdk/auth/TokenListener;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/cmic/sso/sdk/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/cmic/sso/sdk/e/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/cmic/sso/sdk/e/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/cmic/sso/sdk/a;)V
    .registers 3

    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    sget-object v0, Lcom/cmic/sso/sdk/e/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;)V
    .registers 3

    sget-object v0, Lcom/cmic/sso/sdk/e/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a()Z
    .registers 1

    sget-object v0, Lcom/cmic/sso/sdk/e/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/cmic/sso/sdk/e/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static b(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/cmic/sso/sdk/e/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static c(Ljava/lang/String;)Lcom/cmic/sso/sdk/auth/TokenListener;
    .registers 2

    sget-object v0, Lcom/cmic/sso/sdk/e/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cmic/sso/sdk/auth/TokenListener;

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Lcom/cmic/sso/sdk/a;
    .registers 2

    if-eqz p0, :cond_b

    sget-object v0, Lcom/cmic/sso/sdk/e/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cmic/sso/sdk/a;

    return-object p0

    :cond_b
    new-instance p0, Lcom/cmic/sso/sdk/a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cmic/sso/sdk/a;-><init>(I)V

    return-object p0
.end method
