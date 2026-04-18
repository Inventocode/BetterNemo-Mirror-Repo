.class Lcom/umeng/analytics/pro/r$a;
.super Ljava/lang/Object;
.source "DefconProcesser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/umeng/analytics/pro/r;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Lcom/umeng/analytics/pro/r;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/r;-><init>(Lcom/umeng/analytics/pro/r$1;)V

    sput-object v0, Lcom/umeng/analytics/pro/r$a;->a:Lcom/umeng/analytics/pro/r;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
