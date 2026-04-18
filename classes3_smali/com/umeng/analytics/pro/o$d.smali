.class public Lcom/umeng/analytics/pro/o$d;
.super Ljava/lang/Object;
.source "CoreProtocolImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1396
    iput-object v0, p0, Lcom/umeng/analytics/pro/o$d;->a:Ljava/util/Map;

    .line 1397
    iput-object v0, p0, Lcom/umeng/analytics/pro/o$d;->b:Ljava/lang/String;

    .line 1398
    iput-object v0, p0, Lcom/umeng/analytics/pro/o$d;->c:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 1399
    iput-wide v0, p0, Lcom/umeng/analytics/pro/o$d;->d:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 1404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1396
    iput-object v0, p0, Lcom/umeng/analytics/pro/o$d;->a:Ljava/util/Map;

    .line 1397
    iput-object v0, p0, Lcom/umeng/analytics/pro/o$d;->b:Ljava/lang/String;

    .line 1398
    iput-object v0, p0, Lcom/umeng/analytics/pro/o$d;->c:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 1399
    iput-wide v0, p0, Lcom/umeng/analytics/pro/o$d;->d:J

    .line 1405
    iput-object p2, p0, Lcom/umeng/analytics/pro/o$d;->a:Ljava/util/Map;

    .line 1406
    iput-object p1, p0, Lcom/umeng/analytics/pro/o$d;->b:Ljava/lang/String;

    .line 1407
    iput-wide p4, p0, Lcom/umeng/analytics/pro/o$d;->d:J

    .line 1408
    iput-object p3, p0, Lcom/umeng/analytics/pro/o$d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1412
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$d;->a:Ljava/util/Map;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 1416
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 1420
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()J
    .registers 3

    .line 1424
    iget-wide v0, p0, Lcom/umeng/analytics/pro/o$d;->d:J

    return-wide v0
.end method
