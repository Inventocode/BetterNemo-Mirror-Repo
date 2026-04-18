.class public abstract Lcom/chuanglan/shanyan_sdk/d/e;
.super Lcom/chuanglan/shanyan_sdk/d/b;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "utf-8"

    invoke-direct {p0, v0}, Lcom/chuanglan/shanyan_sdk/d/e;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/d/b;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/d/e;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/d/e;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;)V
.end method

.method public a([B)V
    .registers 4

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/d/e;->a:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/chuanglan/shanyan_sdk/d/e;->a(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_1b

    :catch_b
    move-exception p1

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/chuanglan/shanyan_sdk/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1b
    return-void
.end method
