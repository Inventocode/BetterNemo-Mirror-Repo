.class Lcom/umeng/analytics/pro/o$b;
.super Ljava/lang/Object;
.source "CoreProtocolImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/umeng/analytics/pro/o;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 155
    new-instance v0, Lcom/umeng/analytics/pro/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/o;-><init>(Lcom/umeng/analytics/pro/o$1;)V

    sput-object v0, Lcom/umeng/analytics/pro/o$b;->a:Lcom/umeng/analytics/pro/o;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/umeng/analytics/pro/o;
    .registers 1

    .line 154
    sget-object v0, Lcom/umeng/analytics/pro/o$b;->a:Lcom/umeng/analytics/pro/o;

    return-object v0
.end method
