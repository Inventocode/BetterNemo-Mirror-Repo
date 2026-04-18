.class Lcom/cmic/sso/sdk/e/o$a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmic/sso/sdk/e/o$a;-><init>(Landroid/content/Context;Lcom/cmic/sso/sdk/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmic/sso/sdk/a;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/cmic/sso/sdk/e/o$a;Lcom/cmic/sso/sdk/a;Landroid/content/Context;)V
    .registers 4

    iput-object p2, p0, Lcom/cmic/sso/sdk/e/o$a$2;->a:Lcom/cmic/sso/sdk/a;

    iput-object p3, p0, Lcom/cmic/sso/sdk/e/o$a$2;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 6

    iget-object p1, p0, Lcom/cmic/sso/sdk/e/o$a$2;->a:Lcom/cmic/sso/sdk/a;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/a;->a()Lcom/cmic/sso/sdk/d/b;

    move-result-object p1

    iget-object p1, p1, Lcom/cmic/sso/sdk/d/b;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/cmic/sso/sdk/e/o$a$2;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getInstance(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/cmic/sso/sdk/e/o$a$2;->a:Lcom/cmic/sso/sdk/a;

    const-string v0, "200025"

    const-string/jumbo v1, "发生未知错误"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, p2, v2}, Lcom/cmic/sso/sdk/auth/c;->callBackResult(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    return-void
.end method
