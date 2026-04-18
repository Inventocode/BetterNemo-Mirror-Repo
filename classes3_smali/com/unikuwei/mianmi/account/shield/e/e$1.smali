.class final Lcom/unikuwei/mianmi/account/shield/e/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unikuwei/mianmi/account/shield/e/e;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unikuwei/mianmi/account/shield/e/e$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    new-instance v0, Lcom/unikuwei/mianmi/account/shield/d/b;

    invoke-direct {v0}, Lcom/unikuwei/mianmi/account/shield/d/b;-><init>()V

    const-string v1, "https://opencloud.wostore.cn/client/sdk/receive"

    iget-object v2, p0, Lcom/unikuwei/mianmi/account/shield/e/e$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/unikuwei/mianmi/account/shield/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_11
    return-void
.end method
