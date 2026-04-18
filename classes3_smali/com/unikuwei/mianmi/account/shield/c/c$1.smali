.class Lcom/unikuwei/mianmi/account/shield/c/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unikuwei/mianmi/account/shield/c/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unikuwei/mianmi/account/shield/c/c;->a(Landroid/content/Context;IILcom/unikuwei/mianmi/account/shield/ResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unikuwei/mianmi/account/shield/ResultListener;


# direct methods
.method constructor <init>(Lcom/unikuwei/mianmi/account/shield/c/c;Lcom/unikuwei/mianmi/account/shield/ResultListener;)V
    .registers 3

    iput-object p2, p0, Lcom/unikuwei/mianmi/account/shield/c/c$1;->a:Lcom/unikuwei/mianmi/account/shield/ResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 6

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "resultCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "resultMsg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_43

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_47

    const/16 v3, 0x2773

    if-gt v1, v3, :cond_47

    const-string v3, ""

    if-ne v1, v2, :cond_30

    :try_start_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/unikuwei/mianmi/account/shield/e/g;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/unikuwei/mianmi/account/shield/e/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_42} :catch_43

    goto :goto_47

    :catch_43
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_47
    :goto_47
    iget-object v0, p0, Lcom/unikuwei/mianmi/account/shield/c/c$1;->a:Lcom/unikuwei/mianmi/account/shield/ResultListener;

    invoke-interface {v0, p1}, Lcom/unikuwei/mianmi/account/shield/ResultListener;->onResult(Ljava/lang/String;)V

    return-void
.end method
