.class public final Lcn/com/chinatelecom/account/api/c/l;
.super Ljava/util/concurrent/ThreadPoolExecutor;


# static fields
.field private static final a:Ljava/util/concurrent/BlockingQueue;

.field private static final b:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcn/com/chinatelecom/account/api/c/l;->a:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcn/com/chinatelecom/account/api/c/m;

    invoke-direct {v0}, Lcn/com/chinatelecom/account/api/c/m;-><init>()V

    sput-object v0, Lcn/com/chinatelecom/account/api/c/l;->b:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcn/com/chinatelecom/account/api/c/l;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .registers 10

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcn/com/chinatelecom/account/api/c/l;->a:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcn/com/chinatelecom/account/api/c/l;->b:Ljava/util/concurrent/ThreadFactory;

    const/4 v1, 0x5

    const/16 v2, 0xa

    const-wide/16 v3, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcn/com/chinatelecom/account/api/c/l;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method private constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .registers 16

    const-wide/16 v3, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method
