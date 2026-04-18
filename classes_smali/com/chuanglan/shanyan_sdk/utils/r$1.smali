.class Lcom/chuanglan/shanyan_sdk/utils/r$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chuanglan/shanyan_sdk/utils/r;->b()Ljava/util/concurrent/FutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/chuanglan/shanyan_sdk/utils/r;


# direct methods
.method constructor <init>(Lcom/chuanglan/shanyan_sdk/utils/r;)V
    .registers 2

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/utils/r$1;->a:Lcom/chuanglan/shanyan_sdk/utils/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/utils/r$1;->a:Lcom/chuanglan/shanyan_sdk/utils/r;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/r;->a(Lcom/chuanglan/shanyan_sdk/utils/r;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/chuanglan/shanyan_sdk/utils/r$1;->a:Lcom/chuanglan/shanyan_sdk/utils/r;

    invoke-static {v4, v3}, Lcom/chuanglan/shanyan_sdk/utils/r;->a(Lcom/chuanglan/shanyan_sdk/utils/r;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    return-object v3

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_18
    const-string v0, "sy.cl2009.com"

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/chuanglan/shanyan_sdk/utils/r$1;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
