.class Lcom/umeng/analytics/pro/f$a;
.super Ljava/lang/Object;
.source "UMDBCreater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/umeng/analytics/pro/f;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 30
    new-instance v7, Lcom/umeng/analytics/pro/f;

    invoke-static {}, Lcom/umeng/analytics/pro/f;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/umeng/analytics/pro/f;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ua.db"

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/umeng/analytics/pro/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILcom/umeng/analytics/pro/f$1;)V

    sput-object v7, Lcom/umeng/analytics/pro/f$a;->a:Lcom/umeng/analytics/pro/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/umeng/analytics/pro/f;
    .registers 1

    .line 29
    sget-object v0, Lcom/umeng/analytics/pro/f$a;->a:Lcom/umeng/analytics/pro/f;

    return-object v0
.end method
