.class public abstract Lcom/cmic/sso/sdk/e/o$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmic/sso/sdk/e/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cmic/sso/sdk/e/o$a$1;

    invoke-direct {v0, p0}, Lcom/cmic/sso/sdk/e/o$a$1;-><init>(Lcom/cmic/sso/sdk/e/o$a;)V

    iput-object v0, p0, Lcom/cmic/sso/sdk/e/o$a;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/cmic/sso/sdk/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cmic/sso/sdk/e/o$a$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/cmic/sso/sdk/e/o$a$2;-><init>(Lcom/cmic/sso/sdk/e/o$a;Lcom/cmic/sso/sdk/a;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmic/sso/sdk/e/o$a;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method static synthetic a(Lcom/cmic/sso/sdk/e/o$a;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/e/o$a;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object p0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public run()V
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/cmic/sso/sdk/e/o$a;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {p0}, Lcom/cmic/sso/sdk/e/o$a;->a()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method
