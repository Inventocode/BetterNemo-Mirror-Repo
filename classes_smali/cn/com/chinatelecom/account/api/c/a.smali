.class public final Lcn/com/chinatelecom/account/api/c/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "a"


# instance fields
.field private b:Z

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcn/com/chinatelecom/account/api/c/f;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/com/chinatelecom/account/api/c/a;->c:Landroid/content/Context;

    iput-object p2, p0, Lcn/com/chinatelecom/account/api/c/a;->d:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/chinatelecom/account/api/c/a;->e:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/chinatelecom/account/api/CtSetting;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;I)Lorg/json/JSONObject;
    .registers 25

    move-object/from16 v7, p7

    :try_start_2
    invoke-static/range {p1 .. p1}, Lcn/com/chinatelecom/account/api/e/a;->a(Landroid/content/Context;)J

    move-result-wide v12

    sget v0, Lcn/com/chinatelecom/account/api/e;->a:I

    move/from16 v1, p9

    if-ne v1, v0, :cond_1f

    invoke-static {}, Lcn/com/chinatelecom/account/api/e/i;->a()Ljava/lang/String;

    move-result-object v0

    const-string v14, ""

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-static/range {v8 .. v14}, Lcn/com/chinatelecom/account/api/e/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_31

    :cond_1f
    invoke-static {}, Lcn/com/chinatelecom/account/api/e/i;->b()Ljava/lang/String;

    move-result-object v0

    const-string v14, ""

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-static/range {v8 .. v14}, Lcn/com/chinatelecom/account/api/e/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_31
    invoke-static {}, Lcn/com/chinatelecom/account/api/e/h;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_45

    sget-object v2, Lcn/com/chinatelecom/account/api/e/b;->b:[B

    invoke-static {v2}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcn/com/chinatelecom/account/api/e/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_45
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "p"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "k"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Lcn/com/chinatelecom/account/api/d/h;

    invoke-direct {v1}, Lcn/com/chinatelecom/account/api/d/h;-><init>()V

    move-object/from16 v2, p8

    invoke-virtual {v1, v2}, Lcn/com/chinatelecom/account/api/d/h;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/d/h;

    const/4 v2, 0x0

    invoke-static {}, Lcn/com/chinatelecom/account/api/d/c;->a()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcn/com/chinatelecom/account/api/e/b;->b:[B

    invoke-static {v5}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v4, v5}, Lcn/com/chinatelecom/account/api/d/h;->a(ZLjava/lang/String;Ljava/lang/String;)Lcn/com/chinatelecom/account/api/d/h;

    invoke-virtual {v1, v7}, Lcn/com/chinatelecom/account/api/d/h;->b(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/d/h;

    move-object/from16 v4, p6

    invoke-virtual {v1, v4}, Lcn/com/chinatelecom/account/api/d/h;->a(Landroid/net/Network;)Lcn/com/chinatelecom/account/api/d/h;

    invoke-static/range {p5 .. p5}, Lcn/com/chinatelecom/account/api/CtSetting;->getConnTimeout(Lcn/com/chinatelecom/account/api/CtSetting;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/com/chinatelecom/account/api/d/h;->a(I)Lcn/com/chinatelecom/account/api/d/h;

    invoke-static/range {p5 .. p5}, Lcn/com/chinatelecom/account/api/CtSetting;->getReadTimeout(Lcn/com/chinatelecom/account/api/CtSetting;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/com/chinatelecom/account/api/d/h;->b(I)Lcn/com/chinatelecom/account/api/d/h;

    invoke-virtual {v1}, Lcn/com/chinatelecom/account/api/d/h;->a()Lcn/com/chinatelecom/account/api/d/g;

    move-result-object v1

    new-instance v2, Lcn/com/chinatelecom/account/api/d/b;

    move-object/from16 v5, p1

    invoke-direct {v2, v5}, Lcn/com/chinatelecom/account/api/d/b;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-interface {v2, v0, v8, v6, v1}, Lcn/com/chinatelecom/account/api/d/e;->a(Ljava/lang/String;Ljava/lang/String;ILcn/com/chinatelecom/account/api/d/g;)Lcn/com/chinatelecom/account/api/d/i;

    move-result-object v2

    const/4 v0, 0x1

    move-object/from16 v1, p1

    move-object/from16 v4, p6

    move v5, v0

    move-object/from16 v6, p7

    invoke-static/range {v1 .. v6}, Lcn/com/chinatelecom/account/api/e/a;->a(Landroid/content/Context;Lcn/com/chinatelecom/account/api/d/i;Ljava/lang/String;Landroid/net/Network;ZLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v7, v0, v8}, Lcn/com/chinatelecom/account/api/e/f;->b(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_a3
    .catchall {:try_start_2 .. :try_end_a3} :catchall_a4

    goto :goto_db

    :catchall_a4
    move-exception v0

    invoke-static {}, Lcn/com/chinatelecom/account/api/e/k;->g()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static/range {p7 .. p7}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "gpm ："

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/com/chinatelecom/account/api/e/e;->g(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v2

    const v3, 0x138e6

    invoke-virtual {v2, v3}, Lcn/com/chinatelecom/account/api/e/e;->a(I)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v2

    sget-object v3, Lcn/com/chinatelecom/account/api/e/k;->g:[B

    invoke-static {v3}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/com/chinatelecom/account/api/e/e;->e(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    sget-object v2, Lcn/com/chinatelecom/account/api/c/a;->a:Ljava/lang/String;

    const-string v3, "GPM Throwable"

    invoke-static {v2, v3, v0}, Lcn/com/chinatelecom/account/api/CtAuth;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_db
    return-object v0
.end method

.method static synthetic a(Lcn/com/chinatelecom/account/api/c/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/chinatelecom/account/api/CtSetting;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;I)Lorg/json/JSONObject;
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcn/com/chinatelecom/account/api/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/chinatelecom/account/api/CtSetting;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcn/com/chinatelecom/account/api/c/a;)V
    .registers 1

    iget-object p0, p0, Lcn/com/chinatelecom/account/api/c/a;->f:Lcn/com/chinatelecom/account/api/c/f;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcn/com/chinatelecom/account/api/c/f;->a()V

    :cond_7
    return-void
.end method

.method static synthetic a(Lcn/com/chinatelecom/account/api/c/a;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcn/com/chinatelecom/account/api/ResultListener;)V
    .registers 8

    invoke-static {p3}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/com/chinatelecom/account/api/e/e;->a(I)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcn/com/chinatelecom/account/api/e/e;->e(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object p0

    invoke-virtual {p0, p4, p5}, Lcn/com/chinatelecom/account/api/e/e;->a(J)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object p0

    invoke-virtual {p0, p6}, Lcn/com/chinatelecom/account/api/e/e;->g(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    invoke-static {p3}, Lcn/com/chinatelecom/account/api/e/f;->c(Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lcn/com/chinatelecom/account/api/e/k;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p7, :cond_1f

    invoke-interface {p7, p0}, Lcn/com/chinatelecom/account/api/ResultListener;->onResult(Ljava/lang/String;)V

    :cond_1f
    return-void
.end method

.method static synthetic a(Lcn/com/chinatelecom/account/api/c/a;Ljava/lang/String;Lcn/com/chinatelecom/account/api/CtSetting;Landroid/net/Network;Lcn/com/chinatelecom/account/api/ResultListener;JLjava/lang/String;Ljava/lang/String;I)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcn/com/chinatelecom/account/api/c/a;->a(Ljava/lang/String;Lcn/com/chinatelecom/account/api/CtSetting;Landroid/net/Network;Lcn/com/chinatelecom/account/api/ResultListener;JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcn/com/chinatelecom/account/api/CtSetting;Landroid/net/Network;Lcn/com/chinatelecom/account/api/ResultListener;JLjava/lang/String;Ljava/lang/String;I)V
    .registers 23

    new-instance v0, Lcn/com/chinatelecom/account/api/c/l;

    invoke-direct {v0}, Lcn/com/chinatelecom/account/api/c/l;-><init>()V

    new-instance v12, Lcn/com/chinatelecom/account/api/c/d;

    move-object v1, v12

    move-object v2, p0

    move-wide/from16 v3, p5

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p4

    invoke-direct/range {v1 .. v11}, Lcn/com/chinatelecom/account/api/c/d;-><init>(Lcn/com/chinatelecom/account/api/c/a;JLjava/lang/String;Lcn/com/chinatelecom/account/api/CtSetting;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;ILcn/com/chinatelecom/account/api/ResultListener;)V

    invoke-virtual {v0, v12}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcn/com/chinatelecom/account/api/c/a;Z)Z
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/com/chinatelecom/account/api/c/a;->b:Z

    return p1
.end method

.method static synthetic b(Lcn/com/chinatelecom/account/api/c/a;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcn/com/chinatelecom/account/api/c/a;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcn/com/chinatelecom/account/api/c/a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcn/com/chinatelecom/account/api/c/a;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcn/com/chinatelecom/account/api/c/a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcn/com/chinatelecom/account/api/c/a;->e:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcn/com/chinatelecom/account/api/CtSetting;ILcn/com/chinatelecom/account/api/ResultListener;)V
    .registers 16

    invoke-static {p2}, Lcn/com/chinatelecom/account/api/CtSetting;->getTotalTimeout(Lcn/com/chinatelecom/account/api/CtSetting;)I

    move-result v0

    invoke-static {}, Lcn/com/chinatelecom/account/api/e/d;->a()Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lcn/com/chinatelecom/account/api/c/a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcn/com/chinatelecom/account/api/e/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Lcn/com/chinatelecom/account/api/e/a;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/com/chinatelecom/account/api/e/e;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcn/com/chinatelecom/account/api/e/e;->c(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v1

    iget-object v2, p0, Lcn/com/chinatelecom/account/api/c/a;->c:Landroid/content/Context;

    invoke-static {v2}, Lcn/com/chinatelecom/account/api/e/h;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/com/chinatelecom/account/api/e/e;->b(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v1

    iget-object v2, p0, Lcn/com/chinatelecom/account/api/c/a;->c:Landroid/content/Context;

    invoke-static {v2}, Lcn/com/chinatelecom/account/api/e/h;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/com/chinatelecom/account/api/e/e;->f(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    int-to-long v6, v0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move v10, p3

    invoke-direct/range {v1 .. v10}, Lcn/com/chinatelecom/account/api/c/a;->a(Ljava/lang/String;Lcn/com/chinatelecom/account/api/CtSetting;Landroid/net/Network;Lcn/com/chinatelecom/account/api/ResultListener;JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final b(Ljava/lang/String;Lcn/com/chinatelecom/account/api/CtSetting;ILcn/com/chinatelecom/account/api/ResultListener;)V
    .registers 18

    move-object v9, p0

    invoke-static {p2}, Lcn/com/chinatelecom/account/api/CtSetting;->getTotalTimeout(Lcn/com/chinatelecom/account/api/CtSetting;)I

    move-result v2

    invoke-static {}, Lcn/com/chinatelecom/account/api/e/d;->a()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v9, Lcn/com/chinatelecom/account/api/c/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/e/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p3 .. p3}, Lcn/com/chinatelecom/account/api/e/a;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/com/chinatelecom/account/api/e/e;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcn/com/chinatelecom/account/api/e/e;->c(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v0

    const-string v1, "BOTH"

    invoke-virtual {v0, v1}, Lcn/com/chinatelecom/account/api/e/e;->b(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v0

    iget-object v1, v9, Lcn/com/chinatelecom/account/api/c/a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcn/com/chinatelecom/account/api/e/h;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/chinatelecom/account/api/e/e;->f(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4e

    new-instance v10, Lcn/com/chinatelecom/account/api/c/f;

    iget-object v0, v9, Lcn/com/chinatelecom/account/api/c/a;->c:Landroid/content/Context;

    invoke-direct {v10, v0}, Lcn/com/chinatelecom/account/api/c/f;-><init>(Landroid/content/Context;)V

    iput-object v10, v9, Lcn/com/chinatelecom/account/api/c/a;->f:Lcn/com/chinatelecom/account/api/c/f;

    new-instance v11, Lcn/com/chinatelecom/account/api/c/b;

    move-object v0, v11

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p4

    move/from16 v8, p3

    invoke-direct/range {v0 .. v8}, Lcn/com/chinatelecom/account/api/c/b;-><init>(Lcn/com/chinatelecom/account/api/c/a;ILjava/lang/String;Lcn/com/chinatelecom/account/api/CtSetting;Lcn/com/chinatelecom/account/api/ResultListener;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v10, v11}, Lcn/com/chinatelecom/account/api/c/f;->a(Lcn/com/chinatelecom/account/api/c/e;)V

    return-void

    :cond_4e
    new-instance v0, Lcn/com/chinatelecom/account/api/c/f;

    iget-object v1, v9, Lcn/com/chinatelecom/account/api/c/a;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/com/chinatelecom/account/api/c/f;-><init>(Landroid/content/Context;)V

    iput-object v0, v9, Lcn/com/chinatelecom/account/api/c/a;->f:Lcn/com/chinatelecom/account/api/c/f;

    invoke-static {}, Lcn/com/chinatelecom/account/api/e/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/com/chinatelecom/account/api/e/h;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6f

    sget-object v1, Lcn/com/chinatelecom/account/api/e/b;->b:[B

    invoke-static {v1}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/com/chinatelecom/account/api/e/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_6f
    move-object v10, v0

    iget-object v11, v9, Lcn/com/chinatelecom/account/api/c/a;->f:Lcn/com/chinatelecom/account/api/c/f;

    new-instance v12, Lcn/com/chinatelecom/account/api/c/c;

    move-object v0, v12

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p4

    move/from16 v8, p3

    invoke-direct/range {v0 .. v8}, Lcn/com/chinatelecom/account/api/c/c;-><init>(Lcn/com/chinatelecom/account/api/c/a;ILjava/lang/String;Lcn/com/chinatelecom/account/api/CtSetting;Lcn/com/chinatelecom/account/api/ResultListener;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v11, v12, v10}, Lcn/com/chinatelecom/account/api/c/f;->a(Lcn/com/chinatelecom/account/api/c/e;Ljava/lang/String;)V

    return-void
.end method
