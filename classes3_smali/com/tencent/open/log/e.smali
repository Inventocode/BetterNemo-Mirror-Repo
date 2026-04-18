.class public final Lcom/tencent/open/log/e;
.super Lcom/tencent/open/log/Tracer;
.source "ProGuard"


# static fields
.field public static final a:Lcom/tencent/open/log/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Lcom/tencent/open/log/e;

    invoke-direct {v0}, Lcom/tencent/open/log/e;-><init>()V

    sput-object v0, Lcom/tencent/open/log/e;->a:Lcom/tencent/open/log/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/tencent/open/log/Tracer;-><init>()V

    return-void
.end method


# virtual methods
.method protected doTrace(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 8

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2a

    const/4 p2, 0x2

    if-eq p1, p2, :cond_26

    const/4 p2, 0x4

    if-eq p1, p2, :cond_22

    const/16 p2, 0x8

    if-eq p1, p2, :cond_1e

    const/16 p2, 0x10

    if-eq p1, p2, :cond_1a

    const/16 p2, 0x20

    if-eq p1, p2, :cond_16

    goto :goto_2d

    .line 58
    :cond_16
    invoke-static {p5, p6, p7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 51
    :cond_1a
    invoke-static {p5, p6, p7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 46
    :cond_1e
    invoke-static {p5, p6, p7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 41
    :cond_22
    invoke-static {p5, p6, p7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 36
    :cond_26
    invoke-static {p5, p6, p7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 31
    :cond_2a
    invoke-static {p5, p6, p7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2d
    return-void
.end method
