.class public Lcom/chuanglan/shanyan_sdk/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/chuanglan/shanyan_sdk/b/k;


# instance fields
.field private a:Ljava/lang/Class;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/b/c;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/b/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    :try_start_8
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/b/c;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/b/c;->a:Ljava/lang/Class;

    const-string v2, "getOAID"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/b/c;->b:Ljava/lang/String;
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_2d

    goto :goto_30

    :catchall_2d
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/b/c;->b:Ljava/lang/String;

    :cond_30
    :goto_30
    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/b/c;->b:Ljava/lang/String;

    return-object p1
.end method

.method public b_(Landroid/content/Context;)Z
    .registers 2

    :try_start_0
    const-string p1, "com.android.id.impl.IdProviderImpl"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/b/c;->a:Ljava/lang/Class;
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_a

    const/4 p1, 0x1

    return p1

    :catchall_a
    const/4 p1, 0x0

    return p1
.end method

.method public c_(Landroid/content/Context;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
