.class Lcom/umeng/analytics/pro/s$a;
.super Ljava/lang/Object;
.source "EventTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/umeng/analytics/pro/s;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 64
    new-instance v0, Lcom/umeng/analytics/pro/s;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/s;-><init>(Lcom/umeng/analytics/pro/s$1;)V

    sput-object v0, Lcom/umeng/analytics/pro/s$a;->a:Lcom/umeng/analytics/pro/s;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/umeng/analytics/pro/s;
    .registers 1

    .line 63
    sget-object v0, Lcom/umeng/analytics/pro/s$a;->a:Lcom/umeng/analytics/pro/s;

    return-object v0
.end method
